#Canvas Starter App

This project provides a starting point for building a Canvas LTI or OAuth application. 

##Examples

Atomic Jolt has built a number of applications based on this source.

###Demo Arigato

This project was created for the Sales team at Instructure. It makes it simple to populate a sample Canvas course using values from Google Drive Spreadsheets.

Live Application: [http://demoarigato.herokuapp.com/](http://demoarigato.herokuapp.com/)

Source Code: [https://github.com/atomicjolt/demo_arigato](https://github.com/atomicjolt/demo_arigato)


##Deployment



###Requirements

This application requires:

-   Ruby
-   Rails
-   PostGreSQL

Learn more about [Installing Rails](http://railsapps.github.io/installing-rails.html).

##Database

This application uses PostgreSQL with ActiveRecord.


##Developement

To test your Canvas application with Canvas you will need to provide a public SSL url. The simpliest way to do this is to
use ngrok which can be downloaded from https://ngrok.com/.

##ngrok

__Create a local tunnel__

ngrok --subdomain canvas_app 3000