# Landmarks for Basel Face Model (3DMM)
This page provides 2 types of landmark indices (anchor points or mark-up) for Basel Face Model.

<img src="https://github.com/anilbas/BFMLandmarks/blob/master/img/68.jpg" alt="68 Landmarks" width="50%"><img src="https://github.com/anilbas/BFMLandmarks/blob/master/img/21.jpg" alt="21 Landmarks" width="50%">

- **Landmarks68_BFM.anl**: 68 Landmarks (Fig:Left) for [300W](https://ibug.doc.ic.ac.uk/resources/300-W/) Annotation.
- **Landmarks21_BFM.anl**: 21 Landmarks (Fig:Right) for [AFLW](https://www.tugraz.at/institute/icg/research/team-bischof/lrs/downloads/aflw) Annotation.

To load the landmarks, simply call the readLandmarks function:

```matlab
idx = readLandmarks('Landmarks21_BFM.anl');
```

## Running the demo code

The demo scripts loads the morphable model and plots the landmarks on top of the mean face. Please set the path for the model file, `01_MorphableModel.mat`, in the first line of the script or you could copy the repository in the same folder. It is possible to obtain the model upon signing a license agreement via the [website](http://faces.cs.unibas.ch/bfm) of [Graphics and Vision Research Group, University of Basel](http://gravis.dmi.unibas.ch).

Fell free to use, copy, modify and share.
