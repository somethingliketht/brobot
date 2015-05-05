# Notes on how Brobot was born

The easiest way to set up and run a Hubot instance is by creating a local fork, 
deploying it to Heroku via Git, and connecting your new web app to a group chat 
as if it were a new user. 

Here's how this instance was born (on Coud9.io's Debian Linux platform, with
Node, NPM, and an SSH identity already installed).

        # install CoffeeScript
        npm install -g coffee-script
        
        # generate, install, and lightly configure your local Hubot instance
        # DON'T DO THIS IF YOU ALREADY PULLED DOWN AN EXISTING HUBOT FORK
        npm install -g yo generator-hubot  
        mkdir -p hubot
        cd hubot
        yo hubot
        
At this point, the generator will ask for a name and description for your bot, 
which can be anything you like. Pay attention, however, when it asks which 
adapter you want to use. Make sure to type `hipchat` if that's what you're 
using. If you make a mistake, just open `Procfile` and replace it with this:

        web: bin/hubot -a hipchat
        
Note: You'll also have to edit `Procfile` if you forked Hubot straight from 
GitHub. Otherwise, if you haven't started a Git repo yet, create one now:

        git init
        git add .
        git commit -am "Initial Commit"

Now you'll need a place to host your app. Head over to [Heroku][heroku] and 
create a free account. Follow the instructions to install the Heroku toolbelt, 
authenticate via SSH, and connect to Heroku. Now you can create your server:

        heroku login
        heroku create

Finally, go over to HipChat and create a new chat account. You'll have to go
into the account's settings to the XMPP/Jabber information tab. Find the 
JID and you'll be ready to configure your Heroku environment:

        heroku config:add HUBOT_HIPCHAT_JID="--- the Brobot account's JID ---"
        heroku config:add HUBOT_HIPCHAT_PASSWORD="--- the hipchat password ---"
        heroku config:add HEROKU_URL="https://something-whatever-9999.herokuapp.com/"
        heroku config:add HUBOT_HEROKU_KEEPALIVE_URL="https://something-whatever-9999.herokuapp.com/"
        
Once everything is set up, you can deploy your new bot just by pushing the 
repo to Heroku via Git. The `heroku create` command should have added Heroku
to your remotes list. Run the following and cross your fingers:

        git push heroku master