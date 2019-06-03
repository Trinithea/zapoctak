echo -e '\e[46mODPOCIN SI TROCHU, HRDINO\e[0m'
echo -e '\e[36mMatematika ni informatika neni vsechno. Hodi se vedet i neco o zbytku naseho sveta.\e[0m'
echo -e '\e[36mTvym ukolem je spravne odpovidat, jestli je vyrok pravdivy (\e[0m''\e[33mp\e[0m''\e[36m) nebo ne (\e[0m''\e[33ml\e[0m''\e[36m)\e[0m'
echo -e '\e[36mZa kazdou spravnou odpoved ziskas 1 exp\e[0m'
echo -e '\e[36mTak jdeme na to: \e[0m'
exp=0
echo
echo Prumerna osoba za svuj zivot stravi cekanim na zelenou 2 roky.
read answer
if [[ $answer == "p" ]]; then 
	echo Bohuzel. Podle vseho se cekanim stravi jen pul roku.
elif [[ $answer == "l" ]]; then
	echo Spravne! Cekanim na zelenou stravis jen 6 mesicu.
	exp=$(( $exp + 1 ))
else
	echo Musis zadavat jen p nebo l.
fi
echo
echo Je vice moznych iteraci sachu nez atomu v nam znamem vesmiru.
read answer
if [[ $answer == "p" ]]; then
        echo Ano, je videt ze jsi matfyzak!
	exp=$(( $exp + 1 ))
elif [[ $answer == "l" ]]; then
	echo "Je mi lito, opak (tedy puvodni tvrzeni) je pravdou"
else
	echo Jejda, nauc se to uz konecne pouzivat.
fi
echo 
echo Coca-Cola by byla zelena, kdyby se do ni nepridavalo barvivo.
read answer
if [[ $answer == "p" ]]; then
        echo Divny co, ale podle nekterych zdroju to tak skutecne je.
	exp=$(( $exp + 1 ))
elif [[ $answer == "l" ]]; then
        echo Bohuzel, ale chapu tve zmateni. Mne se to zda taky dost divny.
else
	echo Jako hazet hrach na zed...
fi
echo
echo Prumerny clovek za svuj zivot sice chodi celkem casto, ale celkova ujita draha nestaci na obejiti cele Zeme.
read answer
if [[ $answer == "p" ]]; then
        echo Bohuzel. Nachodis toho tolik, ze bys Zemi obesel dokonce trikrat.
elif [[ $answer == "l" ]]; then
        echo Mas pravdu. Nachodis toho tolik, ze bys Zemi obesel dokonce trikrat.
	exp=$(( $exp + 1 ))
fi
if [[ $exp == 0 ]]; then
	echo Vyborne. Ziskal jsi 0 expu.
elif [[ $exp == 1 ]]; then
	echo Vyborne. Ziskal jsi 1 exp.
else
	echo -e '\e[36mVyborne. Ziskal jsi \e[0m'$exp'\e[36m expy.\e[0m'
fi
echo -e '\e[36mTo by stacilo k real world, zpatky do prace\e[0m'
exp2=$( cat Exp )
exp=$(( $exp2 + $exp ))
echo $exp > Exp


