#!/bin/sh

csvfile="data.csv"
GRAPH_WIDTH=50


markprint() {
  local i=0
  while [ $i -lt $1 ]
  do
    echo -n "*"
    i=$(expr $i + 1)
  done
}

max=$(awk -F, '{print $3}' "$csvfile" | sort -nr | head -n 1)

echo "max : $max"
if [ max -eq 0 ]; then
  max=1
fi

while IFS=, read id name score
do
  markprint $(expr $GRAPH_WIDTH \* $score / $max)
  echo " [$name]"
done < $csvfile
  
