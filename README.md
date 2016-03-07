#### Ruby Sinatra Image Uplaoder (RSIU is a horrible acronym)

###### Install
1. Clone the repo to you local workspace using SourceTree or GitBash or anything that works for you.
2. In the terminal, navigate to the projects root directory.
3. Run: > **bundle install**
4. The project dependencies should download including Sinatra
5. Run: > **rake db:migrate** to update the database structure
6. The database should be updated and populated as expected

###### Run
1. In the terminal, navigate to the projects root directory (if you're not already there).
2. Run: > **rackup**
3. Sinatra should startup on port 9292 by default (check bootup message)
4. In your choice browser navigate to **http://localhost:[PORT_NUM]**
5. Upload an image and see that it is shown and stored in the database :)
