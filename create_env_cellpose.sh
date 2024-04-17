#!/bin/bash
CONDA_BASE=$(conda info --base)
source $CONDA_BASE/etc/profile.d/conda.sh
conda create --name cellpose python=3.8 -y
conda activate cellpose
#python -m pip install cellpose --upgrade
python -m pip install cellpose==2.2.2 --upgrade
pip uninstall torch -y
conda install pytorch==1.12.0 cudatoolkit=11.3 -c pytorch -y
conda env update --file ~/env_scripts/environment_cellpose.yml
conda install -c anaconda ipykernel
python -m ipykernel install --user --name=cellpose
pip install cellpose[gui]
