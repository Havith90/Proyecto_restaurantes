class PuntajesController < ApplicationController

    #GET / puntajes
    def listar
        @todos_los_tipos_puntajes = tipo_puntaje.all
    end

     #GET / puntajes/nuevo
    def crear
    end

    #GET / puntajes/:id
    def mostrar
        @puntaje = Puntaje.find(params[:id])
    end

    #GET / puntajes/:id/editar
    def editar
        @puntaje = Puntaje.find(params[:id])
    end

    #GET / puntajes/
    def guardar
        datos_puntaje = params.require(:puntaje)
        nuevo_puntaje = Puntaje.new(datos_puntaje)
        nuevo_puntaje.save
    end

    #GET / puntajes/
    def actualizar
        @puntaje = Puntaje.find(params[:id])
        datos_puntaje = params.require(:puntaje)
    end

    #GET / puntajes/:id
    def eliminar
        puntaje = Puntaje.find(params[:id])
    end
