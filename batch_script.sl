#!/bin/bash -l
#SBATCH -q regular
#SBATCH --nodes=2
#SBATCH --tasks-per-node=32
#SBATCH -C haswell
#SBATCH -t 04:00:00
#SBATCH -J my_job
#SBATCH --mail-user=benjaminobi@gmail.com
#SBATCH --mail-type=ALL


export OMP_NUM_THREADS=2

module load espresso/6.1
srun pw.x -input scf.in
srun pw.x -input nscf.in
srun pw.x -input bands.in
srun bands.x -input bands_plot.in



