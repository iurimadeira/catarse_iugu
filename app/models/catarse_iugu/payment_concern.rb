module CatarseIugu::PaymentConcern
  extend ActiveSupport::Concern

  included do
    def iugu_delegator
      #CatarseIugu::PaymentDelegator.new(self)
    end
  end
end
