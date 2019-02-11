class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.integer :user_id
      t.integer :opponent_id
      t.string :location
      t.boolean :user_win
    end
  end
end
