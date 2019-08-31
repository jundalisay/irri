class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.references :user, index: true, foreign_key: {on_delete: :nullify}
      t.references :country, index: true, foreign_key: {on_delete: :nullify}
      t.references :province, index: true, foreign_key: {on_delete: :nullify}
      t.references :category, index: true, foreign_key: {on_delete: :nullify}
      t.string :shortname
      t.string :name
      t.integer :flower  
      t.integer :maturity  
      t.float :height
      t.float :yield
      t.string :photo
      t.string :price
      t.timestamps
    end
  end
end


