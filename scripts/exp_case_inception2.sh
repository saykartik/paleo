#! /bin/sh

NET_FILE=nets/inception_v32.json
OUT_FILE=results/case_inception2

PPP_COMP=0.62
PPP_COMM=0.72

echo "Inception v32 experiment\n$(date)\n" > $OUT_FILE

# Summary, too long.
# ./paleo.sh summary $NET_FILE

./paleo.sh simulate $NET_FILE \
    --batch_size=64 \
    --network_name=ethernet\
    --device_name=K40 \
    --num_workers=1\
    --ppp_comp=$PPP_COMP \
    --ppp_comm=$PPP_COMM \
    --scaling=strong >> $OUT_FILE



