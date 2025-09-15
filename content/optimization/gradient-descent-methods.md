---
title: "Gradient Descent Methods"
description: "Understanding gradient descent and its variants for optimization"
date: 2025-09-15
author: "Tt200411"
tags: ["gradient descent", "optimization", "machine learning"]
categories: ["Optimization", "Algorithms"]
draft: false
---

# Gradient Descent Methods

## Introduction

Gradient descent is a fundamental optimization algorithm widely used in machine learning for minimizing loss functions.

## Basic Gradient Descent

The simplest form updates parameters in the direction of the negative gradient:

```
θ = θ - α∇f(θ)
```

Where:
- θ: parameters
- α: learning rate
- ∇f(θ): gradient of the objective function

## Variants

### Stochastic Gradient Descent (SGD)
Updates parameters using individual data points or small batches.

### Momentum
Adds momentum to accelerate convergence:
```
v = βv + α∇f(θ)
θ = θ - v
```

### Adam
Adaptive learning rates with momentum:
```
m = β₁m + (1-β₁)∇f(θ)
v = β₂v + (1-β₂)(∇f(θ))²
θ = θ - α * m̂/(√v̂ + ε)
```

## Applications
- Neural network training
- Linear regression
- Logistic regression
- Support vector machines