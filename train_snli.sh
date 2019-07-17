#!/bin/bash
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=1
#SBATCH -p gpu_24h

cd scripts/training/
python train_snli.py -gpu 0 -id 0 $ python train_snli.py -lr 0.0001 -gpu 1 -id 6
python train_snli.py -use_attention "" -gpu 0 -id 1 & python train_snli.py -use_second_lstm "" -gpu 1 -id 2
python train_snli.py -scheduler "" -gpu 0 -id 4 & python train_snli.py -use_final_tanh "" -gpu 1 -id 5



# python train_snli.py -use_first_lstm "" -gpu 0 -id 3








