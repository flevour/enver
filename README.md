
# Enver

  The fastest way to manage your accounts infos directly from shell.
  With enver you can save all your account informations in json format for easy access in the future.
  Saved informations will be encrypted and keept safe.

## Requirements

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
            "pwd": "bar"
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
  └ pwd

$ enver list project-name.ssh
user
pwd
```

## Links

 - [Node Commander.js](http://visionmedia.github.com/commander.js/)
