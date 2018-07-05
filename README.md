# Manifold regularization with GANs for semi-supervised learning

This is the code we used in our paper
>Manifold regularization with GANs for semi-supervised learning
>Bruno Lecouat*, Chuan Sheng Foo*, Houssam Zenati, Vijay Ramaseshan Chandrasekhar

## Requirements

The repo supports python 3.5 + tensorflow 1.5

## Run the Code

To reproduce our results on SVHN
```
python train_svhn.py
```

To reproduce our results on CIFAR-10
```
python train_cifar.py
```

## Results

Here is a comparison of different models using standard architectures (1000 labels on SVHN, and 4000 labels on CIFAR):

CIFAR(% errors) | 1000 labels| 4000 labels
-- | -- | --
Pi model |5.43 +/- 0.25| 16.55 +/- 0.29
Mean Teacher |21.55 +/- 1.48 | 12.31 +/- 0.28
VAT large | | 14.18
FM  | 21.83 +/- 2.01 | 18.63 +/- 2.32
ALI | 19.98 +/- 0.89 | 17.99 +/- 1.62
Bad GAN  |  | 14.41 +/- 0.30
Ours | **16.37 +/- 0.42**| **14.34 +/- 0.17**

Method | SVHN (% errors) | CIFAR (% errors)
-- | -- | --
Pi model |7.05 +/- 0.30| 5.43 +/- 0.25
Mean Teacher |4.35 +/- 0.50 | 3.95 +/- 0.19
VAT small |  | 5.77
FM  | 18.44 +/- 4.80 | 8.11 +/- 1.30
ALI |  | 7.41 +/- 0.65
Bad GAN  | | 7.42 +/- 0.65
Ours | **5.67 +/- 0.11**| **4.63 +/- 0.11**
