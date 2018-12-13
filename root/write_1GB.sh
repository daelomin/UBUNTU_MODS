FS=`df -h .|grep /| awk '{print $6}'` 
LOG=/root/HDD_Write_tests.txt
TMPLOG=/tmp/log_1
MEDIAS2TEST=`df -h| grep -E "(media|mnt)"|awk '{print $6}'` 

for media in $MEDIAS2TEST; do
	NOW=` date -u` 
	cd $media
	echo "Processing $media..."
	dd if=/dev/zero of=file_1GB.bin count=1024 bs=1048576 &> $TMPLOG
	echo "$NOW on $media : write test 1GB:" >> $LOG
	cat $TMPLOG >> $LOG
	echo ""  >> $LOG
	rm -f file_1GB.bin
done
		
