class CreateMenuItems < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_items do |t|
      t.string :title
      t.string :url
      t.references :menu

      t.timestamps
    end
  end
end
