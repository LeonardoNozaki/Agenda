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

      @eventos = Evento.where("user_id = ? AND data >= ? AND data <= ? ", current_user.id, @dataInicial, @dataFinal).order('data')
      @user = User.find(current_user.id)
    end
  end

  def new
    if !user_signed_in?
      redirect_to new_user_session_path
    else
      @user = User.find(current_user.id)
    end
  end

  def find
    if !user_signed_in?
      redirect_to new_user_session_path
    else
      @d = Date.parse("" + params[:data])
      @t = Time.find_zone("UTC").parse("00:00")
      @t1 = Time.find_zone("UTC").parse("23:59")
      @dataInicial = DateTime.new(@d.year, @d.month, @d.day, @t.hour, @t.min, @t.sec, @t.zone)
      @dataFinal = DateTime.new(@d.year, @d.month, @d.day, @t1.hour, @t1.min, @t1.sec, @t1.zone)

      @eventos = Evento.where("user_id = ? AND data >= ? AND data <= ? ", current_user.id, @dataInicial, @dataFinal).order('data')
      @user = User.find(current_user.id)
    end
  end

  def create_evento
    if !user_signed_in?
      redirect_to new_user_session_path
    else
      @d = Date.parse(params[:date])
      @t = Time.find_zone("UTC").parse(params[:time].to_s)
      @data = DateTime.new(@d.year, @d.month, @d.day, @t.hour, @t.min, @t.sec, @t.zone)
      @var = Evento.new
      @var.user_id = current_user.id
      @var.nome = params[:nome]
      @var.data = @data
      @var.desc = params[:desc]
      if @var.save
        redirect_to index_path
      else
        render :new
      end
    end
  end

  def create
  end

  def delete
    if !user_signed_in?
      redirect_to new_user_session_path
    else
      @evento = Evento.find(params[:id])

      if @evento.destroy
        redirect_to index_path
      else
        render :show
      end
    end
  end

end
