class LandingPageController < ApplicationController
  # antes de cualquier accion llama al metodo set_layout que sobre escribe al metodo 
  # padre que viene de application_controller.rb
  before_action :set_layout

  def home
  end

  def about
  end

  def set_layout
    return "landing_page"
  end
end
