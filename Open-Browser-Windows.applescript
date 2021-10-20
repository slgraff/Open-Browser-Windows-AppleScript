set googleURLList to {"https://mail.google.com", "https://calendar.google.com"}

set socialURLList to {"https://facebook.com", "https://twitter.com"}

-- Open URLs in googleURLList in new window
tell application "Google Chrome"
	activate
	
	-- Open Google Mail, Calendar
	make new window
	set the bounds of first window to {0, 23, 1700, 1811}
	
	
	repeat with theURL in googleURLList
		open location theURL
	end repeat
end tell

-- Open URLs in socialURLList
tell application "Google Chrome"
	
	-- Open Facebook and Twitter in second window
	make new window
	set the bounds of first window to {1704, 23, 3358, 1811}
	
	
	repeat with theURL in socialURLList
		open location theURL
	end repeat
	
end tell
