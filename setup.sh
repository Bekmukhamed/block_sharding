#!/bin/bash

mkdir -p simulation_logs logs_data
mkdir -p logs_data/interactive_plots logs_data/metadata logs_data/plots logs_data/summary

chmod +x execute_simulator.sh

#python_version=("python3 --version")

ANY_ALIAS_CMD='alias shard-eval='
ALIAS_CMD='alias shard-eval="python3.10 $PWD/cli/shard_eval.py"'

if grep -Fxq "$ALIAS_CMD" ~/.bash_aliases; then
    echo "Alias already exists. Skipping"
elif grep -Fq "$ANY_ALIAS_CMD" ~/.bash_aliases; then
    echo "Alias for shard-eval already exists, but has a different version from the alias specified in the setup.sh script."
else
    echo "$ALIAS_CMD" >> ~/.bash_aliases
    echo "Alias added."
fi

source ~/.bash_aliases
