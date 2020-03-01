class CreateFields < ActiveRecord::Migration[5.2]
  def change
    create_table :fields do |t|
      t.references :page, foreign_key: true
      t.references :field_definition, foreign_key: true
      t.string :value

      t.timestamps
    end
  end
end
