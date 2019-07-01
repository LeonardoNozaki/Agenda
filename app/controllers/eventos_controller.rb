class EventosController < ApplicationController
  def index
    if !user_signed_in?
      redirect_to new_user_session_path
    else
      @d = Date.today
      @t = Time.find_zone("UTC").parse("00:00")
      @t1 = Time.find_zone("UTC").parse("23:59")
      @dataInicial = DateTime.new(@d.year, @d.month, @d.day, @t.hour, @t.min, @t.sec, @t.zone)
      @dataFinal = DateTime.new(@d.year, @d.month, @d.day, @t1.hour, @t1.min, @t1.sec, @t1.zone)

      @var = Evento.where("user_id = ? AND data >= ? AND data <= ? ", current_user.id, @dataInicial, @dataFinal)
      @var1 = User.all

      #@evs = Event.where(user_id: current_user.id)
      #@evs = curren_user.events
    end
  end

  def new
  end

  def find
    if !user_signed_in?
      redirect_to new_user_session_path
    end

    @d = Date.parse("" + params[:data])
    @t = Time.find_zone("UTC").parse("00:00")
    @t1 = Time.find_zone("UTC").parse("23:59")
    @dataInicial = DateTime.new(@d.year, @d.month, @d.day, @t.hour, @t.min, @t.sec, @t.zone)
    @dataFinal = DateTime.new(@d.year, @d.month, @d.day, @t1.hour, @t1.min, @t1.sec, @t1.zone)

    @var = Evento.where("user_id = ? AND data >= ? AND data <= ? ", current_user.id, @dataInicial, @dataFinal)
    @var1 = User.all
  end

  def create_evento
    @var = Evento.new
    @var.user_id = current_user.id
    @var.nome = params[:nome]
    @var.data = params[:data]
    @var.desc = params[:desc]
    if @var.save
      redirect_to eventos_index_path
    else
      render :new
    end
  end

  def create
  end

  def delete
    @evento = Evento.find(params[:id])

    if @evento.destroy
      redirect_to eventos_index_path
    else
      render :show
    end
  end

end
