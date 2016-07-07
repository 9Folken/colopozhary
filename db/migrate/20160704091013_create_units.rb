class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name
      t.integer :str
      t.integer :endr
      t.integer :perc
      t.integer :aglt
      t.integer :mgc
      t.integer :int
      t.integer :chr
      t.integer :wis
      t.belongs_to :lord, index: true
      t.timestamps null: false
    end
  end
end
