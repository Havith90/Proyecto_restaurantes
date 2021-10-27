# app/controllers/tipos_comidas_controller.rb
class TiposComidasController < ApplicationController
    # GET /tipos_comidas
    def listar
        @todos_los_tipos = TipoComida.all.order(id: :asc)
        @titulo_link = "Registrar nuevo tipo de comida"
    end

    
end
