require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/contact")
require("./lib/phone")



get ("/") do
  @contacts = Contact.all()
  erb(:index)
end

post("/contacts") do
  @name = params.fetch("name")
  email = params.fetch("email")
  telephone = params.fetch("telephone")
  @contact = Contact.new({:nm => name, :em => email, :ph => telephone})
  @contact.save()
  redirect("/")
end

post("/phones") do
  # @contact = Contact.find(params.fetch("id").to_i())
  # @contact = Contact.search(@name)
  another = params.fetch("another")
  @phone = Phone.new({:an => another})
  @contact.add_number(@phone)
  redirect("/this_contact/:id")
end

get("/this_contact/:id") do
  @contact = Contact.find(params.fetch("id").to_i())
  # @phones = Phone.all()
  erb(:this_contact)
end