class RemoveUserRefFromListings < ActiveRecord::Migration[6.1]
  def change
    remove_reference :listings, :user, null: false, foreign_key: true
  end
end
