class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,:omniauthable,
         :recoverable, :rememberable, :trackable, :validatable
# def to_param
#     first_name
#   end
  
         def self.connect_to_linkedin(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    if user
      return user
    else
      registered_user = User.where(:email => auth.info.email).first
      if registered_user
        return registered_user
      else
Rails.logger.warn auth
        user = User.create(first_name:auth.info.first_name,
                            provider:auth.provider,
                            uid:auth.uid,
                            email:auth.info.email,
                            password:Devise.friendly_token[0,20],

                        last_name:auth.info.last_name,
                        title:auth.info.headline,
                        company:auth.info.industry,
                        profile_picture:auth.info.image,
                        office_phone:auth.info.phone,
                        mobile_phone:auth.info.phone,
                        work_address:auth.info.location,
                        street:auth.info.location,
                        city:auth.info.location,
                        state:auth.info.location,
                        zip:auth.info.location,
                        website:'',
                        linkedin_profile_url:auth.info.public_profile,
                        tokenurl:SecureRandom.uuid 



                          )
      end

    end
  end  

  # private
  # def generate_token
  #   self.token = SecureRandom.uuid
  # end

end
