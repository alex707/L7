class PassengerCar < Car
  attr_reader :seats

  def initialize seats
    @seats = seats
    @reserved_seats = 0

    validate!
  end

  def validate!
    raise 'Number of seats can not to be nil' if @seats.nil?
    raise 'Number of seats can not to be 0' if @seats == 0
    true
  end

  def valid?
    validate!
  rescue
    false
  end

  def reserve_seat
    raise 'Car is full' if @reserved_seats == @seats
    @reserved_seats += 1
  end

  def unreserve_seat
    raise 'Car is empty' if @reserved_seats == 0
    @reserved_seats -= 1
  end

  def reserved_seats
    @reserved_seats
  end

  def vacant_seats
    @seats - @reserved_seats
  end
end

