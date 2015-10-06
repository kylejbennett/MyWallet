class UsercardTable < ActiveRecord::Migration
  def change

  	create_table :usercard do |t|
  		t.integer :card_id
  		t.integer :user_id
  	end

  end
end
