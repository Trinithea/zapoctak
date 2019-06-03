#reseni: ^([A-Za-z][A-Za-z][A-Za-z]){1,}$
echo -e '\e[43m ZADANI: \e[0m'
echo -e '\e[33mNapis RegExp, kteremu odpovidaji vsechny retezce, jejichz pocet znaku (mala, velka pismena) je delitelny tremi:\e[0m'
read regexp
cat test241 | grep -Ee  "$regexp" > po
if [[ $( cat po ) == $( cat test241O ) ]]; then
	exp=2
	echo Mas to spravne. Ziskavas cele 2 body!!!
else 
	exp=0
	echo Bohuzel. Zkus zadat svuj RegExp bez krajnich lomitek.
fi
exp2=$( cat Exp )
exp=$(( $exp2 + $exp ))
echo $exp > Exp
rm po
