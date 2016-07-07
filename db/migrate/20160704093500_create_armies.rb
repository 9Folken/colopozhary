class CreateArmies < ActiveRecord::Migration
  def change
    create_table :armies do |t|
      t.string :name
      t.integer :str
      t.integer :endr
      t.integer :perc
      t.integer :aglt
      t.integer :mgc
      t.integer :int
      t.integer :chr
      t.integer :wis

      t.timestamps null: false
    end
  end
end
