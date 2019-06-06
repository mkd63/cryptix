class UserDetail < ApplicationRecord
  validates :name,
	 presence: true,
  	length: { maximum: 50 }
	validates :email,
 		 presence: true,
  	 format: { with: /\A.+@[a-z\d\-.]+\z/i }
      #uniqueness: true
    validates_presence_of   :email, :message => ': Please enter your Email address'
    validates_presence_of   :password, :message => ': Please Enter Your Password.'
    validates_length_of :password, :maximum => 32, :message => ":Password should not exceed 32 characters"
    validates_length_of :password, :minimum => 6, :message => ":Password should have minimum 6 characters"
end
