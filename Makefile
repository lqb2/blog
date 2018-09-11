shortserve:
	jekyll serve --watch --limit_posts 2

write:
	subl.
	subl _posts/post-template.md
	open '../../../../Applications/Hemingway.app/'

serve:
	open http://127.0.0.1:4000/blog/
	jekyll build
	osascript -e 'tell application "Terminal" to activate' -e 'tell application "System Events" to tell process "Terminal" to keystroke "t" using command down'	
	jekyll serve --incremental
	

# publish command doesn't work yet
publish:
	git add .
	git commit -m ''