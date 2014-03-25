ril
===

Shell script to save and manage web pages, for reading later or when you are
offline.

Features
---

- Add/remove articles
- Download pages locally
- Re-download an article
- Easy synchronisation with a third party service (dropbox, ownCloud…)

Depends
---

You need w3m to use this script.

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
- $ARTICLESDIR is the location where the list of links is saved. You can
synchronise this directory between your computers.
- $STOREDIR is the location where local copies of web pages are saved. This
directory doesn't need to be synchronised.

Then run ril with one of this options :
- -a, --add url [url2…] : add url(s)
- -l, --list : list saved articles
- -r, --remove : remove an article
- -R, --remove-all : remove all articles
- -u, --update : update local copy
- -f, --force : force re-download of an article
- -F, --force-all : force re-download of all articles
- -o, --open : open an article
- -h, --help : display help

