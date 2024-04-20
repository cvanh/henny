# ansible for mc server 
This ansible script creates and configures a minecraft server on hetzner. It runs the Minecraft server using docker and it used logrotate for the daily back ups.
To set it up follow the inscrutions 


## roles
### cockpit
cockpit ui from [cockpit project](https://cockpit-project.org/running)

### fail2ban
bans people fucking with ssh

### minecraft
starts minecraft server using the docker compose located in templates

the backups are made by logrotate to an external hetzner box. The process of setting up the box is manual and requires you to add an trusted key to the storage box and set the box up

## setup
blah blah galaxy blah dont be an idiot blah

`source ./bin/setup.sh`
run with `source ./bin/run.sh`