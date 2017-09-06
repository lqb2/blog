shortserve:
	jekyll serve --watch --limit_posts 2

writepost:
	open http://127.0.0.1:4000/blog/
	subl _posts/post-template.md	

serve:
	jekyll build
	jekyll serve --incremental
	osascript -e 'tell application "Terminal" to activate' -e 'tell application "System Events" to tell process "Terminal" to keystroke "t" using command down'

# publish command doesn't work yet
publish:
	git add .
	git commit -m ''