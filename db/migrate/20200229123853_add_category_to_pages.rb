class AddCategoryToPages < ActiveRecord::Migration[5.2]
  def change
    add_reference :pages, :category, foreign_key: true
  end
end
