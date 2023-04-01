# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
#!/bin/awk -f
BEGIN {
 total = $1 # variable for total pokemon
 hpsum+=$6
 hpavg =hpsum/total
 attsum=$7
 attavg=attsum/total
}

END { print" ===== SUMMARY OF DATA FILE ====="
      print    " File name: pokemon.dat"
      print    "Total Pokemon:" $total
      print     "    Avg. HP:"  $hpavg
      print    "    Avg. Attack: " $attavg
      print   " ===== END SUMMARY ====="
}
# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not necessarily be called pokemon.dat. However, you can assume that any file passed to this script will be formatted exactly the way pokemon.dat is formatted.
