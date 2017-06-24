for i in *.mp4;  
  do name=`echo $i | cut -d'.' -f1`;
  echo $name;
  ffmpeg -ss 00:00:05 -i "$i" -frames:v 1 "$name.png"
  ffmpeg -i "$i" "$name.webm";
done  
