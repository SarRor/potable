class PagosController < ApplicationController
  before_action :set_pago, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!

  def create
    usuario = Usuario.find(params[:id])
    # debugger
    @pago = Pago.new(pago_params)
    @pago.update(usuario_id: params[:id], user_id: current_user.id)
    if @pago.save
      flash[:success] = 'El pago fue realizdo exitosamente.'
      redirect_to usuario_path(usuario)
    end
  end

  def update
    if @pago.update(pago_params)
      flash[:success] = 'El pago fue actualizado exitosamente.'
      redirect_to @pago
    else
      render :edit
    end
  end

  def destroy
    @pago.destroy
    flash[:danger] = 'El pago fue borrado.'
    redirect_to root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pago
      @pago = Pago.find(params[:id])
    end

    def pago_params
      params.require(:pago).permit(:cantidad, :fecha_de_pago, :concepto)
    end
end
