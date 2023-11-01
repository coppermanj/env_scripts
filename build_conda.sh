#!/bin/bash
mkdir /mnt/scratch/tmp_py_env
cd /mnt/scratch/tmp_py_env
cp /home/groups/CEDAR/copperma/Mambaforge-Linux-x86_64.sh ./
bash Mambaforge-Linux-x86_64.sh -b -p /mnt/scratch/tmp_py_env/mambaforge
mamba init bash
mamba update -n base mamba -y
