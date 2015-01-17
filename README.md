The Phone Book:
Welcome! This is a RUBY application that uses two classes.
The Contact class will store the name, email, and phone number of each contact.
The Phone class, relying upon the Contact class, will store more phone numbers.

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

Massive bug :
Didn't manage to connect the two classes either in methods or in app.rb
Adding a new number breaks the page, and even commenting out attempt won't work,
so I removed attempt at having a place to direct new phone number, so I could at least
load that page.


This Phone Book was created by Benjamin, not that he wants to take the blame for it. MIT license.

In summation, I clearly missed the logic of how to make classes interact.
