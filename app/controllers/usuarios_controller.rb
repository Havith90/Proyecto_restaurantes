# los controladores son en plural
class UsuariosController < ApplicationController
    before_action :buscar_usuario, only: [:mostrar, :editar, :actualizar, :eliminar]

    #GET /usuarios
    def listar
        @usuarios = Usuario.all
    end
    
    # GET /usuarios/nuevo
    def crear
        @usuario = Usuario.new
    end

    # GET /usuarios/:id
    def mostrar
        
    end

    #GET /usuarios/:id/editar
    def editar
        
    end

    #POST /usuarios
    def guardar
        @usuario = Usuario.new(params_usuario)  #este es un bojeto, este nombre debe ser iguala a la de la vista, q se toma prestada
        if @usuario.save
            redirect_to usuario_path(@usuario)
        # mostrar un mensaje o vista de confirmación
        else 
            render :crear # el render es el q permite ir a pedir prestada la vista crear
        end
    
            #puts "*".cente(20,"*")   #losputs son para ver q hay dentro, lo q guardó
        #puts datos_usuario.inspect
    end

    # PATCH /usuarios/:id
    def actualizar
        if @usuario.update(params_usuario)
            redirect_to usuario_path(@usuario)
        else
            render :editar
        end
    end

  #DELETE /usuarios/:id
    def eliminar
        if @usuario.destroy #intenta eliminar un registro
            flash[:eliminar] = "Usuario #{@usuario.nombre_usuario} eliminado"
        else
            flash[:eliminar] = "No se pudo eliminar"
        end
        redirect_to nuevo_usuario_path
    end

    private
    def params_usuario   # devuelve la lista de datos del formulario en HASH
        return params.require(:usuario).permit(:nombre_usuario, :password, :password_confirmation)
    end

    def buscar_usuario
        @usuario = Usuario.find(params[:id])
    end
end