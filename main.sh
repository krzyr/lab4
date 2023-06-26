case $1 in
	--date)
		echo $(date)
    shift
	;;
	--help)
		echo "--help żeby wyświetlić help"
		echo "--logs żeby utworzyć 100 plików"
		echo "--logs 30 żeby utworzyć 30 plików"
		echo "--date żeby wyświetlić datę"
    shift
	;;
	--logs)
	if [ $# -eq 2 ]
	then
        for ((i=1; i<=$2; i++)); do
            echo "Nazwa pliku: log$i.txt" > log$i.txt
            echo "Skrypt: main[[.sh" >> log$i.txt
            echo "Data: $(date)" >> log$i.txt
        done 
    else
        for ((i=1; i<=100; i++)); do
            echo "Nazwa pliku: log$i.txt" > log$i.txt
            echo "Skrypt: main[[.sh" >> log$i.txt
            echo "Data: $(date)" >> log$i.txt
        done 
	fi
	shift
	;;
	*)
        echo "Zly parametr"
    shift
	;;
esac


