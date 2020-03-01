class AddTypeToPages < ActiveRecord::Migration[5.2]
  def change
    add_reference :pages, :type, foreign_key: true
  end
end
