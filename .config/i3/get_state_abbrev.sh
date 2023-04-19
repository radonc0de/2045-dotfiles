#!/bin/bash

# Get the state full name from the command line argument
state_full=$1

# Convert the full name to uppercase
state_full_upper=${state_full^^}

# Use a case statement to convert the full name to its abbreviation
case "$state_full_upper" in
    ALABAMA) echo "AL";;
    ALASKA) echo "AK";;
    ARIZONA) echo "AZ";;
    ARKANSAS) echo "AR";;
    CALIFORNIA) echo "CA";;
    COLORADO) echo "CO";;
    CONNECTICUT) echo "CT";;
    DELAWARE) echo "DE";;
    FLORIDA) echo "FL";;
    GEORGIA) echo "GA";;
    HAWAII) echo "HI";;
    IDAHO) echo "ID";;
    ILLINOIS) echo "IL";;
    INDIANA) echo "IN";;
    IOWA) echo "IA";;
    KANSAS) echo "KS";;
    KENTUCKY) echo "KY";;
    LOUISIANA) echo "LA";;
    MAINE) echo "ME";;
    MARYLAND) echo "MD";;
    MASSACHUSETTS) echo "MA";;
    MICHIGAN) echo "MI";;
    MINNESOTA) echo "MN";;
    MISSISSIPPI) echo "MS";;
    MISSOURI) echo "MO";;
    MONTANA) echo "MT";;
    NEBRASKA) echo "NE";;
    NEVADA) echo "NV";;
    NEW_HAMPSHIRE) echo "NH";;
    NEW_JERSEY) echo "NJ";;
    NEW_MEXICO) echo "NM";;
    NEW_YORK) echo "NY";;
    NORTH_CAROLINA) echo "NC";;
    NORTH_DAKOTA) echo "ND";;
    OHIO) echo "OH";;
    OKLAHOMA) echo "OK";;
    OREGON) echo "OR";;
    PENNSYLVANIA) echo "PA";;
    RHODE_ISLAND) echo "RI";;
    SOUTH_CAROLINA) echo "SC";;
    SOUTH_DAKOTA) echo "SD";;
    TENNESSEE) echo "TN";;
    TEXAS) echo "TX";;
    UTAH) echo "UT";;
    VERMONT) echo "VT";;
    VIRGINIA) echo "VA";;
    WASHINGTON) echo "WA";;
    WEST_VIRGINIA) echo "WV";;
    WISCONSIN) echo "WI";;
    WYOMING) echo "WY";;
    *) echo "$state_full"; exit 1;;
esac
