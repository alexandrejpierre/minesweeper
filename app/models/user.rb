class User < ActiveRecord::Base

# 30.07.2016: added the sign up validation and the api token generation
has_secure_password
validates :email, presence: true, uniqueness: true
validates :api_token, presence: true, uniqueness: true
before_validation :generate_api_token

def generate_api_token
	return if api_token.present?
	
	loop do
		self.api_token=SecureRandom.hex
		break unless User.exists? api_token: api_token
	end
end

end
