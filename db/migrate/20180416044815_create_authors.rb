class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :img
      t.string :name
      t.text :bio

      t.timestamps
    end
  end
end
