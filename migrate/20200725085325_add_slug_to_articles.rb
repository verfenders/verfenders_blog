class AddSlugToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :slug, :string
add_index :articles, :slug
  end
end
