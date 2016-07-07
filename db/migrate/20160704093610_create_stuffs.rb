class CreateStuffs < ActiveRecord::Migration
  def change
    create_table :stuffs do |t|
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
      t.belongs_to :lord, index: true
    end
  end
end
