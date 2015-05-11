# WPPATM
WPPATM = Wordpress plugins and themes manager

Currently is one simple bash script. The hope is it may one day become something like

  - [npm]
  - [bower]
  - [pypi and pip]
  - [Homebrew]

## Usage:
  * Go to your Wordpress plugin folder, normally something like *wp-content/plugins*
  * Put the *install.sh* file in that folder. You can do something like
```sh
$ curl -O https://raw.githubusercontent.com/sunshineo/wppatm/master/install.sh
```
Or download the file however you want using the link above.

  * Give the file permission to run. You can use something like
```sh
$ chmod +777 install.sh
```

  * Create a *plugins.txt* file like https://raw.githubusercontent.com/sunshineo/wppatm/master/plugins.txt . List the plugins you want to install line by line.
  * Run the script


License
----

MIT

[npm]:https://www.npmjs.com/
[bower]:http://bower.io/
[pypi and pip]:https://pypi.python.org/pypi
[Homebrew]:http://brew.sh/