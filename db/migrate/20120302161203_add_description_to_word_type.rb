class AddDescriptionToWordType < ActiveRecord::Migration
  def change
    add_column :word_types, :description, :string
  end
end
