class CreateBites < ActiveRecord::Migration
  def up
    create_table :bites do |t|
      t.string :identifier, null: false
      t.text :text, null: false, default: ""
    end

    add_index :users, :identifier, unique: true
  end

  def down
    drop_table :bites
  end
end
