opt=0
while [ $opt -le 7 ]
do
echo "1.All ordinary files \n2.All Directory files \n3.All special files \n4.All files readable to ugo \n5.All files writable to ugo \n6.All files executable to ugo \n7.All files with rwx to owner \n8.exit"
echo "\nEnter your Option: "
read opt
case $opt in
1)
echo "\n\n\n-----ALL ORDINARY FILES-----"
for f in *
do
if [ -f $f ]
then
echo $f
fi
done
;;
2)
echo "\n\n\n-----ALL DIRECTORY FILES-----"
for f in *
do
if [ -d $f ]
then
echo $f
fi
done
;;
3)
echo "\n\n\n-----ALL SPECIAL FILES-----"
for f in *
do
if [ ! -d $f -a ! -f $f ]
then
echo $f
fi
done
;;
4)
echo "\n\n\n-----ALL FILES READABLE TO UGO-----"
for f in *
do
if [ -f $f ]
then
u=`ls -l $f | cut -c 2-2`
g=`ls -l $f | cut -c 5-5`
o=`ls -l $f | cut -c 8-8`
if [ $u = "r" -a $g = "r" -a $o = "r" ]
then 
echo $f
fi
fi
done
;;

5)
echo "\n\n\n-----ALL FILES WRITABLE TO UGO-----"
for f in *
do
if [ -f $f ] 
then
u=`ls -l $f | cut -c 3-3`
g=`ls -l $f | cut -c 6-6`
o=`ls -l $f | cut -c 9-9`
if [ $u = "w" -a $g = "w" -a $o = "w" ]
then 
echo $f
fi
fi
done
;;

6)
echo "\n\n\n-----ALL FILES EXECUTABLE TO UGO-----"
for f in *
do
if [ -f $f ] 
then
u=`ls -l $f | cut -c 4-4`
g=`ls -l $f | cut -c 7-7`
o=`ls -l $f | cut -c 10-10`
if [ $u = "x" -a $g = "x" -a $o = "x" ]
then 
echo $f
fi
fi
done
;;

7)
echo "\n\n\n-----ALL FILES RWX TO OWNER-----"
for f in *
do
if [ -f $f ]
then
rwx=` ls -l $f | cut -c 2-4`
if [ $rwx = "rwx" ]
then
  echo $f
fi
fi
 done;;
8) exit 0
;;
esac
echo "\nPress enter to continue"
read x
done
