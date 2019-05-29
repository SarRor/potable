Instalar devise

bin/rails g scaffold Usuario nombre calle numero:integer telefono email

bin/rails g model Pago cantidad:decimal concepto fecha_de_pago:datetime usuario:references user:references
