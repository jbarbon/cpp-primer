#!/bin/bash



echo "###########################################"

echo "So you want an easy way to run a .C file hum? Choose the file below: "
#########################################################################################################################
#Creates a vector MYLIST that contains every .C file in the current directory
for entries in *.C 
do
    ((NFILES++))
    MYLIST[$NFILES]=$entries
done

#########################################################################################################################
#echo  "There are " $NFILES " files:"
#########################################################################################################################
#Outputs the files in MYLIST vector to be chosen
echo "###########################################"
for i in "${MYLIST[@]}";
do
    ((j++))
    echo "$j) " "$i"
done
echo "###########################################"
#########################################################################################################################

#########################################################################################################################
#Choice to be made
NTOREAD=0
while [ $NTOREAD -lt 1 -o $NTOREAD -gt $j ]
do
    read -p "Type a corresponding number ( between 1 and $j): " NTOREAD
done
#########################################################################################################################


echo "You chose the file: " ${MYLIST[NTOREAD]}
MYFILE=${MYLIST[NTOREAD]}


#changes all . to spaces and split word in boundaries into an array
PART=(${MYFILE//./ }) 

# mkdir ${PART[0]}-DIR && mv $1 ${PART[0]}-DIR  && cd ${PART[0]}-DIR

echo "##################################################"
echo  "Compiling the C program: $MYFILE"
echo  "The output is ${PART[0]}.exe "
echo  "Giving it permission and executing..."
echo "##################################################"
echo "############# OUTPUT OF THE PROGRAM ##############"
echo "##################################################"

#########################################################################################################################
#Compile, generate output and execute the .C code
g++ $MYFILE -o ${PART[0]}.exe
chmod a+x ${PART[0]}.exe
./${PART[0]}.exe
PROGOUT=$?

echo "##################################################"
#########################################################################################################################
if [ $PROGOUT -eq 0 ];
then
    echo "The program did run correctly (returned $PROGOUT). Congrats!!!"
    echo "##################################################"
else
    echo "The program has an error (return $PROGOUT). Check the code again!"
    echo "##################################################"

fi

cd ..