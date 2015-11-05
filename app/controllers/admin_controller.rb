class AdminController < ApplicationController

  def login
  end

  # Area de preparadores
  def preparadores
  	@preparadores = Preparador.all
  	@preparador = Preparador.new
  end

  def crear_preparador
  	@preparador = Preparador.new(preparador_params)
    @preparador.save
    redirect_to '/admin/preparadores'
  end

  def eliminar_preparador
    @preparador = Preparador.find params[:id]
    @preparador.delete
    redirect_to '/admin/preparadores'
  end

  # Area de servicios
  def servicios
    @servicios = Servicio.all
    @servicio = Servicio.new
  end

  def crear_servicio
    @servicio = Servicio.new(servicio_params)
    @servicio.save
    redirect_to '/admin/servicios'
  end

  def eliminar_servicio
    @servicio = Servicio.find params[:id]
    @servicio.delete
    redirect_to '/admin/servicios'
  end

  # Admision
  def admision
    @posts = Post.all 
    @post = Post.new
  end

  def crear_post
    @post = Post.new(post_params)
    @post.save
    redirect_to '/admin/admision'
  end

  def eliminar_post
    @post = Post.find params[:id]
    @post.delete
    redirect_to '/admin/admision'
  end

  # Stuff
  private
  	def preparador_params
  		params.require(:preparador).permit(:name, :email, :avatar)
  	end

    def servicio_params
      params.require(:servicio).permit(:name, :info)
    end

    def post_params
      params.require(:post).permit(:name, :info)
    end
end
