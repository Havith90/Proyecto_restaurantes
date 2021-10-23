# los controladores son en plural
class UsuariosController < ApplicationController
    
    # GET /usuarios/nuevo
    def crear
        @usuario = Usuario.new
    end

    # GET /usuarios/:id
    def mostrar
        @usuario = Usuario.find(params[:id])
    end
    #GET /usuarios/:id/editar
    def editar
        @usuario = Usuario.find(params[:id])
    end

    #POST /USUARIOS
    def guardar
        datos_usuario = params.require(:usuario).permit(:nombre_usuario, :password, :password_confirmation)
        @usuario = Usuario.new(datos_usuario)  #este es un bojeto, este nombre debe ser iguala a la de la vista, q se toma prestada
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
        @usuario = Usuario.find(params[:id])
        datos_usuario = params.require(:usuario).permit(:nombre_usuario, :password, :password_confirmation)
        if @usuario.update(datos_usuario)
            redirect_to usuario_path(@usuario)
        else
            render :editar
        end
    end


    def eliminar
        @usuario = Usuario.find(params[:id])
        if @usuario.destroy #intenta eliminar un registro
            flash[:eliminar] = "Usuario #{@usuario.nombre_usuario} eliminado"
        else
            flash[:eliminar] = "No se pudo eliminar"
        end
        redirect_to nuevo_usuario_path
    end
end