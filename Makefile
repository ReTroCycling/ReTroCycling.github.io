OUT_DIR:=site

all:
	lpad-gen

preview: all
	chromium $(OUT_DIR)/index.html

publish: all
	ghp-import -m "Update gh-pages" -b master -p -n $(OUT_DIR)

clean:
	rm -rf $(OUT_DIR) 
