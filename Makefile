.PHONY: all tsc dist

all: dist

tsc:
	tsc --build page/tsconfig.json

dist: tsc
	mkdir -p dist/3rd-party
	cp -r page/3rd-party/libflac.js dist/3rd-party/
	cp page/10-seconds-of-silence.mp3 dist
	cp page/favicon.ico dist
	cp page/index.html dist
	cp page/launcher-icon.png dist
	cp page/manifest.json dist
	cp page/meatball.png dist
	cp page/mute_icon.png dist
	cp page/play.png dist
	cp page/snapcast-512.png dist
	cp page/speaker_icon.png dist
	cp page/stop.png dist
	cp page/styles.css dist

dev: dist
	cp page/snapcontrol.ts dist
	cp page/snapstream.ts dist

clean:
	rm -rf dist

release: clean dist
