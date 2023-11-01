#!/bin/bash

read envname #get name for requested environment, build conda and environment if not available
# Check if conda is in the system path
env_scripts_path=/home/groups/CEDAR/copperma/env_scripts
if ! command -v conda &> /dev/null; then
    echo "conda not found, installing using $env_scripts_path/build_conda.sh"
    if [ -f "$env_scripts_path/build_conda.sh" ];
    then
        sh $env_scripts_path/build_conda.sh
        bash
    else
        echo "Script to install conda $env_scripts_path/build_conda.sh not found"
        exit 1
    fi
fi
# Check if a specific conda environment exists
if ! conda info --envs | grep -q "$envname"; then
    echo "The desired_environment conda environment is not found."
    if [ -f "$env_scripts_path/create_env_${envname}.sh" ]; 
    then
        sh $env_scripts_path/create_env_${envname}.sh
    else
        echo "Script to make environment $env_scripts_path/create_env_${envname}.sh not found"
        exit 1
    fi
fi

# Execute commands when conda and the desired environment are available
bash
echo "$envname ready"

