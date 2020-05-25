#!/bin/sh

DATADIR="../dataset/anidata"
if [ $1 == "train" ]; then
    python3 train.py  --experiment_name  "abc" \
                    --dataroot $DATADIR --use_cropped_img \
                    --atts "blonde_hair" "purple_hair" "red_hair" "green_hair" "blue_eyes" \
                            "pink_eyes" "green_eyes" "pink_eyes" \
                           "long_hair" "twintails" "blush" "smile" "open_mouth" "hat" "ribbon" "glasses" \
                    --epoch 300 --n_sample 400 \
                    --sample_freq 1500 --gpu 2
fi

if [ $1 == "train128" ]; then
    python3 train.py  --experiment_name  "228" \
                    --dataroot "../dataset/celeba" \
                    --atts "Eyeglasses" "Chubby" "Bangs" "Big_Lips" "Big_Nose" "Blond_Hair"\
                    --epoch 10
fi

if [ $1 == "test" ]; then
    python3 test.py  --experiment_name  "ani_exp" \
                    --dataroot $DATADIR \
                    --img 00001 00002 00003 00004 00005 00006 00007 \
                    --test_atts  "purple_hair" "blue_eyes"  \
                           "long_hair" "twintails" "blush" "smile" "open_mouth" "hat" "ribbon" "glasses" 
fi

