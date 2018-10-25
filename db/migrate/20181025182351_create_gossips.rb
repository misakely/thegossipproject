class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
