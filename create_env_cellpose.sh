#!/bin/bash
CONDA_BASE=$(conda info --base)
source $CONDA_BASE/etc/profile.d/conda.sh
conda create --name cellpose python=3.8 -y
conda activate cellpose
#python -m pip install cellpose --upgrade
python -m pip install cellpose==2.2.2 --upgrade
#python -m pip install cellpose==2.3.2
pip uninstall torch -y
conda install pytorch=1.12.0 cudatoolkit=11.3 mkl=2024.0 -c pytorch -y
conda env update --file environment_cellpose.yml
conda install -c anaconda ipykernel
python -m ipykernel install --user --name=cellpose
pip install cellpose[gui]
pip uninstall h5py
pip install --no-cache-dir h5py
