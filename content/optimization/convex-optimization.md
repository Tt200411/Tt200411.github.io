---
title: "Convex Optimization"
description: "Fundamentals of convex optimization theory and algorithms"
date: 2025-09-15
author: "Tt200411"
tags: ["convex optimization", "linear programming", "convex analysis"]
categories: ["Optimization", "Mathematics"]
draft: false
---

# Convex Optimization

## Introduction

Convex optimization is a subfield of mathematical optimization that studies the problem of minimizing convex functions over convex sets.

## Key Concepts

### Convex Sets
A set C is convex if for any two points x, y ∈ C and λ ∈ [0,1]:
```
λx + (1-λ)y ∈ C
```

### Convex Functions
A function f is convex if its domain is convex and for all x, y in the domain:
```
f(λx + (1-λ)y) ≤ λf(x) + (1-λ)f(y)
```

## Standard Form Problems

### Linear Programming
```
minimize    c^T x
subject to  Ax = b
            x ≥ 0
```

### Quadratic Programming
```
minimize    (1/2)x^T P x + q^T x + r
subject to  Gx ≤ h
            Ax = b
```

## Algorithms

### Interior Point Methods
Efficient algorithms for solving convex optimization problems.

### Simplex Method
Classical algorithm for linear programming.

### Ellipsoid Method
Polynomial-time algorithm for convex optimization.

## Applications
- Portfolio optimization
- Support vector machines
- Signal processing
- Control systems