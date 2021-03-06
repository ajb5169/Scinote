class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :name, null: false

      # Foreign keys
      t.integer :user_id, null: false
      t.integer :organization_id, null: false

      t.timestamps null: false
    end
    add_foreign_key :samples, :users
    add_foreign_key :samples, :organizations
    add_index :samples, :user_id
    add_index :samples, :organization_id
  end
end
