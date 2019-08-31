class CreateCoffee1s < ActiveRecord::Migration[6.0]
  def change
    create_table :coffee1s do |t|
      t.references :user, index: true, foreign_key: {on_delete: :nullify}
      t.references :crop, index: true, foreign_key: {on_delete: :nullify}
      t.integer :year
      t.integer :month
      t.float :temperature
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
