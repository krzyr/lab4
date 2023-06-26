case $1 in
	--date)
		echo $(date)
    shift
	;;
	--logs)
		for ((i=1; i<=100; i++)); do
            echo "Nazwa pliku: log$i.txt" > log$i.txt
            echo "Skrypt: main.sh" >> log$i.txt
            echo "Data: $(date)" >> log$i.txt
        done 
	shift
	;;
	*)
        echo "Zly parametr"
    shift
	;;
esac