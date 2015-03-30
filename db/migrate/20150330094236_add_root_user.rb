class AddRootUser < ActiveRecord::Migration
  def self.up


user = User.find(1)
unless user.present?
user = User.create!(:id=>1,:email=>"rahultiwari@ptiwebtech.com",:password => '123456789',:encrypted_password=>"$2a$10$cJR2f0BQwq2dTguW4ymxiev4IeNQq4v4MULDJvAfr9qCEWrICRx5C",:username=>'admin',:first_name=>'Rahul',:last_name=>'Tiwari',:admin=>1,:created_at=>"2015-01-22 05:13:29",:updated_at=>"2015-01-22 07:18:09" )
end

  end

  def self.down
    user = User.find_by_login( 'admin' )
    user.destroy
 
  end
end
