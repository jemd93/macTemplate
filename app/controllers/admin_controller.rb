class AdminController < ApplicationController
  def login
  end

  def preparadores
  	@preparador = Preparador.new
  	@preparadores = Preparador.all
  end

  def create
  	@preparador = Preparador.new(preparador_params)
  	if @preparador.save
  		redirect_to '/admin/preparadores'
  	else
  		render 'preparadores'
  	end
  	
  end

  private
  	def preparador_params
  		params.require(:preparador).permit(:name, :email, :avatar)
  	end
end
