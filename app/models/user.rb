class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  belongs_to :location

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :email, :presence => true,
            :format=>{:with => email_regex},
            :uniqueness => true

validates :fname,:lname,presence: true

before_save  :validate_user

	def validate_user
		self.fname =  self.fname.capitalize 
		self.lname = self.lname.capitalize 
	end
	def full_name
		fname+" "+lname
	end            
end
