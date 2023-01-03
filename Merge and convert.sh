for i in `\ls *.ts | sort -V`; do echo "file '$i'"; done >> mylist.txt;

ffmpeg -f concat -safe "0" -i mylist.txt -c copy merge.ts

ffmpeg -i merge.ts -map 0 -c copy output.mp4

#source: https://stackoverflow.com/questions/22188332/download-content-video-from-video-stream-with-a-path-of-ts-or-m3u8-file-throug
