# GT-Collaborate [![Build Status](https://travis-ci.org/JurajKubelka/GT-Collaborate.svg?branch=master)](https://travis-ci.org/JurajKubelka/GT-Collaborate)

This is legacy code. You can find new project called [PharoSprint](https://github.com/JurajKubelka/PharoSprint).

Set of tools that permits collaboration in Pharo. 

## Description

Right now, it integrates [Pharo FogBugz issue tracker](http://pharo.fogbugz.com). You can open the application in [Pharo](http://pharo.org) (World menu / Collaboration / Your Journal), login to FogBugz, and see opened cases (issues) with details.


Login window:

![login window](images/readme/login.png)

Updating window (if there are no loaded issues):

![updating window](images/readme/updating.png)

Main window:

![main window](images/readme/main.png)

## Installation

It is under development. You can install development version in [Pharo 6](http://pharo.org). 

```
Metacello new
	baseline: #GTCollaborate;
	repository: 'github://JurajKubelka/GT-Collaborate/repository';
	load.
```

## Development

Download the latest [Pharo 6](http://pharo.org/download) and install: 

```
Metacello new
    baseline: 'FileTree';
    repository: 'github://dalehenrich/filetree:pharo6.0_dev/repository';
    load: 'Git'.
```

Download the project source code and execute in a playground following code: 

```
Metacello new
    baseline: #GTCollaborate;
    repository: 'gitfiletree://<your directory>/GT-Collaborate/repository';
    load.
```
