class Houses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :animal
      t.string :img_url
    end
  end
end
