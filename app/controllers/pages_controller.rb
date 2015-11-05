class PagesController < ApplicationController
  def home
  end

  def agrupacion
  end

  def servicios
    @servicios = Servicio.all
  end

  def preparadores
  	@preparadores = Preparador.all
  	if (@preparadores.length % 3 == 0)
  		@filas = @preparadores.length / 3
  	else
  		@filas = (@preparadores.length / 3) + 1
  	end
  end

  def admision
    @posts = Post.all
  end
end
