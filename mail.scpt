#!/usr/bin/env osascript

on open location (url_to_open)
  display dialog url_to_open
          if url_to_open does not contain "?" then
  set the clipboard to item 2 of stringtolist(url_to_open, ":")
                    beep 2
          else
  --tell application "Mail" to open location url_to_open
  --do shell script "open -a Mail.app " & url_to_open
  --activate
          end if
end open location
 
on stringtolist(theString, delim)
          set oldelim to AppleScript's text item delimiters
          set AppleScript's text item delimiters to delim
          set dlist to (every text item of theString)
          set AppleScript's text item delimiters to oldelim
          return dlist
end stringtolist
