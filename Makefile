
build: build-fortune

build-txt:
	ls src/tips/ | sort -n | while read f; do echo -n "Redteam Tip #$$(echo $$f | sed 's/\.txt//'): "; cat src/tips/$$f; echo '%'; done > dist/redteam-tips

build-fortune:: build-txt
	strfile dist/redteam-tips dist/redteam-tips.dat

test::
	fortune dist/redteam-tips
