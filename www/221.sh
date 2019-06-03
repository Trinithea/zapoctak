echo -e '\e[43m                      KONEC HRY                                  \e[0m'
echo -e '\e[0;33mHura nasel jsi vychod.\e[0m'
if [ $( cat Exp ) == 0 -o $( cat Exp ) -ge 5 ]; then
	echo -e '\e[33mCelkem jsi nasbiral\e[0m' $(cat Exp) '\e[33mbodu zkusenosti\e[0m' 
elif [ $( cat Exp ) == 1 ]; then
	echo -e '\e[33mCelkem jsi nasbiral\e[0m' $(cat Exp) '\e[33mbod zkusenosti\e[0m'
else
	echo -e '\e[33mCelkem jsi nasbiral\e[0m' $(cat Exp) '\e[33mbody zkusenosti\e[0m'
fi
echo -e '\e[0;33mSvoje vysledky a jak si vedli ostatni naleznes na techto strankach: \e[0m'
echo -e '\e[45m		     www.trinithea.hopto.org     \e[0m'
