#!/bin/sh

#SBATCH --partition=gpus          # default "univ2", if not specified

#SBATCH --time=40-00:00:00       # run time in days-hh:mm:ss

#SBATCH --nodes=1                     # require 2 nodes

#SBATCH --ntasks-per-node=36    # cpus per node (by default, "ntasks"="cpus")

#SBATCH --mem=49152                # RAM per node (MB0)

#SBATCH --error=job.%J.err

#SBATCH --output=job.%J.out

python train.py --cfg cfg/yolov4_dpu.cfg --data data/coco.data --weights weights/yolov4_dpu.weights --batch-size 16 --epochs 400 -sr --s 0.001 --prune 1
