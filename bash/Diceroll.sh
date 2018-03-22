#!/bash/bin
# First attempt at project

numdice=2 #set a default count of dice
read -p "How many dice should we roll [1 to 5, default is 2]?" usernum
if [ -n "$usernum" ]; then # did the user give us something
    echo $usernum| grep -q '[^0-9]' && usernum=0 #throw away what they gave us if it wasn't a number
    if [ $usernum -lt 1 -o $usernum -gt 5 ]; then
        echo "Number of dice must be from 1 to 5 inclusive" >&2 #complain if they went outside of 1 to 5
    else
        numdice=$usernum  # save their number if it is a valid number from 1 to 5
    fi
fi
