class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.references :city, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.text :description
      t.string :email
      t.integer :age

      t.timestamps
    end
  end
end
