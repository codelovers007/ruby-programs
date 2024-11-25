# frozen_string_literal: true

##
# This class is responsible to hold the car details for a parking slot
#
class CarDetail
  attr_reader :registration_number, :color

  def initialize(registration_number, color)
    @registration_number = registration_number
    @color = color
  end
end
