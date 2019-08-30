class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.references :user, index: true, foreign_key: {on_delete: :nullify}
      t.references :country, index: true, foreign_key: {on_delete: :nullify}
      t.references :province, index: true, foreign_key: {on_delete: :nullify}
      t.references :category, index: true, foreign_key: {on_delete: :nullify}
      t.string :name
      t.string :photo
      t.timestamps
    end
  end
end
