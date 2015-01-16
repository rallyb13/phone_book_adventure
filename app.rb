require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/contact")

get ("/") do
  @contacts = Contact.all()
  erb(:index)
end

post("/contacts") do
  name = params.fetch("name")
  email = params.fetch("email")
  phone = params.fetch("phone")
  contact = Contact.new({:nm => name, :em => email, :ph => phone})
  contact.save()
  redirect("/")
end
