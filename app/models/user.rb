# email:string 
# password_digest:string 
#
#password:string virtual
#password_confirmation:string virtual


class User < ApplicationRecord
	has_secure_password

	has_many :twitter_accounts
	has_many :tweets

	validates :email, uniqueness: true, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i , message: "must be a valid email adress"}
    #validates :password, length: { in: 6..12}, :confirmation => true

end


