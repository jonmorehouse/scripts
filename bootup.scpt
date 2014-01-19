set dock_elements to {"Finder", "Trash"}
tell application "Dock"
	
	activate

end tell
tell application "System Events"
	tell process "Dock"
		set frontmost to true
		activate 
		repeat with element in dock_elements
			tell UI element element of list 1
				perform action "AXShowMenu"
				click menu item "Remove from Dock" of menu 1
			end tell
		end repeat
	end tell
end tell

