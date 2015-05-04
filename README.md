#Amasyn Software

Web app and async processes to support selling on Amazon


### Secrets file
Rename config/secrets.example.yml to config.secrets.yml. Open the file and change each entry to values that are
relevant for your application.

config/secrets.yml will be used to hold values that should be kept safe and which should not be commited to your repository.

`cd config`

`mv secrets.example.yml secrets.yml`

###Single Page Application Support
The Amasyn Software uses React. During development run the (React Hot Loader)[https://github.com/gaearon/react-hot-loader]

####Webpack Integration
'npm install -g webpack'

'cd client && webpack'

###ngrok

Install [https://ngrok.com/](ngrok)

__Create a local tunnel__

`ngrok --subdomain amasynsoftware 3000`

Change `amasynsoftware` to be the name of your application. Only use letters or numbers in the name.
Special characters like '_' will result in errors.

Once you have created the tunnel you will access your application using the ngrok url:

`https://amasynsoftware.ngrok.com`

###Seeds

Open db/seeds.rb and configuration a default account for development and production. Here's a summary
of the values and their purpose:
-  code         Uniquely identifies the account. This is used for the subdomain when running applications on
                a single domain. Create a default account in the seeds.rb file and then open up `config/secrets`.yml
                and be sure to provide the code from the default account for the `application_code`. Only use letters
                and numbers in the code. Special characters will result in errors.
-  domain       Custom domain name
-  name         Name the account anything you'd like

Once you've setup your seeds file run it to setup database defaults:

`rake db:seed`

##Deployment

###Heroku

Make sure you have signed up for a heroku account [Heroku](http://www.heroku.com). Then follow the instructions provided by
Heroku to create your application.

Push secrets to production:
`rake heroku:secrets RAILS_ENV=production`

Deploy to Heroku:
`git push heroku master`

###Other Services

By default `config/unicorn.rb` is setup to deploy to Heroku. Open that file, comment out the Heroku section
and uncomment the other configuration to setup unicorn for deployment to another service like AWS.


##Requirements

This application requires:

-   Ruby
-   Rails
-   PostGreSQL

Learn more about [Installing Rails](http://railsapps.github.io/installing-rails.html).

###Database

This application uses PostgreSQL with ActiveRecord.

###Tests

You may need to install chromedriver if you haven't already.

'brew install chromedriver'

To run tests:

'rake spec'


