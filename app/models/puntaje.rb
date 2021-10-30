# Los modelos van en singular por ser clases
class Puntaje < ApplicationRecord

    before_validation :capitalizar #enviar_correo
    #after_validation :

    has_many :puntajes_platos # en plural
    has_many :puntajes_restaurantes

    
    validates(:tipo, presence: true)    # evita guardar datos vacíos en la BD según el campo de tipo
    validates(:tipo, uniqueness: true)  # evita que existan registros duplicados según el campo de tipo

    private
    def capitalizar
        self.tipo.capitalize!
    end
end
