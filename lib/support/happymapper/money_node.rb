

module Happymapper

  class MoneyNode
    include Happymapper

    attribute :amount, Float, :xpath => "./text()"
    attribute :currency, String, :xpath => "./@currencyID"

    def to_money
      Money.new((self.amount * 100).round, self.currency)
    end
  end
end
