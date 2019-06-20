Evento.delete_all
User.delete_all

10.times do |i|
  var = Evento.new

  var.nome = 'aniversario batata'
  var.data = DateTime.now + i.day
  var.desc = 'dia especial'

  var.save

  # Evento.create(
  #   nome: 'aniversario batata',
  #   data: DateTime.now + 1.day,
  #   desc: 'dia especial'
  # )
end

var = User.new
var.email = 'leocampelo16@gmail.com'
var.password = 'stein1234'
var.nome = 'Leonardo Stein'
var.aniversario = '25-11-1999'
var.save

var = User.new
var.email = 'leosnozaki@gmail.com'
var.password = 'nozaki1234'
var.nome = 'Leonardo Nozaki'
var.aniversario = '02-02-1998'
var.save

var = User.new
var.email = 'sososilvei@hotmail.com'
var.password = 'soso1234'
var.nome = 'Sofia Silveira'
var.aniversario = '18-08-1997'
var.save

var = User.new
var.email = 'lucaspsacchi12345@hotmail.com'
var.password = 'batata1234'
var.nome = 'Lucas Penteado'
var.aniversario = '16-01-1996'
var.save
