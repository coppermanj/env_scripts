#!/bin/bash
CONDA_BASE=$(conda info --base)
source $CONDA_BASE/etc/profile.d/conda.sh
conda create --name cellpose python=3.8 -y
conda activate cellpose
python -m pip install cellpose==2.3.2
pip uninstall torch -y
conda install pytorch==1.12.0 cudatoolkit=11.3 -c pytorch -y
conda env update --file /home/groups/CEDAR/copperma/env_scripts/environment_cellpose.yml
