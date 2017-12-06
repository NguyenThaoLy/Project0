class CreateTeas < ActiveRecord::Migration[5.1]
  def change
    create_table :teas do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.string :password
      t.integer :age

      t.timestamps
    end
  end
end
