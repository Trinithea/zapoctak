echo -e '\e[45mCo udela ls * v prazdnem adresari? A co v adresari jen se skrytymi soubory?\e[0m'
echo
echo -e '\e[33ma\e[0m'") nic; zobrazi vsechny skryte soubory"
echo -e '\e[33mb\e[0m'") vypise prazdnou radku; zobrazi vsechny skryte soubory"
echo -e '\e[33mc\e[0m'") nic; nic"
echo -e '\e[33md\e[0m'") \"*\" neni soubor; zobrazi vsechny skryte soubory"
echo -e '\e[33me\e[0m'") \"*\" neni soubor; \"*\" neni soubor"
read answer
if [[ $answer == "e" ]]; then
        exp=$( cat Exp )
        exp=$(( $exp + 2 ))
        echo $exp > Exp
        echo Ziskal jsi 2 body zkusenosti!
else
        echo Bohuzel to bylo spatne. Zkus odpovedet nejake z tech zlutych pismenek.
fi

