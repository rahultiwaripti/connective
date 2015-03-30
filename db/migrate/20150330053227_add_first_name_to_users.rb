class AddFirstNameToUsers < ActiveRecord::Migration
  def change
	add_column :users, :first_name, :string
	add_column :users, :last_name, :string
	add_column :users, :title, :string
	add_column :users, :company, :string
	add_column :users, :office_phone, :string
	add_column :users, :mobile_phone, :string
	add_column :users, :work_address, :string
	add_column :users, :street, :string
	add_column :users, :city, :string
	add_column :users, :state, :string
	add_column :users, :zip, :string
	add_column :users, :website, :string
	add_column :users, :linkedin_profile_url, :string
	add_column :users, :profile_picture, :string
	add_column :users, :tokenurl, :string
  end
end
