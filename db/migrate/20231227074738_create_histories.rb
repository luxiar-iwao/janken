class CreateHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :histories do |t|
      t.string :your_hand
      t.string :computer_hand
      t.string :result

      t.timestamps
    end
  end
end
