module MultiBug
  # Gem identity information.
  module Identity
    module_function

    def name
      'multi_bug'
    end

    def label
      'MultiBug'
    end

    def version
      '0.2.2'
    end

    def version_label
      "#{label} #{version}"
    end
  end
end
