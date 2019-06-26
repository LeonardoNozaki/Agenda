class EventosController < ApplicationController
  def index
    if !user_signed_in?
      redirect_to new_user_session_path
    end

    @var = Evento.all
    @var1 = User.all

    @evs = Event.where(user_id: current_user.id)
    @evs = curren_user.events
  end

  def new
  end

  def create
  end

  def delete
  end
end
