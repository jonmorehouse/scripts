#!env osascript

-- crreate a list of items to remove
set dock_elements to {"Trash", "Finder"}

-- activate dock so we can click buttons
tell application "Dock"
	
	activate
end tell

tell application "System Events"
	tell process "Dock"

		-- foreach of the dock items 
		repeat with element in dock_elements

			-- check if dock item exists 
			if (exists UI element element of list 1) then

				-- if so then remove_from_dock
				tell UI element element of list 1
					perform action "AXShowMenu"
					click menu item "Remove from Dock" of menu 1
				end tell
			end if
		end repeat
	end tell
end tell

-- go back to the terminal
tell application "Terminal"
	activate
end tell

