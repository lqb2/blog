serve:
	jekyll serve --watch --limit_posts 2

writepost:
	subl _posts/post-template.md
	open http://127.0.0.1:4000/blog/
	osascript -e 'tell application "Terminal" to activate' -e 'tell application "System Events" to tell process "Terminal" to keystroke "t" using command down'
	jekyll serve --watch --limit_posts 2

publish:
	git add .
	git commit -m ''