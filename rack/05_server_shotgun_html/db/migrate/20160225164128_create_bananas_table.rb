class CreateBananasTable < ActiveRecord::Migration
  def change
    create_table :bananas do |t|
      t.string :name
      t.string :size
    end
  end
end
