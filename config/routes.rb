Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html






# Rutas Puntajes



#Usuarios

get       'usuarios/nuevo',          to: 'usuarios#crear',      as: 'nuevo_usuario'
  #el as es para uso interno, no para la vita de los usarios, para llamar las rutas x este nombre, se hace mas facil
get       'usuarios/:id',            to: 'usuarios#mostrar',    as: 'usuario'
get       'usuarios/:id/editar',     to: 'usuarios#editar',     as: 'editar_usuario'

post      'usuarios',                to: 'usuarios#guardar',    as: 'usuarios'

end

