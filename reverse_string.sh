argc=$#
argv="$@"

for (( j=argc-1; j>=0; j-- )); do
    currArg=${argv[j]}
    #echo "currArg:"$currArg

#for arg; do
#    foo=$arg
    for (( i=${#currArg}; i>=0; i-- )); do
        printf "${currArg:$i:1}"
    done

    #echo -n "$j"
    if [ "$j" -ne "0" ]; then
        printf " "
    fi
#done
done

printf "\n" 