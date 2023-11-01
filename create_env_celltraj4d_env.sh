cp /home/groups/ZuckermanLab/copperma/cell/celltraj/environment3d.yml ./
CONDA_BASE=$(conda info --base)
source $CONDA_BASE/etc/profile.d/conda.sh
conda env create --file environment3d.yml
