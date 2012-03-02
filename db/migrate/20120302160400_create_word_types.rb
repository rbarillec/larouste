class CreateWordTypes < ActiveRecord::Migration
  def change
    create_table :word_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
