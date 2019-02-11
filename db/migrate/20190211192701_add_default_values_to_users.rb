class AddDefaultValuesToUsers < ActiveRecord::Migration[5.0]
  def change
    change_column_default :users, :health, 100
    change_column_default :users, :attack,  30
    change_column_default :users, :defense, 10
    change_column_default :users, :element_move, 3
    change_column_default :users, :special_move, 1
  end
end
