install:
	cp bltn /usr/local/bin
	chmod +x /usr/local/bin/bltn
	cp bltn-add-article /usr/local/bin
	chmod +x /usr/local/bin/bltn-add-article
	cp bltn-add-video /usr/local/bin
	chmod +x /usr/local/bin/bltn-add-video
	cp bltn-remove-item /usr/local/bin
	chmod +x /usr/local/bin/bltn-remove-item
	cp rss2bltn /usr/local/bin
	chmod +x /usr/local/bin/rss2bltn

uninstall:
	rm /usr/local/bin/bltn
	rm /usr/local/bin/bltn-add-article
	rm /usr/local/bin/bltn-add-video
	rm /usr/local/bin/bltn-remove-item
	rm /usr/local/bin/rss2bltn
