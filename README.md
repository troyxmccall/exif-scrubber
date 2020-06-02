## What this is for


Digital photographs carry what’s known as [EXIF data](https://en.wikipedia.org/wiki/Exif), a stash of hidden technical information that is embedded in every digital image file. This data can include sensitive details such as the precise date, time and location at which the picture was taken, the make and model of the camera/smartphone it was taken with, and even the serial number of camera lenses.

This information could potentially identify photographers or be used to prove a person was at a given place at a set time, potentially breaking curfews, for example. 


## The software that runs:

Alpine Linux Container with [Exiv2](https://www.exiv2.org/)


## Usage:

1) download docker for your OS: https://docs.docker.com/get-docker/

2) Make a temp folder on your host machine and copy the photos you want to strip to it
ie: 

```bash
mkdir -p ~/Pictures/photos-to-stirp && cd ~/Pictures/photos-to-stirp/ && open .
```


3) run these 2 commands

##### Run container (mount your desktop in a /data directory inside the container)

```bash
docker run -it --rm -v ~/Pictures/photos-to-strip:/data troyxmccall/exif-scrubber
```

##### Use Exiv2 to remove all exif data 

```bash
cd /data/ && exiv2 rm *
```

