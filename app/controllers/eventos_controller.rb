class EventosController < ApplicationController
  def index
    @var = Evento.all
    @var1 = User.all
  end

  def new
  end

  def create
  end

  def delete
  end
end
