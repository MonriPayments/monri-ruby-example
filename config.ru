require "roda"
require "monri"
require "dotenv"
require 'digest'
Dotenv.load

# docker run --rm -v "$PWD":/usr/src/app -w /usr/src/app ruby:2.7.3 bundle install

class App < Roda

  def monri
    monri = Monri::Client.new
    monri.merchant_key = ENV['MONRI_MERCHANT_KEY']
    monri.authenticity_token = ENV['MONRI_AUTHENTICITY_TOKEN']
    monri.environment = ENV['MONRI_ENVIRONMENT']
    monri
  end

  route do |r|
    r.on 'examples' do
      r.on 'create-payment-session' do
        r.post do
          # return ['status' => 'approved', 'client_secret' => Json::decode($result)['client_secret']];
          # return ['response' => null, 'status' => 'declined', 'result' => $result, 'url' => $url, 'exception' => $exception->getMessage()];
          response['Content-Type'] = 'application/json'
          rv = monri.payments.create({ currency: 'EUR', order_number: DateTime.now.to_s, order_info: 'Bla', transaction_type: 'purchase', amount: 10_00 })
          if rv.success?
            { status: 'approved', client_secret: rv.result[:client_secret] }.to_json
          else
            { status: 'declined', exception: rv.exception, client_secret: rv.result[:client_secret] }.to_json
          end
        end
      end

      r.on 'prepare-transaction' do
        r.post do
          response['Content-Type'] = 'application/json'
          token = SecureRandom.hex
          timestamp = Time.now.iso8601
          # exp_digest = Digest::SHA512.hexdigest("#{m.key}#{temp_card_id}#{timestamp}").downcase
          digest = Digest::SHA512.hexdigest("#{ENV['MONRI_MERCHANT_KEY']}#{token}#{timestamp}")
          { token: token, digest: digest, timestamp: timestamp }.to_json
        end
      end

      r.on 'access_token' do
        r.get do
          response['Content-Type'] = 'application/json'
          monri.access_tokens.create(scopes: ['payments', 'customers', 'payment-methods']).to_json
        end
      end

    end

    r.on 'callback' do
      r.post do
        response['Content-Type'] = 'application/json'
      end
    end

  end

end

run App