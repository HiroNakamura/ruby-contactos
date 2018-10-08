class CreateContactos < ActiveRecord::Migration[5.2]
  def change
    create_table :contactos do |t|
      t.string :nombre
      t.string :apellidos
      t.string :telefono
      t.string :correo
      t.text :direccion

      t.timestamps
    end
  end

  def self.down
    drop_table :books
 end
 
end
