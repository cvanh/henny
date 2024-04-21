# ansible for mc server 
This ansible script creates and configures a minecraft server on hetzner. It runs the Minecraft server using docker and it used logrotate for the daily back ups.
To set it up follow the inscrutions in [setup](#setup).

![funny picture](https://imgs.xkcd.com/comics/automation_2x.png)


## roles
### cockpit
cockpit ui from [cockpit project](https://cockpit-project.org/running). It makes managing the server a lil bit easier

### fail2ban
bans people fucking with ssh

### minecraft
starts minecraft server using the docker compose located in templates

the backups are made by logrotate to an external hetzner box. The process of setting up the box is manual and requires you to add an trusted key to the storage box and set the box up

## setup
To start using the [Ansible playbook](https://medium.com/@wintonjkt/ansible-101-getting-started-1daaff872b64) we need to set up our local environment and add a special user for ansible. 

To setup and use our local environment we need to create a virtualenv. You can create a [virtualenv](https://docs.python.org/3/library/venv.html) with this command `python -m venv .venv` as you can see this command created a `.venv` folder for our virtualenv. 

Now that we have a virtualenv we need to activate it each time we want to run this project. On linux systems you can do this by running `source ./.venv/bin/activate` you will then see `(.venv)` appear in front of your cursor. 

Each time `requirements.txt` gets updated or `.venv` is created we need to install the python packages by running `pip install -r requirements.txt`. 

Now run ansible with `source ./bin/run.sh`

If you want to stop working on the project or deactivate the virtualenv run `deactivate` in your shell.

<!-- when running you need to have the ansible vault password. in this vault you can add the password of the user ansible.  -->


## todos
- [ ] check backup of mc server
- [ ] check off site backups of mc
- [ ] add alerts if somethings fails
- [ ] add `when` to roles 
- [ ] 1password support
- [ ] write docs like [diataxis](https://diataxis.fr/)
- [ ] better automatation for setup and running
- [ ] research the benefits of ansible.conf
- [ ] add tests to roles 
- [ ] add kibana