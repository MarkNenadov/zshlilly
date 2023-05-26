# zshlilly
A Z shell scripting function library by Mark Nenadov - marknenadov@gmail.com

Installation
------------

There are two install scripts, one which installs from local files (install.sh), the other which grabs the master from github (install-from-github.sh).

You will need to sudo the install.

Both methods install to /usr/local/lib/zshlilly

```
chmod a+x install.sh
./install.sh
````


or (note: this requires wget and unzip to be installed) 

```
chmod a+x install-from-github.sh
./install-from-github.sh
```

Usage
-----

To include zshlilly in a script, do the following:

`source "/path/to/zshlilly.sh"`

Reference Documentation
-----------------------

For reference documentation, please consult the Markdown files (*.md) in the "docs" folder.
