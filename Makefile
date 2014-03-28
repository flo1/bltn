install:
	cp bltn /usr/local/bin
	cp bltn-add-article /usr/local/bin
	cp bltn-add-video /usr/local/bin
	cp bltn-remove-item /usr/local/bin

clean:
	rm /usr/local/bin/bltn
	rm /usr/local/bin/bltn-add-article
	rm /usr/local/bin/bltn-add-video
	rm /usr/local/bin/bltn-remove-item
