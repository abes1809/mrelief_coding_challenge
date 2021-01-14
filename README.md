### README

* In the public folder, there is a PDF of the California application (public/application.pdf). The goal of this coding challenge is to figure out how we can programmatically fill out the PDF.

## Part 1 -

* Take a look at existing gems or Ruby libraries that help with filling out pdfs.
Play around with a few and decide which one you would like to use. I definitely
recommend using an existing library or gem for this challenge.

* In the gemfile of this app I have included gem 'pdf-forms', but there are certainly
other options to use.


## Part 2 -

* Build a basic rails form to take the first few fields on the application - just the first few fields would be great (name, address and phone).

* When the form is submitted, take the inputs and use them to populate the PDF.


* If you have questions or get stuck, please don't hesitate to email me at
dize@mrelief.com. Once you have finished Part 1 and 2, please send the entire app back to me. Thank you so much and I look forward to reviewing your work.


# AA Completed Challenge

## Installation Instructions

* clone this repo by running 'git clone https://github.com/abes1809/mrelief_coding_challenge.git'

* run bundle install in your terminal.

* Ensure you are running at least ruby 2.4.0 and your JAVA_HOME path is defined on your machine. For more information on setting your JAVA_HOME path see 'https://docs.opsgenie.com/docs/setting-java_home'.

* type in 'rails s' into your terminal to start the server!

* Go to 'http://localhost:3000/' to see the form.

* Fill in the form on the page then hit "Get Application!" and the PDF will be created and automatically prompt a download on your computer.

* Refresh the page to start a new application!

## Tech Used

* I used the fillable-pdf rails gem to dynamically fill in the application 'https://github.com/vkononov/fillable-pdf'.

* I used the pry gem for debugging 'https://github.com/pry/pry'.

* I used Bootstrap for some basic page formatting and styling.

* I incorporated a couple tests as well - run 'ruby -Itest test/models/pdf_test.rb' in your app directory to run tests.
