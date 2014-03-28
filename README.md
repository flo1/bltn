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
- Create shortcuts for quickly adding and removing items.

Depends
---

You need wget, w3m and youtube-dl to use this script.
If you use the others script, you will need libnotify and xdotool.

Installation
---

Download the script :

	git clone https://github.com/flo1/ril.git

Change into BLTN directory

	cd bltn

Rin installation as root :

	sudo make install

You can now use the script by running :

	bltn

Use
---

At the first run, the configuration file /home/$USER/.config/bltn/bltn.conf is
created. You can also change the variables :
- $SYNCDIR is the location where the list of links is saved. You can
  synchronise this directory between your computers.
- $LOCALDIR is the location where local copies are saved. This directory
  doesn't need to be synchronised.

Run "bltn --help" to see the list of available options.

Shortcuts
---

You can add keybord shortcuts for the following scripts :
- bltn-add-article
- bltn-add-video
- bltn-remove-item

Now when you see a page in your browser, you can quickly add it or remove it.
This should works at least with Firefox and Chromium.

Uninstallation
---

Go into BLTN previously downloaded directory and run as root :

	sudo make uninstall


