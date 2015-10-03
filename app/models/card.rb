class Card < ActiveRecord::Base

	belongs_to :user

	validates :card_number, length: {is: 16}
	validates :card_type, presence: true
	validates :exp_month, :numericality => { :less_than_or_equal_to => 12 } 	
	validates :exp_year, length: {is: 4}
	
end
