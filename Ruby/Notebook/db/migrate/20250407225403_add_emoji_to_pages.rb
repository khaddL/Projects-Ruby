class AddEmojiToPages < ActiveRecord::Migration[8.0]
  def change
    add_column :pages, :emoji, :string
  end
end
