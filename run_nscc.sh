#!/usr/bin/env bash

logdir=./experiment

python train_cifar.py --logdir $logdir/reg_clamp_min0_max10  --gpu 0 --clamp --lmin 0 --lmax 10 &
python train_cifar.py --logdir $logdir/reg_clamp_min1_max10  --gpu 1 --clamp --lmin 1 --lmax 10 &
python train_cifar.py --logdir $logdir/reg_clamp_min5_max10  --gpu 2 --clamp --lmin 5 --lmax 10 &
python train_cifar.py --logdir $logdir/reg_clamp_min0_max20  --gpu 3 --clamp --lmin 0 --lmax 20 &
python train_cifar.py --logdir $logdir/reg_clamp_min0_max30  --gpu 4 --clamp --lmin 0 --lmax 30 &
python train_cifar.py --logdir $logdir/reg_clamp_abs_min0_max10  --gpu 5 --clamp --abs --lmin 0 --lmax 10 &
python train_cifar.py --logdir $logdir/reg_clamp_abs_min1_max10  --gpu 6 --clamp --abs --lmin 1 --lmax 10 &
python train_cifar.py --logdir $logdir/reg_frobenius --gpu 7 &
