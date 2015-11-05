class AdminController < ApplicationController

  def home
    if logged_in?
    else 
      redirect_to '/admin'
    end
  end

  # Area de preparadores
  def preparadores
    if logged_in?
    	@preparadores = Preparador.all
    	@preparador = Preparador.new
    else 
      redirect_to '/admin'
    end
  end

  def crear_preparador
  	@preparador = Preparador.new(preparador_params)
    if @preparador.save
      redirect_to '/admin/preparadores'
    else 
      @preparadores = Preparador.all
      render '/admin/preparadores'
    end
  end

  def eliminar_preparador
    @preparador = Preparador.find params[:id]
    @preparador.delete
    redirect_to '/admin/preparadores'
  end

  # Area de servicios
  def servicios
    if logged_in?
      @servicios = Servicio.all
      @servicio = Servicio.new
    else 
      redirect_to '/admin'
    end
  end

  def crear_servicio
    @servicio = Servicio.new(servicio_params)
    if @servicio.save
      redirect_to '/admin/servicios'
    else 
      @servicios = Servicio.all
      render '/admin/servicios'
    end
  end

  def eliminar_servicio
    @servicio = Servicio.find params[:id]
    @servicio.delete
    redirect_to '/admin/servicios'
  end

  # Admision
  def admision
    if logged_in?
      @posts = Post.all 
      @post = Post.new
    else 
      redirect_to '/admin'
    end
  end

  def crear_post
    @post = Post.new(post_params)
    if @post.save
      redirect_to '/admin/admision'
    else 
      @posts = Post.all
      render '/admin/admision'
    end
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
