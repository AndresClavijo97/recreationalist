class ApplicationController < ActionController::Base
    # recibe un string con el nombre del layout a set
    layout :set_layout

    # retorna un string que sera pasado como argumento del metodo layout
    def set_layout
        'application'
    end
end
