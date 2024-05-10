CONDA_BASE=$(conda info --base)
source $CONDA_BASE/etc/profile.d/conda.sh
conda env create --file environment_celltraj_env.yml
bash
conda activate celltraj_env
conda remove -y numba
conda install -y numba
pip install umap-learn
pip uninstall btrack
pip install btrack==0.4.2
#conda deactivate
conda install -c anaconda ipykernel
python -m ipykernel install --user --name=celltraj_env
