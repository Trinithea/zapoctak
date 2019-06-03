echo -e '\e[45m Jaky cely text namatchuje nasledujici RegExp: \e[0m'
echo -e '\e[35m[^&%^][[:upper:]][a-z]*\.[a-z]{1,4} \e[0m'
echo
echo -e '\e[0;33ma\e[0m'") (#AH.sf"
echo -e '\e[0;33mb\e[0m'") *Jdddb.dsjbcjs"
echo -e '\e[0;33mc\e[0m'") &Ssnj.s"
echo -e '\e[0;33md\e[0m'') $n.n'
echo -e '\e[0;33me\e[0m'") AH.kkkk"
read answer
if [[ $answer == "e" ]]; then
        exp=$( cat Exp )
        exp=$(( $exp + 3 ))
        echo $exp > Exp
        echo Ziskal jsi 3 body zkusenosti!
else
        echo Bohuzel to bylo spatne. Staci odpovedet jedno ze zlutych pismenek.
fi

