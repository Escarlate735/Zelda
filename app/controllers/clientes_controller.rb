class ClientesController < ApplicationController
  def index
    @clientes = Cliente.all
  end

  def show
    @cliente = Cliente.find[params[:id]]
  end

  def new
  end

  def create
    @cliente = Cliente.new(cliente_params)

    @cliente.save
    redirect_to @cliente
  end
  private
  def cliente_params
    params.require(:cliente).permit(:Nome, :CPF, :Email, :Endereco, :Data_de_Nascimento)
  end
end

