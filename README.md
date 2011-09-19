# SimpleHost

A shell script for Ubuntu which aims to simplify the repetitiveness of creating new apache-based web projects.

## Installation

* Edit "PROJECT_DIR" variable at the top of the file; it should be your default project base directory (/var/www or whatever)
* Edit "HOST_SUFFIX" variable at the top of the file; it should be your default project hostname suffix (.local, .test or whatever)
* Copy or symlink simplehost.sh to /usr/bin (or anywhere else where it is executable)

## Usage

For now it must be called using *sudo*: `sudo simplehost HOSTNAME`

## What it does exactly

This is really a silly little script! Here's what goes down:

* A file /etc/apache2/sites-available/HOSTNAME is created
* A simple VirtualHost is created pointing to the HOSTNAME project directory
* The host is enabled & apache is reloaded
* The host entry is appended to the end of /etc/hosts

The easiest way to figure it out is by going ahead and creating a host! :)

## Authors

* [Alex Weber](http://www.alexweber.com.br)
* [Leandro Nunes](http://www.nunesweb.com)

## License

SimpleHost is Distributed under the terms of new [BSD License](http://www.opensource.org/licenses/bsd-license.php).

Copyright (c) 2011 [Alex Weber](http://www.alexweber.com.br)
