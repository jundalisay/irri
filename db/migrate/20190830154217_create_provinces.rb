class CreateProvinces < ActiveRecord::Migration[6.0]
  def change
    create_table :provinces do |t|
      t.references :country, index: true, foreign_key: {on_delete: :nullify}
      t.string :name
      t.string :shortname
      t.timestamps
    end
  end
end
