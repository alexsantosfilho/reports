class CreateHobbies < ActiveRecord::Migration[5.0]
  def change
    create_table :hobbies do |t|
      t.string :text
      t.string :img
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
