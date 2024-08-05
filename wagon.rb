class Wagon
  include Manufacturer
  attr_reader :number, :type

  NUMBER_FORMAT = /^\d{8}$/i # формат по типу "12345678"
  FULL_NUMBER_WAGON = 8

  def initialize(number)
    @number = number
    validate!
  end

  def valid?
    validate!
  rescue StandardError
    false
  end

  protected

  def validate!
    raise "Number can't be nil" if number.nil?
    raise "Number should be at least #{number.split('').length} symbols" if number.split('').length != FULL_NUMBER_WAGON
    raise 'Number has invalid format' if number !~ NUMBER_FORMAT

    true
  end
end
