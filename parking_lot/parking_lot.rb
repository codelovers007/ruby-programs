# frozen_string_literal: true

require './car_detail'

##
# This class is responsible for managing high level features of a parking lot
#
class ParkingLot
  def initialize
    @size = 0
    @slots = {}
  end

  def create(size)
    @size = size
    puts "Created a parking lot with #{size} slots"
  end

  def park(number_plate, color)
    if @slots.size == @size
      puts 'Sorry parking lot is full.'
    else
      allocate_slot(number_plate, color)
    end
    puts @slots
  end

  def leave(slot_number)
    slot = @slots.delete(slot_number)

    slot.nil? ? puts("Slot number #{slot_number} not found") : puts("Slot number #{slot_number} is free")
  end

  def registration_numbers_for_cars_with_colour(color)
    @slots.select { |_slot, car_detail| car_detail.color == color }.each_value { |car_detail| puts car_detail.registration_number }
  end

  def slot_numbers_for_cars_with_colour(color)
    puts @slots.select { |_slot, car_detail| car_detail.color == color }.keys
  end

  def slot_number_for_registration_number(registration_number)
    puts @slots.select { |_slot, car_detail| car_detail.registration_number == registration_number }.keys
  end

  def status
    puts 'Slot No.  Registration No.  Colour'
    @slots.each do |slot, car_detail|
      puts "#{slot}  #{car_detail.registration_number}  #{car_detail.color}"
    end
  end

  private

  def allocate_slot(number_plate, color)
    (1..@size).each do |slot|
      next if @slots[slot]

      car_detail = CarDetail.new(number_plate, color)
      @slots[slot] = car_detail
      puts "Allocated slot number: #{car_detail.registration_number}"
      break
    end
  end
end

parking_lot = ParkingLot.new
parking_lot.create(6)
parking_lot.park('KA-01-HH-1234', 'White')
parking_lot.park('KA-01-HH-9999', 'White')
parking_lot.park('KA-01-BB-0001', 'Black')
parking_lot.park('KA-01-HH-7777', 'Red')
parking_lot.park('KA-01-HH-2701', 'Blue')
parking_lot.park('KA-01-HH-3141', 'Black')
parking_lot.leave(4)
parking_lot.leave(40)


parking_lot.registration_numbers_for_cars_with_colour('White')
parking_lot.slot_numbers_for_cars_with_colour('Black')

parking_lot.slot_number_for_registration_number('KA-01-HH-3141')
parking_lot.status