class AddEmojiCategoryToPages < ActiveRecord::Migration[8.0]
  def change
    add_column :pages, :emoji_category, :string
  end
end
