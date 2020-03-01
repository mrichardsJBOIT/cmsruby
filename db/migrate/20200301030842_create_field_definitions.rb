class CreateFieldDefinitions < ActiveRecord::Migration[5.2]
  def change
    create_table :field_definitions do |t|
      t.references :type, foreign_key: true
      t.string :key

      t.timestamps
    end
  end
end
