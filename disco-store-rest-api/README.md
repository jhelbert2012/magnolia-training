# DISCO STORE: #

This repository contains the Disco Store Web Application made as a learning project with Magnolia CMS.

## PREREQUISITES: ##

Download and install [Maven 3.2.3](https://archive.apache.org/dist/maven/maven-3/3.2.3/binaries/) binaries that will work for your OS. For OS-specific installation instructions, please consult the Apache Maven Project website. If you follow these OS-specific instructions, you will most probably have to set also some OS environment variables.

Magnolia CMS run in many Servlet containers or application servers, but you can download a Magnolia Community edition 
which comes with a Apache Tomcat version, ready to run. If you want to use your Tomcat local installation, it's recomended
using or downloading the latest Tomcat 7.x version, in order to avoid issues with Magnolia CMS.

## BUILDING AND INSTALLATION: ##

The Disco Store project uses Maven for building. In order to build the project, in the project root folder, use the next command:


```
#!python

mvn clean install
```


The command downloads the libraries and modules needed to start a Community Edition from Magnolia CMS 5.4.3. It takes some time to 
download all the libraries, so, be patient :). If everything is OK and you get "Build Success" in your console after running the Maven 
command, please go to "disco-store-webapp/target" folder and copy the "disco-store.war" file. Go to your Tomcat installation directory,
"webapps" folder and paste the war file.

## LOGIN AND USING MAGNOLIA CMS WITH DISCO STORE PROJECT: ##

After copying the war file, please start (or restart) your Tomcat instance and once Tomcat is running again, please go to 
"http://localhost:8080/disco-store", in order to run Magnolia CMS, with Disco Store demo project. If this is the first time you're using
Magnolia or if you have run Magnolia before, it's possible you can see the Magnolia installation page. In the modules list to install, you
should be able to see "Disco-store-module" (which contains the templates, components, dialogs, etc, to run Disco Store project). So, simply 
click in the "Start install..." button and when the process is finish, click in "Start up Magnolia".

You'll be redirected to the Magnolia login form, so please enter "superuser" in username and password fields and click in LOGIN button 
or press Enter. The app launcher is displayed. You can Go to "Pages" app and start to create a new Page with the template 
"Disco Store Homepage" or "Album template". You can also click in "Assets" app and upload new assets to use in Disco Store project.

If you have a problem starting a Disco Store project in http://localhost:8080/disco-store, please remove your .m2 folder (Maven dependencies
folder) and run "mvn clean install" again.

# DOCKER #

Docker Hub: https://hub.docker.com/r/jhelbert/discostore/

Build the image 

```
#!bash

docker build -t jhelbert/discostore .
```

Run the container


```
#!bash

docker run -p 8080:8080 jhelbert/discostore
```


Logs:
```
#!bash

docker exec -it {container_id} tail -f /usr/local/tomcat/webapps/ROOT/logs/magnolia-error.log
docker exec -it {container_id} tail -f /usr/local/tomcat/webapps/ROOT/logs/magnolia-debug.log
```

MySQL Connector


```
#!bash

docker run -e MYSQL_ROOT_PASSWORD=root -d -p 3306:3306 mysql:latest
```


### Environments ###

http://discostore-dev.us-west-2.elasticbeanstalk.com

http://discostore-qa.us-west-2.elasticbeanstalk.com

** DISCO STORE SEARCH MODULE **

This module provides an overview of some of the key Magnolia features, such as:
* Rest Module
* Schedule Module
* Custom commands
* Vaadin integration

Beeing a disco-store submodule, the disco-store-module-search module is installed with the webapp module (mvn dependency),
so no aditional configuration is required.
Bootstrap configuration files are included in the resources path, and some of them are referenced in the VersionHandler
in order to have the last version each time the module is deployed (change default behaviour).

*** Config files: ***
src/main/resources/mgnl-bootstrap/disco-store-module-search
* config.modules.disco-store-module-search.apps.xml (vaadin search app definition)
* config.modules.disco-store-module-search.commands.xml (custom command refinition)
* config.modules.rest-services.rest-endpoints.search.xml (rest api definition)
* config.modules.rest-tools.config.xml (apiBaseRoot customization)
* config.modules.scheduler.config.jobs.mgnltrnng.xml (chron job executing our custom command)
* config.modules.ui-admincentral.config.appLauncherLayout.groups.edit.apps.disco-store-module-search.xml (menu entry definition)


Enjoy your time testing Magnolia CMS!! ;)
