class Characters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :weapon
      t.string :img_url
      t.references :house, index: true, foreign_key: true
    end
  end
end
