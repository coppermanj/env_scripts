CONDA_BASE=$(conda info --base)
source $CONDA_BASE/etc/profile.d/conda.sh
conda env create --file ilastik_env_packages.txt
bash
conda activate ilastik_env
conda install -c anaconda ipykernel
python -m ipykernel install --user --name=ilastik_env