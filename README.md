# WCA Database in Docker

Tools to quickly set up WCA database on your Docker instance.

## Installation
You must have installed docker on your machine and then simply do

```make start && make install && make update```

to start container, install required tools and download the database.

## Updating database
Simply run

```make update```

when container is running

## Stopping and removal
When container is running run

```make stop```

to finish it's work.

If you wish to fully remove the container and it's volume run

```make rm```.