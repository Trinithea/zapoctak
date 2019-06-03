echo 0 > Exp
curl "http://trinithea.hopto.org/M1I" > M1I
curl "http://trinithea.hopto.org/M1O" > M1O
curl "http://trinithea.hopto.org/M2I" > M2I
curl "http://trinithea.hopto.org/M2O" > M2O
curl "http://trinithea.hopto.org/M3I" > M3I
curl "http://trinithea.hopto.org/M3O" > M3O
curl "http://trinithea.hopto.org/test241" > test241
curl "http://trinithea.hopto.org/test241O" > test241O
curl "http://trinithea.hopto.org/bludiste.txt" > bludiste.txt
curl "http://trinithea.hopto.org/pravidla.sh" > pravidla.sh
chmod +x pravidla.sh
echo
echo -e '\e[45m LABYRINT UVODU DO UNIXU \e[0m';
echo
echo "Napis sve jmeno: "; read jmeno
echo
./pravidla.sh $jmeno
echo
echo -e Tak co, troufas si na'\e[0;33m obtiznejsi \e[0m'level nebo je'\e[0;33m zakladni\e[0m' plne dostacujici?
read answer
actX=0
actY=3

CojeNa(){
	i=$1
	j=$2
	awk -F '=' -v b=a$i$j '$1~b{ gsub(/"/, "",$2); print $2 } ' bludiste.txt 
}
Info(){
	echo
	echo -e '\e[35mVpravo se nachazi: \e[0m' 
	if [[ $(($2 - 1)) -ge 0 ]]; then 
		CojeNa $1 $(( $2 - 1 ))
	else 
		echo kraj bludiste
	fi	
	echo -e '\e[35mVlevo lezi: \e[0m'
	if [[ $(( $2 + 1 )) -le 4 ]]; then 
		CojeNa $1 $(( $2 + 1 ))
	else
		echo kraj bludiste
	fi
	echo -e '\e[35mVepredu je:\e[0m'
	if [[ $(( $1 + 1 )) -le 2 ]]; then
		CojeNa $(( $1 + 1 )) $2
	else
		echo kraj bludiste
	fi
	echo -e '\e[35mZa tebou je:\e[0m'
	if [[ $(( $1 - 1 )) -ge 0 ]]; then
		CojeNa $(( $1 - 1 )) $2
	else
		echo kraj bludiste
	fi
}
KamPujdes(){
kraj=F
echo -e '\e[0;33mKam pujdes?\e[0m' 
        read answer
        if [[ $answer == "doleva" ]]; then
		if [ $(( $actY + 1 )) -gt 4 ]; then
			echo ZA KRAJ BLUDISTE SE NESMI!
			kraj=T
		else
	       		actY=$(( $actY + 1 ))
		fi
        elif [[ $answer == "doprava" ]]; then
		if [ $(( $actY - 1 )) -lt 0 ]; then
			echo ZA KRAJ BLUDISTE SE NESMI!
			kraj=T
		else
			actY=$(( $actY - 1 ))
		fi
	elif [[ $answer == "dopredu" ]]; then
		if [ $(( $actX + 1 )) -gt 2 ]; then
			echo ZA KRAJ BLUDISTE SE NESMI!
			kraj=T
		else
			actX=$(( $actX + 1 )) 
		fi
	elif [[ $answer == "dozadu" ]]; then
		if [ $(( $actX - 1 )) -lt 0 ]; then
			echo ZA KRAJ BLUDISTE SE NESMI!
			kraj=T
		else
			actX=$(( $actX - 1 ))	
		fi
	else
		echo 'Zadavej jen slova "doleva", "doprava", "dopredu", "dozadu".'
        fi
	echo
	if [[ $kraj == "F" ]]; then
        	./$actX$actY$level.sh
	fi
}

StahniLevel(){
	for i in 0 1 2
	do 
		for j in 0 1 2 3 4
		do
			n=$i$j$1
			curl "http://trinithea.hopto.org/$n.sh" > "$n.sh"
			chmod +x $n.sh
		done
	done
}

if [[ $answer == "zakladni" ]]; then
	StahniLevel 1	
	level=1
elif [[ $answer == "obtiznejsi" ]]; then
	StahniLevel 2
	level=2
else
	echo 'Zadej slovo "zakladni" nebo "obtiznejsi".'
fi	

echo
echo Vstoupil jsi do bludiste.  
while [ $actX -ne 2 -o $actY -ne 2 ]; do
	Info $actX $actY
	KamPujdes
	if [ $actX -ne 2 -o $actY -ne 2 ]; then
	if [ $(cat Exp) -lt 4 -a $(cat Exp) -ne 0 ]; then
		echo -e '\e[33mCelkem mas \e[0m'$(cat Exp)'\e[33m expy.\e[0m'
	else
		echo -e '\e[33mCelkem mas \e[0m'$(cat Exp)'\e[33m expu.\e[0m'
	fi
	fi
done

echo "$jmeno		$(cat Exp)	$level" >> vysledky

echo "Aby se vysledky mohli nahrat na stranky, musis mit nainstalovany sshpass."
echo "Mas ho naistalovany (ano/ne)?"
read answer
if [[ $answer == "ne" ]]; then
sudo apt-get install sshpass
fi
sshpass -p 'kobliha' scp -P 31422 vysledky trinity@trinithea.hopto.org:www/
echo "Vsechny ulohy jsem brala ze stranek ruznych cvicicich. Jejich seznam naleznes na www.trinithea.hopto.org/zdroje."
