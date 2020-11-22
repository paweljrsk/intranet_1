class CreateProductTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :product_types do |t|
      t.string :name
      t.belongs_to :product_category, foreign_key: true

      t.timestamps
    end
  end
end
