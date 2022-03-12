class AddConditionToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :condition, :integer
  end
end
