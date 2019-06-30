class EventosController < ApplicationController
  def index
    @var = Evento.all
    @var1 = User.all

    if !user_signed_in?
      redirect_to new_user_session_path
    end
  end

  def new
  end

  def create
  end

  def delete

  end
end
