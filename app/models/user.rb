class User < ActiveRecord::Base

	has_many :cards
	has_many :usercards, foreign_key: :user_id, dependent: :destroy

	validates :email, uniqueness: true
	validates :phone, length: {is: 10}
	validates :fname, presence: true
	validates :lname, presence: true
	validates :balance, :numericality => { :greater_than_or_equal_to => 0 } 
	
end
