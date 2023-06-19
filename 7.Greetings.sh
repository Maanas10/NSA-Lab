if [ $# -gt 1 ]
then
 echo "Syntax Error."
exit 1
fi
if [ $# -eq 0 ]
then
h=$(date +"%H")
if [ $h -gt 6 -a $h -lt 12 ]
then
echo good morning
elif [ $h -ge 11 -a $h -lt 16 ]
then 
echo good afternoon
elif [ $h -ge eq 16 -a $h -lt 20 ]
then
echo good evening
else
echo good night
fi
fi
