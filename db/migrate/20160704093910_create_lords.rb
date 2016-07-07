class CreateLords < ActiveRecord::Migration
  def change
    create_table :lords do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
