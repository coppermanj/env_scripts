#!/bin/bash
echo "enter install path"
read install_path
mkdir $install_path
cp Mambaforge-Linux-x86_64.sh $install_path
cd $install_path
bash Mambaforge-Linux-x86_64.sh -b -p ${install_path}/mambaforge
${install_path}/mambaforge/bin/mamba init bash
bash
mamba update -n base mamba -y
mamba install jupyterlab -y
mamba install notebook -y
conda update -n base conda
conda install -n base conda-libmamba-solver
conda config --set solver libmamba
conda install -c anaconda ipykernel

