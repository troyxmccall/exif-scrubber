## What this is for:


Digital photographs carry what’s known as [EXIF data](https://en.wikipedia.org/wiki/Exif), a stash of hidden technical information that is embedded in every digital image file. This data can include sensitive details such as the precise date, time and location at which the picture was taken, the make and model of the camera/smartphone it was taken with, and even the serial number of camera lenses.

This information could potentially identify photographers or be used to prove a person was at a given place at a set time, potentially breaking curfews, for example. 

This toolkit is spefically designed to be transparent and open-source for protestors/journalists to use


## The software that runs:
[
Alpine Linux](https://alpinelinux.org/) Container with [Exiv2](https://www.exiv2.org/)


## Usage:

1) Download docker for your OS: https://docs.docker.com/get-docker/

2) Make a temp folder on your host machine and copy the photos you want to strip to it
ie: 

```bash
mkdir -p ~/Pictures/photos-to-strip && cd ~/Pictures/photos-to-strip && open .
```


3) run container (mount your `~/Pictures/photos-to-strip` in a `/data` directory inside the container)

```bash
docker run -it --rm -v ~/Pictures/photos-to-strip:/data troyxmccall/exif-scrubber
```

4) Use Exiv2 to remove all exif data 

```bash
cd /data/ && exiv2 rm *
```

5) Use tool to check your files

```bash
cd /data/ && exiv2 pr *
```

6) close out
```bash
exit
```

7) Follow these additional guidelines: https://www.eff.org/deeplinks/2016/11/digital-security-tips-for-protesters

8) I recommend using [Tor](https://www.torproject.org/download/) & [ProtonMail](https://protonmail.com/)

