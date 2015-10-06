class DropUsercardTable < ActiveRecord::Migration
  def change

  	drop_table :usercard
  	drop_table :usercards

  end
end
