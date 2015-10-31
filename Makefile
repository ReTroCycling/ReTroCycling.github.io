OUT_DIR:=site

all:
	lpad-gen

preview: all
	chromium $(OUT_DIR)/index.html

publish: clean all
	ghp-import -m "Update gh-pages for `git describe --always --dirty`" -b master -p -n $(OUT_DIR)

clean:
	rm -rf $(OUT_DIR) 
