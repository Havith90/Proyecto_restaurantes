# en singular , xq rails lo pesca  y lo vuelve plural para buscarlo
class Usuario < ApplicationRecord
    
    before_validation :capitalizar
    
    has_secure_password

    has_many :invitaciones
    #has_many :invitaciones_rastaurantes, through: :invitaciones, source: :restaurante
    #nombre_de_la_relación; join;
    ##has_many :restaurantes, through: :invitaciones, source: :restaurante

    has_many :promociones
    ##has_many :restaurantes, through: :promociones

    has_many :puntajes_platos
    has_many :puntajes_restaurantes
     
    validates(:nombre_usuario, presence: true)
    validates(:nombre_usuario, uniqueness: true)

    private
    
    def capitalizar
        self.nombre_usuario.capitalize!
    end
end
