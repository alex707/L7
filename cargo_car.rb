class CargoCar < Car
  attr_reader :volume

  def initialize volume
    @volume = volume
    @reserved_volume = 0

    validate!
  end

  def validate!
    raise 'Volume can not to be nil' if @volume.nil?
    raise 'Volume can not to be == 0' if @volume == 0
    true
  end

  def valid?
    validate!
  rescue
    false
  end

  def reserve_volume
    raise 'Car is full' if @reserved_volume == @volume
    @reserved_volume += 1
  end

  def unreserve_volume
    raise 'Car is empty' if @reserved_volume == 0
    @reserved_volume -= 1
  end

  def reserved_volume
    @reserved_volume
  end

  def vacant_volume
    @volume - @reserved_volume
  end
end

