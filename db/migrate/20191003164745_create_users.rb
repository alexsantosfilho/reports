class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :img
      t.string :author
      t.string :address
      t.string :email
      t.string :linkedin

      t.timestamps
    end
  end
end
