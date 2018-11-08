# Nearest Sequence Memory for Hidden State Idenification

This repository is the *reimplementation* of the paper "[Instance-Based State Identification for Reinforcement Learning](https://papers.nips.cc/paper/932-instance-based-state-identification-for-reinforcement-learning.pdf)" by [R.Andrew McCallum](https://people.cs.umass.edu/~mccallum/)

NSM is an instance-based algorithm for solving partially observable Markov decision problems (POMDPs). Here NSM algorithm is applies to a partially obsevable version of McCallum's grid-world presented in figure below.
<p align="center">
  <img width="460" height="300" src="https://raw.githubusercontent.com/SharathRaparthy/semantic_segmentation/master/discrete_world.png">
</p>

### Prerequisites
```
Matlab 2015b (or later version)
Ubuntu 14.04 (or later version)/Windows
```


### Getting Started
After successful installation of matlab, clone this repository by using the following command

```
git clone https://github.com/SharathRaparthy/nearest_sequence_memory.git
```
Open your matlab and execute *rndTrial.m* script with the following MATLAB command:

```
plot(rndTrial(1000));
```
The result should like similar to figure below, but it should not be exactly the same.

<p align="center">
  <img width="460" height="300" src="https://raw.githubusercontent.com/SharathRaparthy/nearest_sequence_memory/master/rndTrial.png">
</p>


Now run the NSMTrial function and plot the individual number of steps taken for 1000
episodes using the MATLAB command:
```
plot(NSMTrial(1000));
```
The result should like similar to Figure shown below but it should not be exactly the same.
<p align="center">
  <img width="460" height="300" src="https://raw.githubusercontent.com/SharathRaparthy/semantic_segmentation/master/NSMplot.png">
</p>
