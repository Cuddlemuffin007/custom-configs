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
