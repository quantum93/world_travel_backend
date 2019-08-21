class AddForeignKeyReviews < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :reviews, :countries
  end
end
