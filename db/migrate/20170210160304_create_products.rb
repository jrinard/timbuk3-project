class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :origin, :string
      t.column :cost, :integer
      t.column :style, :string
      t.column :image, :string

      t.timestamps
    end
  end
end
