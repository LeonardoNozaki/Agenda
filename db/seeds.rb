Evento.delete_all
User.delete_all

var = User.new
var.email = 'leocampelo16@gmail.com'
var.password = 'stein1234'
var.nome = 'Leonardo Stein'
var.aniversario = '25-11-1999'
var.save

var = Evento.new
var.user = User.find_by(email: 'leocampelo16@gmail.com') # => User
var.nome = 'aniversario do batata'
var.data = DateTime.now
var.desc = 'dia especial'
var.save

###############
var = User.new
var.email = 'leosnozaki@gmail.com'
var.password = 'nozaki1234'
var.nome = 'Leonardo Nozaki'
var.aniversario = '02-02-1998'
var.save

var = Evento.new
var.user = User.find_by(email: 'leosnozaki@gmail.com') # => User
var.nome = 'aniversario do batata'
var.data = DateTime.now
var.desc = 'dia especial'
var.save

###############
var = User.new
var.email = 'sososilvei@hotmail.com'
var.password = 'soso1234'
var.nome = 'Sofia Silveira'
var.aniversario = '18-08-1997'
var.save

var = Evento.new
var.user = User.find_by(email: 'sososilvei@hotmail.com') # => User
var.nome = 'aniversario do batata'
var.data = DateTime.now
var.desc = 'dia especial'
var.save

###############
var = User.new
var.email = 'lucaspsacchi12345@hotmail.com'
var.password = 'batata1234'
var.nome = 'Lucas Penteado'
var.aniversario = '16-01-1996'
var.save

var = Evento.new
var.user = User.find_by(email: 'lucaspsacchi12345@hotmail.com') # => User
var.nome = 'aniversario do batata'
var.data = DateTime.now
var.desc = 'dia especial'
var.save
