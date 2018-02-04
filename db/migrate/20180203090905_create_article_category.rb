class CreateArticleCategory < ActiveRecord::Migration[5.1]
  def change
    create_table :article_categories do |t|
      t.string :title
      t.text :description
    end
  end
end
