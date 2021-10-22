# en singular , xq rails lo pesca  y lo vuelve plural para buscarlo
class Usuario < ApplicationRecord
    has_secure_password

    validates(:nombre_usuario, presence: true)
    validates(:nombre_usuario, uniqueness: true)
    
end
