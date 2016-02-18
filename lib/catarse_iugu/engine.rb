module CatarseIugu
  class Engine < ::Rails::Engine
    isolate_namespace CatarseIugu

    config.to_prepare do
      ::Payment.send(:include, CatarseIugu::PaymentConcern)
    end
  end
end
