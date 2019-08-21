class AddColumnToTokens < ActiveRecord::Migration[5.2]
  def change
    add_column :tokens, :user_id, :integer
  end
end
