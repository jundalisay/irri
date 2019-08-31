class CreateRatios < ActiveRecord::Migration[6.0]
  def change
    create_table :ratios do |t|
      t.references :user, index: true, foreign_key: {on_delete: :nullify}
      t.references :country, index: true, foreign_key: {on_delete: :nullify}
      t.references :province, index: true, foreign_key: {on_delete: :nullify}
      t.references :category, index: true, foreign_key: {on_delete: :nullify}
      t.integer :year
      t.integer :month
      t.float :temperature      
      t.string :shortname
      t.string :name
      t.integer :flower  
      t.integer :maturity  
      t.string :photo
      t.float :height
      t.float :yield
      t.integer :price
      t.timestamps
    end
  end
end
