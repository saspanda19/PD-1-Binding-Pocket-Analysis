#!/bin/bash

#SBATCH --nodes=1
#SBATCH --time=8-00:00:00
#SBATCH --requeue
#SBATCH --tasks-per-node=2
#SBATCH --cpus-per-task=16
#SBATCH --hint=nomultithread
#SBATCH --partition=high
#SBATCH --exclusive
#SBATCH --job-name=nvt1
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=saspanda@ucdavis.edu

echo Running on host `hostname`
echo Time is `date`
echo "job id =$SLURM_JOBID"
echo Directory is `pwd`
echo Script name: $FILE

#module load fftw
module load gromacs

#export OMP_NUM_THREADS=1
export GMX_MAXCONSTRWARN=-1
export GMX_SUPPRESS_DUMP=1


gmx mdrun -deffnm md_1

echo Time is `date`
