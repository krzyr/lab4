case $1 in
	--date | -d)
		echo $(date)
    shift
	;;
	--init | -i)
		git clone https://github.com/krzyr/lab4
    shift
	;;
	--help | -h)
		echo "--help żeby wyświetlić help albo -h"
		echo "--logs żeby utworzyć 100 plików albo -l"
		echo "--logs 30 żeby utworzyć 30 plików albo -l 30"
		echo "--date żeby wyświetlić datę albo -d"
		echo "--error żeby wyświetlić error albo -e"
		echo "--init żeby sklonować całe repozytorium do bieżącego katalogu albo -i"
		
    shift
	;;
	--logs | -l)
	if [ $# -eq 2 ]
	then
        for ((i=1; i<=$2; i++)); do
			mkdir log$i
            echo "Nazwa pliku: log$i.txt" > log$i/log$i.txt
            echo "Skrypt: main[[.sh" >> log$i/log$i.txt
            echo "Data: $(date)" >> log$i/log$i.txt
        done 
    else
        for ((i=1; i<=100; i++)); do
			mkdir log$i
            echo "Nazwa pliku: log$i.txt" > log$i/log$i.txt
            echo "Skrypt: main[[.sh" >> log$i/log$i.txt
            echo "Data: $(date)" >> log$i/log$i.txt
        done 
	fi
	shift
	;;
	--error | -e)
	if [ $# -eq 2 ]
	then
        for ((i=1; i<=$2; i++)); do
			mkdir error$i
            echo "Nazwa pliku: error$i.txt" > error$i/error$i.txt
            echo "Skrypt: main[[.sh" >> error$i/error$i.txt
            echo "Data: $(date)" >> error$i/error$i.txt
        done 
    else
        for ((i=1; i<=100; i++)); do
			mkdir error$i
            echo "Nazwa pliku: error$i.txt" > error$i/error$i.txt
            echo "Skrypt: main[[.sh" >> error$i/error$i.txt
            echo "Data: $(date)" >> error$i/error$i.txt
        done 
	fi
	shift
	;;
	*)
        echo "Zly parametr"
    shift
	;;
esac


