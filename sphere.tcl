# Function to calculate the volume of a sphere
proc sphereVolume {radius} {
    # Calculate volume using the given formula
    set volume [expr {(4.0/3.0) * pi * ($radius ^ 3)}]
    return $volume
}

# Main script
puts "Enter the radius of the sphere:"
# Read input from the user
gets stdin radius

# Validate input to ensure it's a number
if {[string is double $radius]} {
    # Call the function to calculate volume
    set volume [sphereVolume $radius]
    # Display the result
    puts "The volume of the sphere with radius $radius is: $volume"
} else {
    puts "Error: Please enter a valid number for the radius."
}
