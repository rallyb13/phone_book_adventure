The Phone Book:
Welcome! This is a RUBY application that uses two classes.
The Contact class will store the name, email, and phone number of each contact.
The Phone class, relying upon the Contact class, will store more phone numbers,
identifying them as mobile, work, and home phone numbers.

Installation:
To run the primary application you will need both:
-the sinatra gem
-the sinatra-contrib gem
  Though, you could use the enclosed gemfile to grab these by simply running:
  -the bundler gem, using the "bundle" command
Further, if you want to use the specs (included), you will need:
-the rspec gem

Sinatra will allow you to view the website at: localhost:4567/

Enter your contacts, with each one's email and phone number.
As soon as you submit, you should see that contact's name in the list below.
Each name links to a separate page where you can add more information.

Though there are no BUGS I've come across as of yet (1/16/15),
I'd like to improve this...
-by adding a feature to alphabetize the contacts as they come in
-getting my phone addition functioning, doing the same with email
-ensuring that nil values are A-OK

This Phone Book was created by Benjamin D. Herson. MIT license.
