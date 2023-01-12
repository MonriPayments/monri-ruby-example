# frozen-string-literal: true

#
class Roda
  module RodaPlugins
    # The autoload_hash_branches plugin builds on the hash_branches plugin and allows for
    # delaying loading of a file containing a hash branch for an application until there
    # is a request that uses the hash branch. This can be useful in development
    # to improvement startup time by not loading all branches up front.  It can also be
    # useful in testing subsets of an application by only loading the hash branches being
    # tested.
    #
    # You can specify a single hash branch for autoloading:
    #
    #   plugin :autoload_hash_branches
    #   autoload_hash_branch('branch_name', '/path/to/file')
    #   autoload_hash_branch('namespace', 'branch_name', '/path/to/file')
    #
    # You can also set the plugin to autoload load all hash branch files in a given directory.
    # This will look at each .rb file in the directory, and add an autoload for it, using the
    # filename without the .rb as the branch name:
    #
    #   autoload_hash_branch_dir('/path/to/dir')
    #   autoload_hash_branch_dir('namespace', '/path/to/dir')
    #
    # In both cases, when the autoloaded file is required, it should redefine the same
    # hash branch.  If it does not, requests to the hash branch will result in a 404 error.
    #
    # This plugin will not work correctly when freezing applications, because it requires
    # modifying the class at runtime as hash branches are autoloaded.
    module AutoloadHashBranches
      def self.load_dependencies(app)
        app.plugin :hash_branches
      end

      module ClassMethods
        # Autoload the given file when there is request for the hash branch.
        # The given file should configure the hash branch specified.
        def autoload_hash_branch(namespace='', segment, file)
          segment = "/#{segment}"
          routes = opts[:hash_branches][namespace] ||= {}
          meth = routes[segment] = define_roda_method(routes[segment] || "hash_branch_#{namespace}_#{segment}", 1) do |r|
            loc = method(routes[segment]).source_location
            require file
            # Avoid infinite loop in case method is not overridden
            if method(meth).source_location != loc
              send(meth, r)
            end
          end
          nil
        end

        # For each .rb file in the given directory, add an autoloaded hash branch
        # based on the file name.
        def autoload_hash_branch_dir(namespace='', dir)
          Dir.new(dir).entries.each do |file|
            if file =~ /\.rb\z/i
              autoload_hash_branch(namespace, file.sub(/\.rb\z/i, ''), File.join(dir, file))
            end
          end
        end
      end
    end

    register_plugin(:autoload_hash_branches, AutoloadHashBranches)
  end
end
