#!/bin/sh

#SBATCH --partition=gpus          # default "univ2", if not specified

#SBATCH --time=4-00:00:00       # run time in days-hh:mm:ss

#SBATCH --nodes=1                     # require 2 nodes

#SBATCH --ntasks-per-node=36    # cpus per node (by default, "ntasks"="cpus")

#SBATCH --mem=49152                # RAM per node (MB0)

#SBATCH --error=job.%J.err

#SBATCH --output=job.%J.out

python train.py --cfg cfg/prune_0.8_keep_0.1_8_shortcut_yolov4_dpu.cfg --data data/coco.data --weights pruning/converted.weights --batch-size 24 --epochs 75
