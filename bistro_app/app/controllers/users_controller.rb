class User < ActiveRecord::Base

 validates :username, presence: true, uniqueness: true
 has_secure_password

end

# wrong stuffs! See Colin's example for what actually goes here
