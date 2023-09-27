#! /bin/sh 
for f in "$1"/*; do
  if [ -f "$f" ]; then
    SIZE="$(du -sh "${f}" | cut -f1)"

    # Using grep because cut was not working for me.
    WORD_COUNT="$(wc -w ${f} | grep -oE '[0-9]+ | head -1')"
    echo "Processing $f file..."
    echo "File size: $SIZE"
    echo "Word count: $WORD_COUNT"
  fi
done

