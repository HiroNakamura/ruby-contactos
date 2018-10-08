class ContactoController < ApplicationController
    layout 'standard'
    
    def list
        @contactos = Contacto.all
     end
  
     def show
        @contacto = Contacto.find(params[:id])
     end
    
     def new
        @contacto = Contacto.new
     end
  
     def contacto_params
        params.require(:contactos).permit(:nombre, :apellidos, :telefono, :correo, :direccion)
     end
  
     def create
        @contacto = Contacto.new(contacto_params)
  
        if @contacto.save
           redirect_to :action => 'list'
        end
     end
     
     def edit
        @contacto = Contacto.find(params[:id])
     end
     
     def contacto_param
        params.require(:contacto).permit(:nombre, :apellidos, :telefono, :correo, :direccion)
     end
     
     def update
        @contacto = Contacto.find(params[:id])
        
        if @contacto.update_attributes(contacto_param)
           redirect_to :action => 'show', :id => @contacto
        end
     end
     
     def delete
        Contacto.find(params[:id]).destroy
        redirect_to :action => 'list'
     end
     
end
