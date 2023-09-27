#!/bin/bash

ROOT_DIR=`pwd`
DC_ROOT=${ROOT_DIR}/101_DC
ICC_ROOT=${ROOT_DIR}/201_ICC2
REDHAWK_ROOT=${ROOT_DIR}/300_redhawk
MAP_DIR=${ROOT_DIR}/400_ML/1_maps
PDK_DIR=/home/hot_data/DB/snps14
ITF_FILENAME=${PDK_DIR}/tech/star_rc/nominal/saed14nm_1p9m_nominal.itf
LIST_DESIGN=("tv80")
LIST_UF=("0.60")
#LIST_DESIGN=("tv80" "systemcaes" "des3_perf" "tate_pairing_151")
#LIST_DESIGN=("xge_mac" "fft_128" "vga_lcd" "fft_64" "gfx" "reed_solomon_decoder" "sha3_high_perf" "ac97_ctrl" "sd_card_controller" "pci" "mem_ctrl" "usb_funct" "wb_dma")
#LIST_DESIGN=("xge_mac" "vga_lcd" "fft_64" "reed_solomon_decoder" "sha3_high_perf" "ac97_ctrl" "sd_card_controller" "pci" "mem_ctrl" "usb_funct" "wb_dma") #remove gfx, fft128
#LIST_UF=("0.60" "0.65" "0.70" "0.75")

export ROOT_DIR
export DC_ROOT
export ICC_ROOT
export REDHAWK_ROOT
export MAP_DIR
export PDK_DIR
#export DESIGN
#export UF
export ITF_FILENAME

for UF in "${LIST_UF[@]}"; do
    for DESIGN in "${LIST_DESIGN[@]}"; do
        export UF
        export DESIGN
        MAX_UTIL=0.90
        export VER_NAME=${DESIGN}_${UF}_${MAX_UTIL};
        export POSTFIX="pitch_6.0"

        echo "Design: $DESIGN, Core util: $UF"
        echo "On going..."
        python ../src/app_exp.py
        result=$(tail -n 1 output.txt)
        
        while [[ "$result" != "COMPLETE" ]]; do
            echo "On going..."
            sleep 10
            result=$(tail -n 1 output.txt)
        done

        echo "Calculation for DESIGN $DESIGN is complete."
        rm output.txt
        
    done
done


