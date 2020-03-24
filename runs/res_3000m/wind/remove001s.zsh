#!/bin/zsh
#
#
for f in *.001.001.data
do
#    print "$f"
    mv -- "$f" "${f%.001.001.data}.data"
done

for f in *.001.001.meta
do
    mv -- "$f" "${f%.001.001.meta}.meta"
done
