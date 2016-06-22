require 'test_helper'

class CustomerTest < ActiveSupport::TestCase

	describe "Customer Model Test " do 

		it "doesn't allow invalid customers to be created" do
			@customer = Customer.create(phone_number: 29292929)
      @customer.valid?.must_equal false
      assert_equal [:name], @customer.errors.keys
		end

		it "allows valid customers to be created" do
			@customer = Customer.create(name: 'Joe Smith', phone_number: 29292929)
      @customer.valid?.must_equal true
		end

	end
  # test "the truth" do
  #   assert true
  # end
end