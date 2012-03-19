
# Enver

  Enver is a Node.js script that runs in your shell to easily manage your accounts informations.
  With enver you can save your account informations in json format for fast access in the future.
  This is an utility to get authentication data always ready when you're connecting to remote machines or doing something that requires a password.
  Saved informations will be encrypted and keept safe.

## Requirements

  - Node 0.6.x
  - Commander Node module

    $ npm install commander

## Initialization

Initialize enver and create RSA keys that will be placed in ~/.enver

    $ enver init

#Commands
###Import
You can easily import a json file. This will not erase your previously inserted data, instead will extend it.

    $ enver import path/to/json

#####json example

```js
{
    "project-name": {
        "ssh": {
            "user": "foo",
            "password": "bar"
        }
    }
}
```

The structure is completely flexible and it's up to you.

###Get

    $ enver get project-name.ssh.user
    
Depending on your json structure.
The retrieved key will be copied to your clipboard and won't be echoed.

###Delete

    $ enver delete project-name.ssh.user
    
###Add

    $ enver add new-project.db.user
    
After this command you will be prompted to insert the value of the object so it won't be present in your command history.

###List

    $ enver list [path]
    
This command will show the complete, or partial depending on the presence of [path], json structure without leaves keeping users and passwords hidden.

```bash
$ enver list
project-name
└ ssh
  └ user
  └ password

$ enver list project-name.ssh
user
password
```

## Links

 - [Node Commander.js](http://visionmedia.github.com/commander.js/)
