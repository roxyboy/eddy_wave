#!/bin/zsh
#
# emulate sh
emulate -R sh
# run the following to activate a node
# $sinfo | less
# and choose a node with either 'idle' or 'mixed' classification under the column "STATE"
# $srun --pty -t 0-03:00 -A ocp -w node<node number> /bin/bash


ROOT='/Users/takachanbo/MITgcm/'
GENMAKE=$ROOT'tools/genmake2'
MOD=$ROOT'eddy_airsea/code'
OPTFILE=${ROOT}'eddy_airsea/code/linux_amd64_gfortran+mpi_generic'

cd build
${GENMAKE} -rootdir=${ROOT} -mods=${MOD} -of=${OPTFILE}

make depend
make -j 2
