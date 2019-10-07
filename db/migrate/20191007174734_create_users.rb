class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :age
      t.string :cpf
      t.string :city
      t.string :state
      t.string :country
      t.string :img
      t.string :author
      t.string :address
      t.string :email
      t.string :linkedin

      t.timestamps
    end
  end
end
