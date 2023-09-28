#!/bin/bash
#SBATCH -t 4:00:00
#SBATCH -N 1
 
# Make sure the jupyter command is available, either by loading the appropriate modules, sourcing your own virtual environment, etc.
 
# Activate your virtual environment:
source ~/TESTVENV/bin/activate
 
# Choose random port and print instructions to connect
PORT=`shuf -i 5000-5999 -n 1`
JUMP_HOST=ssh.data.vu.nl
LOGIN_HOST=bazis.labs.vu.nl
BATCH_HOST=$(hostname) 
 
# Print some instructions to the output file, to easily determine the ssh command you need to execute on your local machine
echo "To connect to the notebook type the following command from your local terminal:"
echo "ssh -Y -A -J ${USER}@${JUMP_HOST} ${USER}@${BATCH_HOST}.labs.vu.nl -L 8000:localhost:${PORT}"
echo "ssh -Y -A -J ${USER}@${JUMP_HOST} ${USER}@${BATCH_HOST}.labs.vu.nl -L 8000:localhost:${PORT}" >> ~/jupyter_address
echo
echo "After connection is established in your local browser go to the address:"
echo "http://localhost:8000" 
 
# Start your jupyter notebook server
jupyter notebook --no-browser --port $PORT
