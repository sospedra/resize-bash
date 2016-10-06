#!/bin/bash

# manifest sizes
sizes=(72 96 128 144 152 192 384 512)

for i in "${sizes[@]}"; do
  format=${i}x$i
  convert -resize $format $1 icon-$format.png
done
