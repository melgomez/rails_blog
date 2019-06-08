class AddUserIdToArticles < ActiveRecord::Migration[5.2]
  def change_table
    add_foreign_key :articles, :users
  end
end
