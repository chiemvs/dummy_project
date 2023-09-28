#!/usr/bin/bash
#SBATCH --job-name="dummy"
#SBATCH --cpus-per-task=2
#SBATCH --time=02:00:00
#SBATCH --mem=10gb
#SBATCH --partition=ivm
#SBATCH --output=/scistor/ivm/jsn295/python_%j.out
#SBATCH --error=/scistor/ivm/jsn295/python_%j.err

# OPTION 1, use existing installation in HOME (more far-away IO)
source $HOME/TESTVENV/bin/activate

# OPTION 2, install on clean on node's scratch (executables close to computation, less IO, but more installation time)
#VENVNAME=SCRATCHVENV
#$HOME/Documents/EnvManager/environment_setup.sh -s $VENVNAME
#source $TMPDIR/$VENVNAME/bin/activate

python3 ./a_heavy_computation.py
