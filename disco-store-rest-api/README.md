DISCO STORE:

This repository contains the Disco Store Web Application made as a learning project with Magnolia CMS.

PREREQUISITES:

Magnolia CMS run in many Servlet containers or application servers, but you can download a Magnolia Community edition 
which comes with a Apache Tomcat version, ready to run. If you want to use your Tomcat local installation, it's recomended
using or downloading the latest Tomcat 7.x version, in order to avoid issues with Magnolia CMS.

BUILDING AND INSTALLATION:

The Disco Store project uses Maven for building. In order to build the project, in the project root folder, use the next command:

mvn clean install

The command downloads the libraries and modules needed to start a Community Edition from Magnolia CMS 5.4.6. It takes some time to 
download all the libraries, so, be patient :). If everything is OK and you get "Build Success" in your console after running the Maven 
command, please go to "disco-store-webapp/target" folder and copy the "disco-store.war" file. Go to your Tomcat installation directory,
"webapps" folder and paste the war file.

LOGIN AND USING MAGNOLIA CMS WITH DISCO STORE PROJECT:

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

DISCO STORE SEARCH MODULE

This module provides an overview of some of the key Magnolia features, such as:
* Rest Module
* Schedule Module
* Custom commands
* Vaadin integration

Beeing a disco-store submodule, the disco-store-module-search module is installed with the webapp module (mvn dependency),
so no aditional configuration is required.
Bootstrap configuration files are included in the resources path, and some of them are referenced in the VersionHandler
in order to have the last version each time the module is deployed (change default behaviour).

Config files:
src/main/resources/mgnl-bootstrap/disco-store-module-search
* config.modules.disco-store-module-search.apps.xml (vaadin search app definition)
* config.modules.disco-store-module-search.commands.xml (custom command refinition)
* config.modules.rest-services.rest-endpoints.search.xml (rest api definition)
* config.modules.rest-tools.config.xml (apiBaseRoot customization)
* config.modules.scheduler.config.jobs.mgnltrnng.xml (chron job executing our custom command)
* config.modules.ui-admincentral.config.appLauncherLayout.groups.edit.apps.disco-store-module-search.xml (menu entry definition)

Enjoy your time testing Magnolia CMS!! ;)
