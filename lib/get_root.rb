# frozen_string_literal: true

require "get_root/version"

module GetRoot # :nodoc:
  class << self
    # This method shows the path of the root directory
    # of a git project.
    # There, strictly, needs to be a git repository,
    # otherwise this won't work, because it essentially
    # looks for the presence of a `.git` directory.
    def path(count = 0, relative_path = +".", root = nil)
      if count > 15
        root = File.expand_path(relative_path)
        # puts "Assuming root directory to be #{root}. " \
        #      "Please run the same command from the root directory of the project."
        return root
      else
        if Dir.entries(relative_path).include?(".git")
          root = File.expand_path(relative_path)
          return root
        else
          relative_path.prepend("../")
          count += 1
          path(count, relative_path)
        end
      end
    end
  end
end
