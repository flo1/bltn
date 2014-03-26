Better Late Than Never (bltn)
===

Shell script to save web pages and videos, for reading or watching later, or
when you are offline.

Features
---

- Add/remove articles and videos
- Download pages and videos locally
- Re-download an article or a video
- Easy synchronisation with a third party service (dropbox, ownCloud…)

Depends
---

You need wget, w3m and youtube-dl to use this script.

Installation
---

Download the script :

	git clone https://github.com/flo1/ril.git

Make it executable :

	chmod +x bltn/bltn

You can now use the script by running :

	bltn/bltn

Or just "bltn" by adding the script to a folder of your $PATH.

Use
---

At the first run, the configuration file /home/$USER/.config/bltn/bltn.conf is
created. You can also change the variables :
- $SYNCDIR is the location where the list of links is saved. You can
  synchronise this directory between your computers.
- $LOCALDIR is the location where local copies are saved. This directory
  doesn't need to be synchronised.

Run "bltn --help" to see the list of available options.
