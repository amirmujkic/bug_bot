# frozen_string_literal: true

module BugBot
  # Gem identity information.
  module Identity
    def self.name
      "bug_bot"
    end

    def self.label
      "BugBot"
    end

    def self.version
      "0.1.0"
    end

    def self.version_label
      "#{label} #{version}"
    end
  end
end
