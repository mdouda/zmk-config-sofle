#!/bin/bash
if [[ -f sofle_right-nice_nano_v2-zmk.uf2 ]]
then
    mv sofle_right-nice_nano_v2-zmk.uf2 sofle_right-nice_nano_v2-zmk.uf2.previous
fi
if [[ -f sofle_left-nice_nano_v2-zmk.uf2 ]]
then
    mv sofle_left-nice_nano_v2-zmk.uf2 sofle_left-nice_nano_v2-zmk.uf2.previous
fi
for CONTAINER in `docker ps | grep zmk-build | cut -d" " -f1`
do 
    TMPDIR=`docker exec $CONTAINER ls /tmp | grep tmp`
    TMPFILE=`docker exec $CONTAINER ls /tmp/$TMPDIR/artifacts`
    docker cp $CONTAINER:/tmp/$TMPDIR/artifacts/$TMPFILE .
done