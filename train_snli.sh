#!/bin/bash
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=1
#SBATCH -p gpu_24h

cd scripts/training/
python train_snli.py --config ../../config/training/snli_training.json