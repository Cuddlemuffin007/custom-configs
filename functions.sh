# Get the weather :) <<2
#--------------------------------------------------------------------
# Usage: weather tokyo
# -------------------------------------------------------------------
weather() {
    if [[ $# == 0 ]]; then
        echo "Displaying closest city, but you can see others like this: 'weather city_name' or using IATA airport abbreviations like this 'weather lax'."
    fi
    curl http://wttr.in/$1 || echo "An error occurred. Did you enter a valid city?"
}
# >>2

# display searched process name if process is running
#--------------------------------------------------------------------
# Usage: any postgres
# -------------------------------------------------------------------
any() {
    if [[ $# == 0 ]]; then
        echo "usage: any name"
    fi
    ps aux | grep -v "grep" | grep $1 || echo "No running processes."
}
# >>2
