class CreatePagos < ActiveRecord::Migration[5.2]
  def change
    create_table :pagos do |t|
      t.decimal :cantidad, precision: 6, scale: 2
      t.string :concepto
      t.datetime :fecha_de_pago
      t.references :usuario, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
