
# Enver

  Enver is a Node.js script that runs in your shell to easily manage your accounts informations.
  With enver you can save your account informations in json format for fast access in the future.
  This is an utility to have authentication data always ready when you're connecting to remote machines or doing something that requires a password.
  Saved informations will be encrypted and keept safe.

## Requirements

  - Node 0.6.x
  - [commander.js](http://visionmedia.github.com/commander.js/) module    

## Installation

Copy or clone the script inside your ~/bin directory.
Install Commander module and initialize enver.

    $ npm install commander
    $ enver init

`init` creates the RSA keys that will be placed in ~/.enver

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

###Export

    $ enver export file.json

This command exports the database in a clear json.
If you want to format it you may use [jsonlint for node](https://github.com/zaach/jsonlint).

## Oh My Zsh! autocomplete plugin

place "enver.plugin.zsh" inside your ~/.oh-my-zsh/plugins/ and activate it in your ~/.zshrc file to enable autocomplete for commands and object paths.

special thanks to [flevour](https://github.com/flevour)

## Links

 - [commander.js](http://visionmedia.github.com/commander.js/)
 - [jsonlint for node](https://github.com/zaach/jsonlint)
 - [nodejs extend](https://github.com/shimondoodkin/nodejs-clone-extend)
 - [AES](http://it.wikipedia.org/wiki/Advanced_Encryption_Standard)
 - [RSA](http://en.wikipedia.org/wiki/RSA_\(algorithm\))