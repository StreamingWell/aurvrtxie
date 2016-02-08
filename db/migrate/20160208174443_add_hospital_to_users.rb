class AddHospitalToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :hospital, :string
  end
end
