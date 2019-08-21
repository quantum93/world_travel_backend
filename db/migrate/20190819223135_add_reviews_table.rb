class AddReviewsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.column :country_id, :integer
      t.column :rating, :integer
      t.column :content, :integer
    end
  end
end
