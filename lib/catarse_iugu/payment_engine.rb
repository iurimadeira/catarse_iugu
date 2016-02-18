module CatarseIugu
  class PaymentEngine
    def name
      'Iugu'
    end

    def review_path contribution
      url_helpers.review_iugu_path(contribution)
    end

    def locale
      'pt'
    end

    def can_do_refund?
      true
    end

    def direct_refund contribution
      contribution.iugu_delegator.refund
    end

    def transfer contribution
      contribution.iugu_delegator.transfer_funds
    end

    def can_generate_second_slip?
      true
    end

    def second_slip_path(payment)
      # The second slip generates a new payment base on the contribution ID
      url_helpers.second_slip_iugu_path(id: payment.contribution.id)
    end

    protected

    def url_helpers
      CatarseIugu::Engine.routes.url_helpers
    end
  end
end
