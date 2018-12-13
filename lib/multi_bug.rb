require 'multi_bug/identity'

module MultiBug
  extend self

  SUPPORTED_ADAPTERS = { airbrake: 'airbrake-ruby', bugsnag: 'bugsnag' }.freeze

  def use_adapter(adapter)
    @adapter = case adapter
               when String, Symbol
                 load_adapter(adapter.to_s)
               when Class, Module
                 adapter
               else
                 load_adapter(default_adapter)
               end
  end

  def adapter
    return @adapter if defined?(@adapter)

    # TODO: Add adapter from config here
    load_adapter(default_adapter)
  end

  alias adapter= use_adapter

  def notify(exception, options = {})
    adapter.notify(exception, options)
  end

  def default_adapter
    return :airbrake if defined?(::Airbrake)
    return :bugsnag if defined?(::Bugsnag)

    SUPPORTED_ADAPTERS.each do |adapter, gem_name|
      require gem_name
      return adapter
    end

    # TODO: Return default adapter here
  end

  private

  def load_adapter(name)
    require "multi_bug/adapters/#{name.downcase}"

    MultiBug::Adapters.const_get(name.capitalize)
  end
end
