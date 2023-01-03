for i in `\ls *.ts | sort -V`; do echo "file '$i'"; done >> mylist.txt;

ffmpeg -f concat -safe "0" -i mylist.txt -c copy merge.ts

ffmpeg -i merge.ts -map 0 -c copy output.mp4
