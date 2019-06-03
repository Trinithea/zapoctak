echo -e '\e[43m ZADANI: \e[0m'
echo -e '\e[33mNa standardnim vstupu dostanes matici cisel.\e[0m'
echo -e '\e[33mVystupem bude matice obohacena o pravy sloupec a dolni  radek.\e[0m'
echo -e '\e[33mVe sloupci budou prumerne hodnoty v prislusnem radku.\e[0m'
echo -e '\e[33mV radku budou prumerne hodnoty v prisusnem sloupci.\e[0m'
echo -e '\e[33mPrumerne hodnoty jsou zaokrouhlene na cele cislo smerem dolu\e[0m'
echo -e '\e[33mPriklad: \e[0m'
echo -e '\e[33m 1 2 3 			1 2 3 2\e[0m'
echo -e '\e[33m 4 5 6	     ----->	4 5 6 5\e[0m'
echo -e '\e[33m 7 8 9	    		7 8 9 8\e[0m'
echo -e '\e[33m 			4 5 6\e[0m'
echo -e '\e[33mSkript napis v awk\e[0m'
#TODO doplnit o to, ze by to melo bejt awk, envim, jestli pak co je standardni vstup
echo Napis cestu, ke svemu skriptu:
read path
cat M1I | awk -f $path > M1
cat M2I | awk -f $path > M2
cat M3I | awk -f $path > M3
exp=0
if [[ $( cat M1 ) == $( cat M1O ) ]]; then
	exp=$(( $exp + 2 ))
#	echo ano
fi
if [[ $( cat M2 ) == $( cat M2O ) ]]; then
	exp=$(( $exp + 2 ))
#	echo ano
fi
if [[ $( cat M3 ) == $( cat M3O ) ]]; then
	exp=$(( $exp + 2 ))
#	echo ano
fi
if [ $exp -le 4 -a $exp -ne 0]; then
	echo Vyborne! Dostavas $exp expy ze sesti.
else
	echo Vyborne! Dostavas $exp expu ze sesti.	
fi
exp2=$( cat Exp )
exp=$(( $exp2 + $exp ))
echo $exp > Exp

rm M1 M2 M3
