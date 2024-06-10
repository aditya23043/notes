<style>
*{
font-family: "VictorMono NFM";
font-weight: Bold;
}
</style>

# Table Of Contents

<!-- mtoc-start -->

* [Image Segmentation (10th June)](#image-segmentation-10th-june)
* [Definition](#definition)
* [Machine Learning Methods and Applications](#machine-learning-methods-and-applications)
* [Classical ML vs Deep Learning](#classical-ml-vs-deep-learning)
* [Basic DL methods](#basic-dl-methods)
* [Handwritten Digit Recognition](#handwritten-digit-recognition)
* [Multiple Neural Networks](#multiple-neural-networks)
* [Sigmoid](#sigmoid)
* [Epoch](#epoch)
* [Gradient](#gradient)
* [Terms](#terms)
* [Fit](#fit)
* [Bias vs Variance Tradeoff](#bias-vs-variance-tradeoff)
* [Regularization](#regularization)
* [Weight Initialization](#weight-initialization)
* [Links](#links)
* [Convolutional Neural Networks (CNN)](#convolutional-neural-networks-cnn)

<!-- mtoc-end -->

# Image Segmentation (10th June)

## Definition
- Experience
- Task
- Performance

- E ⇾ T : Utilize
- T ⇾ P : Measure
- P ⇾ E : Learn

## Machine Learning Methods and Applications
- Supervised (Task Driven)
- Unsupervised (Data Driven)
- Reinforcement (Semi-Supervised)

## Classical ML vs Deep Learning
| Traditional ML         | Deep Learning                      |
|------------------------|------------------------------------|
| Pre-process input data | Learns features directly from data |
| 1-2 Layers             | Multiple Layers                    |
| Input-Hidden-Output    | Input-Hidden-Hidden-Hidden-Output  |

## Basic DL methods
- Supervised 
    - Convolutional NN
    - Recurrent NN
    - Transformer Models
- Unsupervised
    - Deep Belief Nets
    - Auto Encoders

## Handwritten Digit Recognition
- Convert an image of Handwritten numbers of 32x32 resolution to a decimal number
- $f:R^{1024} -> R^{10}$
- This is only multi class
- Multi Label, Multi Class ⇒ e.g.: ECG data set

## Multiple Neural Networks
| Structure    | Exclusive-Or Problem | Classes with meshes region | Most general region shapes |
|--------------|----------------------|----------------------------|----------------------------|
| Single Layer | no                   | no                         | yes                        |
| Double Layer | partially            | no                         | yes                        |
| Triple Layer | yes                  | yes                        | yes                        |

> Note: GT = Ground Truth (kinda base case)

## Sigmoid
- Sigmoid function, a.k.a, squashing function
$$\sigma(z) = \frac{1}{(1+e^{-z})}$$

## Epoch
- An epoch means training the neural network with all the training data for one cycle. In an epoch, we use all of the data exactly once. A forward pass and a backward pass together are counted as one pass

## Gradient
- A gradient is a derivative that defines the effects on outputs of the function with a little bit of variation in inputs.
- Gradient descent
    - It is a numerical optimization algorithm that aims to find the optimal parameters—weights and biases—of a neural network by minimizing a defined cost function.
- Stochastic Gradient descent (SGD)
    - In SGD, instead of using the entire dataset for each iteration, only a single random training example (or a small batch) is selected to calculate the gradient and update the model parameters.

## Terms
- Inputs, initial weights, bias, expected output, error %, back propagation
- An internal covariate shift occurs when there is a change in the input distribution to our network. When the input distribution changes, hidden layers try to learn to adapt to the new distribution. This slows down the training process. If a process slows down, it takes a long time to converge to a global minimum.
- Training Set: The dataset that we feed our model to learn potential underlying patterns and relationships.
- Validation Set: The dataset that we use to understand our model's performance across different model types and hyperparameter choices.
- Not every sample you have is a clean sample
- Noise may be present
- Variance: predictions vary too much between two similar epochs

## Fit
- Under Fitting: Model is hardly aligned to a provided a set of data samples
- Over Fitting: Model gives accurate predictions for training set but not for new data
- Optimal Fit

## Bias vs Variance Tradeoff
- Under fitting: Low Variance and High Bias
- Overfitting: High Variance and Low Bias

## Regularization
- LASSO (Least absolute shrinkage and selection operator)
- Ridge

## Weight Initialization

## Links
- https://deeplearning.net

## Convolutional Neural Networks (CNN)
- DNN (Dense Neural Networks)
    - Every neuron is connected to every neuron from the previous layer
    - The number of connections is huge
    - Every connection has weight = 1
    - Huge number of trainable params
- Kernel
    - A small filter
        - e.g.: 3x3 kernel
    - A function or a method that allows the application of linear methods to real-world problems that are nonlinear in nature.
    - Tremendously reduces the number of parameters

- Feature Map
> Note: if input image -> 32x32x3, then if we say kernel = 3x3, the kernel takes the depth of the whole input image i.e., in actuality, the kernel is 3x3x3 and 28 number of trainable parameters
- For an input image of size 6x6x3, kernel = 3x3 and stride = 1, the output image will be of size 4x4
- total number of params = 3x3x6 + 1 (bias term)

