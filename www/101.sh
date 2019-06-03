echo -e '\e[43m ZADANI: \e[0m'
echo -e '\e[33mV teto mistnosti jsou slova zakodovana v Caesarove sifre.\e[0m'
echo -e '\e[33mCaesarova sifra funguje tak, ze kazdy znak abecedy posouvame o dany pocet znaku.\e[0m'
echo -e '\e[33mNapi skript, ktery nejen desifruje (option -d), ale i zasifruje (-e) dany text. Jako druhy parametr je pocet znaku, o ktery se anglicka abeceda posouva.\e[0m'
echo -e '\e[33mSkript bude cist text ze standardniho vstupu. Vystup je zapsan na standardni vystup.\e[0m'
echo -e '\e[33mMusi zustat zachovano, jestli jde o male nebo velke pismeno.\e[0m'
echo -e '\e[33mPriklad: echo Ahoj | jmenoskriptu -e 3 by melo vypsat Dkrm.\e[0m'
echo
echo "Az budes mit skript hotovy, napis sem cestu k nemu (vcetne jmena skriptu): "

read path

echo Ahoj | $path -e 3 > p0
echo cUchOmechNENIdYNIL | $path -d 8 > p1
echo Zkusme Mezery | $path -d 5 > p2
echo A black hole is a region of spacetime exhibiting gravitational acceleration so strong that nothing no particles or even electromagnetic radiation such as light can escape from it | $path -e 5 > p3
echo 'VyDrZi! Skript5a# i 12&% znaku?"' | $path -e 2 > p4

exp=0
if [[ $( cat p0 ) == "Dkrm" ]]; then
	exp=$(( $exp + 2 ))
fi
if [[ $( cat p1 ) == "uMuzGewuzFWFAvQFAD" ]]; then
	exp=$(( $exp + 2 ))
fi
if [[ $( cat p2 ) == "Ufpnhz Hzuzmt" ]]; then
	exp=$(( $exp + 2 ))
fi
if [[ $( cat p3 ) == "F gqfhp mtqj nx f wjlnts tk xufhjynrj jcmngnynsl lwfanyfyntsfq fhhjqjwfynts xt xywtsl ymfy stymnsl st ufwynhqjx tw jajs jqjhywtrflsjynh wfinfynts xzhm fx qnlmy hfs jxhfuj kwtr ny" ]]; then
	exp=$(( $exp + 2 ))
fi
if [[ $( cat p4 ) == 'XaFtBk! Umtkrv5c# k 12&% bpcmw?"' ]]; then
	exp=$(( $exp + 2 )) 
fi

if [ $exp -lt 4 -a $exp -ne 0 ]; then
	echo Splnil jsi $(( $exp/ 2)) z 5 testu. Dostavas $exp expy.
else
        echo Splnil jsi $(( $exp / 2 )) z 5 testu. Dostavas $exp expu.
fi
echo Ted muzes rozlustit napis na zdi. Poradim ti, ze nejcasteji se pouziva posun o 3.
echo -e '\e[35mY VBUX QDMGHV VLOX\e[0m'
exp2=$( cat Exp )
exp=$(( $exp2 + $exp ))
echo $exp > Exp

rm p0 p1 p2 p3 p4

