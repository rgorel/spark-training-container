#! /bin/sh

if [ ! -d datasets ]; then
  [ ! -f datasets.zip ] && wget https://s3.amazonaws.com/elephantscale-public/data/datasets.zip
  unzip datasets.zip
  cd  datasets/text/twinkle/ && ./create-data-files.sh && cd -
fi

ln -fs $(pwd)/datasets /data
/spark/sbin/start-all.sh
tail -f /dev/null
