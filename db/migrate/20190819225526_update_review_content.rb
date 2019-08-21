class UpdateReviewContent < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :content
    add_column :reviews, :content, :text
  end
end
