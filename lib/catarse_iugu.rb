require "iugu"
require "catarse_iugu/engine"
require "catarse_iugu/configuration"
require "catarse_iugu/payment_engine"
require "sidekiq"


module CatarseIugu
  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
