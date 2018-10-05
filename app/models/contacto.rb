class Contacto < ApplicationRecord
    #id :primary_key 
    #nombre :string
    #apellidos :string
    #telefono :string
    #correo :string
    #direccion :string
    #fecha :datetime

    def self.down
        drop_table :contacto
     end
end
