# Apple script: Eject all attached usb disks

try
	tell application "Finder"
		eject the disks
		display dialog "Successfully ejected disks." buttons {"Close"} default button "Close"
	end tell
on error
	display dialog "Unable to eject all disks." buttons {"Close"} default button "Close"
end try
