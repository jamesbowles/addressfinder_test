class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
    	t.string :street_details
    	t.string :suburb
    	t.string :city
    	t.integer :postcode
    end
  end
end
