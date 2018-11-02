require_relative( 'models/customer' )
require_relative( 'models/film' )
require_relative( 'models/ticket' ) #unsure about the order these are meant to go in. I don't think it matters here.

require( 'pry-byebug' )

Ticket.delete_all()
Film.delete_all()
Customer.delete_all()


#remember delete_all

customer1 = Customer.new({ 'name' => 'Hamish', 'funds' => 20 })
customer1.save()
customer2 = Customer.new({ 'name' => 'Laura', 'funds' => 30 })
customer2.save()
customer3 = Customer.new({ 'name' => 'Martin', 'funds' => 24 })
customer3.save()

film1 = Film.new({ 'title' => 'Halloween', 'price' => 5 })
film1.save()
film2 = Film.new({ 'title' => 'Friday the 13th', 'price' => 6 })
film2.save()
film3 = Film.new({ 'title' => 'The Witch', 'price' => 7 })
film3.save()

ticket1 = Ticket.new({ 'customer_id' => customer1.id , 'film_id' => film2.id })
ticket1.save()
ticket2 = Ticket.new({ 'customer_id' => customer3.id , 'film_id' => film1.id })
ticket2.save()
ticket3 = Ticket.new({ 'customer_id' => customer2.id , 'film_id' => film3.id })
ticket3.save()
ticket4 = Ticket.new({ 'customer_id' => customer1.id , 'film_id' => film2.id })
ticket4.save()

customer1.name = "Spongebob"
customer1.update()

p customer1.films()
p film2.customers()
