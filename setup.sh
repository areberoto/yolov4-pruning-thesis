#!/bin/sh

#SBATCH --partition=gpus          # default "univ2", if not specified

#SBATCH --time=0-00:05:00       # run time in days-hh:mm:ss

#SBATCH --nodes=1                     # require 2 nodes

#SBATCH --ntasks-per-node=1    # cpus per node (by default, "ntasks"="cpus")

#SBATCH --mem=1000                # RAM per node (MB0)

#SBATCH --error=job.%J.err

#SBATCH --output=job.%J.out

python -m ensurepip --upgrade
python -m pip install --upgrade pip setuptools wheel
pip3 install -r requirements.txt
