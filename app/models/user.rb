class User < ActiveRecord::Base

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.email = auth['info']['email']
      user.gender = auth['extra']['raw_info']['gender']
      user.first_name = auth['info']['first_name']   
      if auth['info']
         user.name = auth['info']['name'] || ""
      end
    end
  end

end
