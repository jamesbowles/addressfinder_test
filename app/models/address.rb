class Address < ActiveRecord::Base
	validates_presence_of :street_details, :postcode
	belongs_to :customer
end
