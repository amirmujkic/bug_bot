module BugBot
  # Gem identity information.
  module Identity
    module_function

    def name
      'bug_bot'
    end

    def label
      'BugBot'
    end

    def version
      '0.2.0'
    end

    def version_label
      "#{label} #{version}"
    end
  end
end
