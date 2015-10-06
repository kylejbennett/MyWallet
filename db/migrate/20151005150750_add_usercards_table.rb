class AddUsercardsTable < ActiveRecord::Migration
  def change

  	create_table :usercards do |t|
  		t.integer :card_id
  		t.integer :user_id
  	end
  end
end
