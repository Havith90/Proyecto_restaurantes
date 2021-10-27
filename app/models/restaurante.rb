class Restaurante < ApplicationRecord
  belongs_to :tipo_comida  #esto va en singular
  has_many :platos

  has_many :invitaciones
  has_many :usuarios, through: :invitaciones 
  validates(:nombre, presence: true)
  validates(:nombre, uniqueness: true)


# en class Plato (app model plato.rb plato
# class Plato < ApplicationRecord
# belongs_to :restaurante

# validates(:nombre, presence: true)
# validates(:precio, presence: true)
# validates(:descripcion, presence: true)
end
