# Los modelos van en singular por ser clases
class Puntaje < ApplicationRecord

    has_many :puntajes_platos # en plural
    has_many :puntajes_restaurantes

    
    validates(:tipo, presence: true)    # evita guardar datos vacíos en la BD según el campo de tipo
    validates(:tipo, uniqueness: true)  # evita que existan registros duplicados según el campo de tipo

end
