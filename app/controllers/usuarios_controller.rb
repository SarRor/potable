class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, except: [:show, :index]
  # GET /usuarios
  # GET /usuarios.json
  def index
    @usuarios = Usuario.all
  end

  # GET /usuarios/1
  # GET /usuarios/1.json
  def show
  end

  # GET /usuarios/new
  def new
    @usuario = Usuario.new
  end

  # GET /usuarios/1/edit
  def edit
  end

  # POST /usuarios
  # POST /usuarios.json
  def create
    @usuario = Usuario.new(usuario_params)

    if @usuario.save
      flash[:success] = 'El usuario fue creado exitosamente.'
      redirect_to root_path
    else
      render :new
    end
  end

  # PATCH/PUT /usuarios/1
  # PATCH/PUT /usuarios/1.json
  def update
    if @usuario.update(usuario_params)
      flash[:success] = 'El usuario fue actualizado exitosamente.'
      redirect_to @usuario
    else
      render :edit
    end
  end

  # DELETE /usuarios/1
  # DELETE /usuarios/1.json
  def destroy
    @usuario.destroy
    flash[:danger] = 'El usuario fue eliminado exitosamente.'
    redirect_to usuarios_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_params
      params.require(:usuario).permit(:nombre, :calle, :numero, :telefono, :email, :id)
    end
end
