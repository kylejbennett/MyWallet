class Card < ActiveRecord::Base

	belongs_to :user
	has_many :usercards, foreign_key: :card_id, dependent: :destroy

	validates :card_type, presence: true
	validates :exp_month, :numericality => { :less_than_or_equal_to => 12 } 	
	validates :exp_year, length: {is: 4}, :numericality => { :greater_than_or_equal_to => 2015 }
	validates_format_of :card_number, :with => /(4[0-9]{12}(?:[0-9]{3})?)|(5[1-5][0-9]{14})|(3[47][0-9]{13})/
	validates_format_of :exp_year, :with => /20[1-9]{2}/

end
