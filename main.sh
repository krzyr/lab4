case $1 in
	--date)
		echo $(date)
    shift
	;;
	*)
        echo "Zly parametr"
    shift
	;;
esac