class Address
  attr_reader :street, :number, :complement, :city, :state, :zip_code

  def initialize(street:, number:, complement:, city:, state:, zip_code:)
    @street = street
    @number = number
    @complement = complement
    @city = city
    @state = state
    @zip_code = zip_code
  end

  def eql?(other)
    return false unless other.is_a?(Address)
    street == other.street &&
      city == other.city &&
      state == other.state &&
      zip_code == other.zip_code
  end
  alias_method :==, :eql?

  def hash
    [street, number, complement, city, state, zip_code].hash
  end

  def to_s
    "#{street}, #{number}, #{complement} - #{city}/#{state}, #{zip_code}"
  end
end
