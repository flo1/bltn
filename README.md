ril
===

Shell script to save and manage web pages and videos, for reading and watching
later or when you are offline.

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

	chmod +x ril/ril

You can now use the script by running :

	ril/ril

Or just "ril" by adding the script to a folder of your $PATH.

Use
---

At the first run, the configuration file /home/$USER/.config/ril/ril.conf is
created. You can also change the variables :
- $SYNCDIR is the location where the list of links is saved. You can
  synchronise this directory between your computers.
- $LOCALDIR is the location where local copies are saved. This directory
  doesn't need to be synchronised.

Then run ril with one of this options :
Options:   -h, --help                    Display help
           -a, --add url [url2…]         Add url(s)
           -av, --add-video url [url2…]  Add video(s)
           -l, --list                    List saved articles
           -u, --update                  Update local copy
           -f, --force                   Force re-download of an item
           -fa, --force-article          Force re-download of an article
           -fv, --force-video            Force re-download of a video
           -F, --force-all               Force re-download of all items
           -Fa, --force-all-articles     Force re-download of all articles
           -Fv, --force-all-videos       Force re-download of all videos
           -o, --open                    Open an item
           -oa, --open-article           Open an article
           -ov, --open-video             Open an video
           -r, --remove                  Remove an item
           -ra, --remove-article         Remove an article
           -rv, --remove-video           Remove an video
           -R, --remove-all              Remove all item
           -Ra, --remove-all-articles    Remove all articles
           -Rv, --remove-all-videos      Remove all video
