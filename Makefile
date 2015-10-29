OUT_DIR:="site"

all:
	lpad-gen

preview: all
	chromium $(OUT_DIR)/index.html

publish: all
	ghp-import -m "Upload for `git log --pretty=oneline --abbrev-commit -1`" -b master -p -n

clean:
	rm -rf $(OUT_DIR) 
