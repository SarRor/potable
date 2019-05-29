class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :calle
      t.integer :numero
      t.string :telefono
      t.string :email

      t.timestamps
    end
  end
end
