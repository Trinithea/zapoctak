echo -e '\e[43m ZADANI: \e[0m'
echo -e '\e[33mFibonacciho slova definujeme nasledujicim zpusobem.\e[0m'
echo -e '\e[33mSlovo S0=0, slovo S1=1, dale pro n≥2 definujeme slovo Sn=Sn−1Sn−2 (tj. jde o konkatenaci slov Sn−1 a Sn−2). \e[0m'
echo -e '\e[33mNapis skript, ktery pro hodnotu n predanou v parametru vypise slovo Sn.\e[0m'
echo -e '\e[33mTreba pro n=3 vypada vystup takto: 101\e[0m' 
echo
echo "Otevri si novy terminal a napis dany skript. Cestu k nemu (i se jmenem souboru) pak zapis sem: "
read path

$path 0 > p0
$path 5 > p1
$path 8 > p2
$path 12 > p3
exp=0

if [[ $( cat p0 ) == 0 ]]; then
	exp=$(( $exp + 2 ))
fi
if [[ $( cat p1 ) == 10110101 ]]; then
	exp=$(( $exp + 2 ))
fi
if [[ $( cat p2 ) == 1011010110110101101011011010110110 ]]; then
	exp=$(( $exp + 2 ))
fi
if [[ $( cat p3 ) == 10110101101101011010110110101101101011010110110101101011011010110110101101011011010110110101101011011010110101101101011011010110101101101011010110110101101101011010110110101101101011010110110101101011011010110110101101011011010110110 ]]; then
	exp=$(( $exp + 2 ))
fi
if [ $exp -lt 4 -a $exp -ne 0 ]; then
	echo Za ulohu mas $exp expy z 8.
else
	echo Za ulohu mas $exp expu z 8.
fi

exp2=$( cat Exp )
exp=$(( $exp2 + $exp ))
echo $exp > Exp

rm p0 p1 p2 p3
