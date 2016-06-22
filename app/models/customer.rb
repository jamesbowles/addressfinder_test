class Customer < ActiveRecord::Base
	has_one :address
	attr_accessor :street_details, :suburb, :postcode, :city
	validates_presence_of :name, :phone_number
end
