# frozen_string_literal: true

require "get_root/version"

module GetRoot
  class << self
    $fallback_root = Dir.pwd
    def path(count = 0, relative_path = ".", root = nil)
      if count > 10
        root = $fallback_root
        puts "Assuming root directory to be #{root}. " \
             "Please run the same command from the root directory of the project."
        return root
      end
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
