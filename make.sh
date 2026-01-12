
if [ "$1" == "make" ]; then
	echo ">>>Start Time:" |tr -d "\n" >> tmp/buildtime
	date +"%Y%m%d_%H%M%S" |tr -d "\n" >> tmp/buildtime

	echo ""
	ls -l .config
	echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
	echo ">>>>    make -j$(nproc) V=s     <<<<"
	echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
	make -j$(nproc) V=s

	echo "     End Time:" |tr -d "\n" >> tmp/buildtime
	date +"%Y%m%d_%H%M%S" >> tmp/buildtime

	tail -n 10 tmp/buildtime

	exit 0

else
	echo ""
	echo "Example:  ./make.sh make"
	echo ""
fi
