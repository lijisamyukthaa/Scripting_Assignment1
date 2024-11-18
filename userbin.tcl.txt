#!/usr/bin/env tclsh

# Create the main window
set root [tk::frame .]
pack $root

# Create two listboxes
set listbox1 [tk::listbox $root.lb1 -selectmode single]
set listbox2 [tk::listbox $root.lb2 -selectmode single]

# Populate the first listbox with sample items
foreach item {Apple Banana Cherry Date Grape Orange} {
    $listbox1 insert end $item
}

# Function to copy item from listbox1 to listbox2
proc copyItem {} {
    global listbox1 listbox2
    set selected_index [$listbox1 curselection]
    if {[llength $selected_index] > 0} {
        set item [$listbox1 get $selected_index]
        $listbox2 insert end $item
    }
}

# Function to remove item from listbox2
proc removeItem {} {
    global listbox2
    set selected_index [$listbox2 curselection]
    if {[llength $selected_index] > 0} {
        $listbox2 delete $selected_index
    }
}

# Create buttons for actions
set copy_button [tk::button $root.copy -text "Copy" -command copyItem]
set remove_button [tk::button $root.remove -text "Remove" -command removeItem]

# Pack the listboxes and buttons into the window
pack $listbox1 -side left -fill both -expand true
pack $copy_button -side left -padx 10
pack $listbox2 -side right -fill both -expand true
pack $remove_button -side right -padx 10

# Start the Tk event loop
tk::mainloop
