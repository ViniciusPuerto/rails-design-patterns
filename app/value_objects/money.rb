class Money
  include Comparable

  attr_reader :amount, :currency

  def initialize(amount, currency = 'USD')
    @amount = amount
    @currency = currency
  end

  def self.parse(value, currency)
    new(amount: value, currency: currency)
  end

  def self.zero(currency)
    new(amount: 0, currency: currency)
  end

  def add(other)
    raise "Mismatched currency" unless currency == other.currency

    Money.new(amount + other.amount, currency)
  end

  def subtract(other)
    raise "Mismatched currency" unless currency == other.currency

    Money.new(amount - other.amount, currency)
  end

  def multiply(factor)
    Money.new(amount * factor, currency)
  end

  def divide(divisor)
    Money.new(amount / divisor, currency)
  end

  def to_s
    "#{currency}#{amount}"
  end

  def ==(other)
    amount == other.amount && currency == other.currency
  end

  alias eql? ==

  def <=>(other)
    raise "Mismatched currency" unless currency == other.currency

    amount <=> other.amount
  end

  def hash
    [amount, currency].hash
  end
end
