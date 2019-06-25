# CharacterFinder - Pathfinder TTRPG Database & Character Creator

## Installation

This is Rails/backend half of the code. For the React/frontend of the code, go to https://github.com/Guillamoure/pfcc-frontend. Clone or Download this file and copy into a new file on your terminal using

### `git clone`


Open up the file, and run

### `bundle install`

followed by

### `rails db:migrate`
### `rails db:seed`
### `rails s`

NOTE: this server needs to run through localhost:3000, so make sure this React file does not run on that server. Make sure that this server is running on port 3000 either by running this program first, or declaring the port when you start the server.

### `rails s -p 3000`

before starting the server up.


## Description

This program is to help users who play the Pathfinder Role Playing Game create their characters, and have a resource where all of their character's information, abilities, features, and statistics are all in one location, on one page. This application allows a user to preview different character options, and create a character through this application.

A user, if they have administrative access, will be able to add character options and details to the backend using forms present within the application.


This API is the database for the React program. All data is added through the forms on the frontend, editable only if you are an administrator. Administrative access cannot be added on the frontend; you must enter

### `rails c`

on the console, find your user, and change the admin boolean to TRUE.
