require 'test_helper'

class AddressTest < ActiveSupport::TestCase

	describe "Address Model Test " do 

		let(:address) { addresses(:address_72) }

		it "doesn't allow invalid addresses to be created" do
			@address = Address.create(street_details: '11 Bond Street')
      @address.valid?.must_equal false
      assert_equal [:postcode], @address.errors.keys
		end

		it "allows valid addresses to be created" do
			@address = Address.create(street_details: '11 Bond Street', postcode: 2222)
      @address.valid?.must_equal true
		end


	end
  # test "the truth" do
  #   assert true
  # end
end