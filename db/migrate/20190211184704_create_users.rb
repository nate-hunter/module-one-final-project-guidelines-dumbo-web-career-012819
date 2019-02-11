class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :element
      t.integer :health
      t.integer :attack
      t.integer :defense
      t.integer :element_move
      t.integer :special_move
    end
  end
end
