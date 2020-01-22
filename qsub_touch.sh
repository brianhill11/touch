#!/bin/bash

source $HOME/.bashrc
cd $HOME/touch
/u/systems/UGE8.6.4/bin/lx-amd64/qsub -cwd -V -N touch_scratch -l h_data=2G,highp,time=12:00:00 -M $USER run_touch.sh
