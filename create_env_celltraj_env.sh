cp /home/groups/ZuckermanLab/copperma/cell/celltraj/environment.yml ./
CONDA_BASE=$(conda info --base)
source $CONDA_BASE/etc/profile.d/conda.sh
conda env create --file environment.yml
bash
conda activate celltraj_env
conda remove -y numba
conda install -y numba
pip install umap-learn
pip uninstall btrack
pip install btrack==0.4.2
conda deactivate
