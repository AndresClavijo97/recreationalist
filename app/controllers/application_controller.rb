class ApplicationController < ActionController::Base
    layout :set_layout, if: :authenticate_user!

    def set_layout
        "application"
    end
end
