Better Late Than Never (bltn)
===

Shell script to save web pages and videos, for reading or watching later, or
when you are offline.

Features
---

BLTN :
- Add/remove articles and videos
- Download pages and videos locally
- Re-download an article or a video
- Easy synchronisation with a third party service (dropbox, ownCloud…)

BLTN add and remove scripts :
- add and remove items quickly from your browser

RSS2BLTN :
- Add automaticly new articles from RSS feeds to BLTN
- Add automaticly new videos from Youtube RSS feed to BLTN
- Synchronisation like BLTN

A Youtube RSS feed looks generaly like this :

	http://www.youtube.com/rss/user/USERNAME/videos.rss 

Depends
---

You need wget, w3m and youtube-dl to use BLTN.

If you use the BLTN add and remove scripts, you will need libnotify and xdotool.

RSS2BLTN depends on rsstail.py https://github.com/gvalkov/rsstail.py

On Ubuntu, you can install all dependencies with this command :

	sudo apt-get install w3m youtube-dl libnotify-bin xdotool
	sudo pip install rsstail

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

Exemple of cron jobs
---

To add cron jobs, run

	crontab -e

then paste the following lines :;

	# Env
	SHELL=/bin/bash
	HOME=/home/florian
	PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/bin
	# Cmd cron
	30 * * * * bash /usr/local/bin/bltn     -u >> /tmp/bltn.log 2>&1
	0 * * * *  bash /usr/local/bin/rss2bltn -u >> /tmp/rss2bltn.log 2>&1
	0 0 1 * *  bash /usr/local/bin/rss2bltn -c >> /tmp/rss2bltn.log 2>&1

BLTN and RSS2BLTN will now be updated each hour.

Uninstallation
---

Go into BLTN previously downloaded directory and run as root :

	sudo make uninstall


