class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.integer :type_id
      t.string :name

      t.timestamps
    end
  end
end
