echo -e '\e[45mJake cislo by v binarni soustave opdovidalo tomuto RegExpu:\e[0m'
echo -e '\e[35m(01*(10)*[01][10]*){2,}\e[0m'
echo
echo -e '\e[0;33ma\e[0m'") 111"
echo -e '\e[0;33mb\e[0m'") 234"
read answer
if [[ $answer == "a" ]]; then 
	exp=$( cat Exp )
	exp=$(( $exp + 2 ))
	echo $exp > Exp
	echo Skvele, ziskal jsi 2 body zkusenosti!
else
	echo Bohuzel to bylo spatne. Staci odpovedet jedno z tech zlutych pismenek. 
fi
