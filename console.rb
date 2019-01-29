require_relative('models/property.rb')
require ('pry')

property_1_details = {
  "address" => "10 Dalmeny Road",
  "value" => 200000,
  "number_of_bedrooms" => 2,
  "year_built" => 1670
}
property_2_details = {
  "address" => "15 Dalmeny Road",
  "value" => 10000,
  "number_of_bedrooms" => 1,
  "year_built" => 2019
}

property_1 = Property.new(property_1_details)
property_2 = Property.new(property_2_details)
property_1.save()
property_1.number_of_bedrooms = 3
property_1.update()

property_2.save()
property_2.delete()

property_3 = Property.find(6)
property_4 = Property.find_by_address("10 Dalmeny Roads")

binding.pry
nil
