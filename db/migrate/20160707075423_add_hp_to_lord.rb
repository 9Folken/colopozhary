class AddHpToLord < ActiveRecord::Migration
  def change
    add_column :lords, :hp, :integer
  end
end
