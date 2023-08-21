# Biosciences: Image Processing

This curriculum module uses biological images to teach fundamental concepts of image processing in MATLAB® and includes exercises where students learn to count the number of cells in an image of a microscope slide. 

## Description

In this module, students will learn how to import, preprocess, and segment biologically relevant images. Make sure you're familiar with the basics of using MATLAB by going through the [MATLAB Onramp](https://matlabacademy.mathworks.com/details/matlab-onramp/gettingstarted) before continuing. You'll need to utilize the Image Processing Toolbox™ for this module. You may also want to consider going through the [Image Processing Onramp](https://matlabacademy.mathworks.com/details/image-processing-onramp/imageprocessing) for further practice.

This module utilizes parasite images from the [CDC DPDx website](https://www.cdc.gov/dpdx/index.html), which is an is an online resource containing images and information about parasitic diseases that are of importance to public health. These images have also been utilized in a [MATLAB deep learning parasite classification example](https://www.mathworks.com/help/deeplearning/ug/parasite-classification-using-wavelet-scattering-and-deep-learning.html#ParasiteClassificationExample-1).

![flourescent cells under a microscope](images/FluorescentCells.jpg)

[Cells taken from the inner walls of a cow blood vessel, stained fluorescent, and viewed under a microscope](https://commons.wikimedia.org/wiki/File:FluorescentCells.jpg)

## Prerequisites 

This module assumes basic MATLAB knowledge and it is recommended that all students take the [MATLAB Onramp](https://matlabacademy.mathworks.com/details/matlab-onramp/gettingstarted).

## Getting Started 

To learn more about opening and using MATLAB, see the accompanying [Getting Started](Getting_Started.pdf) guide. 

## Sections 
Notes: These scripts can all be run independently, though we recommend going through these live scripts in order. These live scripts are intended to be used with output inline. To change the output, go to the View tab of the toolstrip, and select ![](images/outputinline.png)  Output Inline. 
The scripts have areas for the students to interact with the code ![](images/try.png) . There will also be exercises ![](images/exercise.png)  in most scripts and the answers will be provided at the end.  A problem set for students to practice these concepts is also included here. Throughout the scripts, there are also moments to students to reflect on what they've learned or on what the data means ![](images/reflect.png) . Particularly intersting examples of how these concepts are used in "real-world" biology are also pointed out ![](images/app.png).

[Introduction](S1_Introduction.mlx)
- Students learn about why image processing is critical in biology. 

[Plant image segmentation](S2_Plant_img_segmentation.mlx)
- Learning objective:  Students will import,  manipulate, and segment a plant image in MATLAB, and learn how images are stored. 

[Cell counting](S3_Cell_counting.mlx)
- Learning objective:  Students will learn to segment images by shape and count the number of cells on a microscope slide image of red blood cells.

[Problem set](S4_Problem_set.mlx)
- [Problem set answers](S5_Problem_set_answers.mlx)

## Related Courseware Modules

Link to 5 other modules here once set up. 

## Products 

MATLAB®, Image Processing Toolbox™

## License

The License for this project is in the [License.txt](license.txt) file in this repository. 

##
_Copyright 2023 The MathWorks, Inc._
