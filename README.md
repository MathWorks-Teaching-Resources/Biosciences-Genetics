# <span style="color:rgb(213,80,0)">Biosciences: Genetics</span>

For MATLAB R2024b or older, use the [legacy MLX release](https://github.com/MathWorks-Teaching-Resources/Biosciences-Genetics/releases/tag/mlx).

<a id="H_053613DF"></a>


[![View on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/163706-biosciences-genetics) [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Biosciences-Genetics&project=BiosciencesGenetics.prj&file=README.mlx)

[![MATLAB Versions Tested](https://img.shields.io/endpoint?url=https://mathworks-teaching-resources.github.io/Biosciences-Genetics/TestedWith.json)](https://mathworks-teaching-resources.github.io/Biosciences-Genetics)

**Curriculum Module**

_Created with R2025a. Compatible with R2025a and later releases._

# Information

This curriculum module contains interactive [MATLAB® live scripts](https://www.mathworks.com/products/matlab/live-editor.html) that analyze genetic data. 

<a id="H_F00D98E4"></a>

## Background

You can use these live scripts as demonstrations in lectures, class activities, or interactive assignments outside class. This module covers calculating the statistics of a single DNA sequence, uses real genetic data to create a phylogenetic tree, and explores within\-species genetic variation. 

This module utilizes data pulled from [GenBank](https://www.ncbi.nlm.nih.gov/genbank/), the NIH's library of publicly available genetic sequences.

<img src="Images/640px-Bdna_cropped.gif" width="140" alt="640px-Bdna_cropped.gif">

[A 3\-dimensional model of DNA](https://commons.wikimedia.org/wiki/File:Bdna_cropped.gif)

An internet connection is needed for GenBank sequence retrieval and the initial download of the primates example. Downloaded data belongs in `Data/` and is excluded from version control. Population data is simulated locally.

The instructions inside the live scripts will guide you through the exercises and activities. Get started with each live script by running it one section at a time. To stop running the script or a section midway (for example, when an animation is in progress), use the <img src="Images/EndIcon.png" width="19" alt="EndIcon.png"> Stop button in the **RUN** section of the **Live Editor** tab in the MATLAB Toolstrip.

## Contact Us

Contact the [MathWorks Educator Content Development Team](mailto:onlineteaching@mathworks.com) if you would like to request assistance, provide feedback, or if you have a question.

## Prerequisites

This module assumes basic MATLAB knowledge and it is recommended that all students take the [MATLAB Onramp](https://matlabacademy.mathworks.com/details/matlab-onramp/gettingstarted).

# Getting Started

To learn more about opening and using MATLAB, see the accompanying [Getting Started](http://gettingstarted.pdf) guide. 

### Accessing the Module

Use MATLAB R2025a or newer for these plain\-text live scripts. For MATLAB R2024b or older, download the [legacy `.mlx` release](https://github.com/MathWorks-Teaching-Resources/Biosciences-Working-With-Data/releases/tag/mlx).

### **On MATLAB® Online**™:

Use the [<img src="Images/OpenInMO.png" width="136" alt="OpenInMO.png">](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/biosciences-genetics&project=BiosciencesGenetics.prj&file=README.m) link to download the module. You will be prompted to log in or create a MathWorks account. The project will be loaded, and you will see an app with several navigation options to get you started.

### **On Desktop:**

Download or clone this repository. Open MATLAB, navigate to the folder containing these scripts and double\-click on [BiosciencesGenetics.prj](<matlab: openProject("BiosciencesGenetics.prj")>). It will add the appropriate files to your MATLAB path and open an app that asks you where you would like to start. 

Ensure you have all the required products ([listed below](#M_5d15)) installed. If you need to include a product, add it using the Add\-On Explorer. To install an add\-on, go to the **Home** tab and select  <img src="Images/AddOnsIcon.png" width="16" alt="AddOnsIcon.png"> **Add-Ons** > **Get Add-Ons**. 

<a id="M_5d15"></a>

# Products

MATLAB®, Bioinformatics Toolbox™, and the Statistics and Machine Learning Toolbox™ are used throughout. The Mapping Toolbox™ is used for `changem()`.

# Scripts

Notes: These scripts can all be run independently, though we recommend going through these live scripts in order. These live scripts are intended to be used with output inline. To change the output, go to the View tab of the toolstrip, and select <img src="Images/OutputInline.png" width="24" alt="OutputInline.png"> Output Inline. The scripts have areas for the students to interact with the code <img src="Images/Try.png" width="19" alt="Try.png">. 

<a id="H_F887EB68"></a>

## [Explore a single DNA sequence](<matlab: edit Scripts/S1ExploreSingleDNASequence.m>)
||||
| :-- | :-- | :-- |
| <img src="Images/Pl.png" width="171" alt="Pl.png"> <br>  | **In this script, students will...** <br> $\bullet$  import and analyze DNA sequences in MATLAB, and visualize nucleotide content <br>  | **Academic disciplines** <br> $\bullet$ Biology <br>   |

<a id="H_00AECAD6"></a>

## [Comparative genetics](<matlab: edit Scripts/S2ComparativeGenetics.m>)
||||
| :-- | :-- | :-- |
| <img src="Images/GeneticTree.png" width="171" alt="GeneticTree.png"> <br>  | **In this script, students will...** <br> $\bullet$ calculate genetic distances between species <br> $\bullet$ visualize genetic distance using phylogenetic trees <br> $\bullet$ use genetic data to interpret evolutionary relationships <br>  | **Academic disciplines** <br> $\bullet$ Biology <br>   |

<a id="H_9C945EDE"></a>

## [Population genetics](<matlab: edit Scripts/S3PopulationGenetics.m>)
||||
| :-- | :-- | :-- |
| <img src="Images/GeneticClusters.png" width="171" alt="GeneticClusters.png"> <br>  | **In this script, students will...** <br> $\bullet$  visualize genetic differences within a population using dimensionality reduction <br>  | **Academic disciplines** <br> $\bullet$ Biology <br> $\bullet$ Machine Learning <br> $\bullet$ Linear Algebra <br>   |

<a id="H_CD0392F3"></a>

## [Problem Set](<matlab: edit Scripts/S4ProblemSet.m>)
||||
| :-- | :-- | :-- |
| <img src="Images/Axlotl.png" width="171" alt="Axlotl.png"> <br>  | **In this script, students will...** <br> $\bullet$ retrieve and plot nucleotide data <br> $\bullet$ create phylogenetic trees <br> $\bullet$ visualize genetic differences within a population using dimensionality reduction <br>  | **Academic disciplines** <br> $\bullet$ Biology <br> $\bullet$ Machine Learning <br> $\bullet$ Linear Algebra <br>   |

<a id="H_A3FE16AB"></a>

# **Further Resources for students**

&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 1) [an example of phylogenetic trees using the primate dataset](https://www.mathworks.com/help/bioinfo/ug/building-a-phylogenetic-tree-for-the-hominidae-species.html)

&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 2) [an example of using phylogenetic trees to understand a disease](https://www.mathworks.com/help/bioinfo/ug/analyzing-the-origin-of-the-human-immunodeficiency-virus.html)

&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 3) [more on sequence statistics](https://www.mathworks.com/help/bioinfo/ug/calculating-and-visualizing-sequence-statistics.html)

# Related Courseware Modules

| **Courseware** <br>  |  | **Location** <br>   |
| :-- | :-- | :-- |
| [Biosciences: Working With Data](https://www.mathworks.com/matlabcentral/fileexchange/181586-biosciences-working-with-data)  <br>  | <img src="Images/Penguins.jpeg" width="171" alt="Penguins.jpeg"> <br>  | **Available on:** <br> [<img src="Images/OpenInFX.png" width="91" alt="OpenInFX.png">](https://www.mathworks.com/matlabcentral/fileexchange/181586-biosciences-working-with-data)  <br> [<img src="Images/OpenInMO.png" width="136" alt="OpenInMO.png">](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Biosciences-Working-With-Data&project=BiosciencesWorkingWithData.prj&file=README.m) <br> [GitHub](https://github.com/MathWorks-Teaching-Resources/Biosciences-Working-With-Data)  <br>   |
| [Biosciences: Statistical Methods](https://www.mathworks.com/matlabcentral/fileexchange/163691-biosciences-statistical-methods)  <br>  | <img src="Images/Penguin.jpeg" width="171" alt="Penguin.jpeg"> <br>  | **Available on:** <br> [<img src="Images/OpenInFX.png" width="91" alt="OpenInFX.png">](https://www.mathworks.com/matlabcentral/fileexchange/163691-biosciences-statistical-methods)  <br> [<img src="Images/OpenInMO.png" width="136" alt="OpenInMO.png">](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Biosciences-Statistical-Methods&project=BiosciencesStatisticalMethods.prj&file=README.m) <br> [GitHub](https://github.com/MathWorks-Teaching-Resources/Biosciences-Statistical-Methods)  <br>   |
| [Biosciences: Image Processing](https://www.mathworks.com/matlabcentral/fileexchange/163701-biosciences-image-processing)  <br>  | <img src="Images/FluorescentCells.jpeg" width="171" alt="FluorescentCells.jpeg"> <br>  | **Available on:** <br> [<img src="Images/OpenInFX.png" width="91" alt="OpenInFX.png">](https://www.mathworks.com/matlabcentral/fileexchange/163701-biosciences-image-processing)  <br> [<img src="Images/OpenInMO.png" width="136" alt="OpenInMO.png">](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Biosciences-Image-Processing&project=BiosciencesImageProcessing.prj&file=README.m) <br> [GitHub](https://github.com/MathWorks-Teaching-Resources/Biosciences-Image-Processing)  <br>   |
| [Biosciences: Machine Learning](https://www.mathworks.com/matlabcentral/fileexchange/163696-machine-learning-for-biosciences)  <br>  |  <img src="Images/Rose.jpeg" width="127" alt="Rose.jpeg"> <br>  | **Available on:** <br> [<img src="Images/OpenInFX.png" width="91" alt="OpenInFX.png">](https://www.mathworks.com/matlabcentral/fileexchange/163696-machine-learning-for-biosciences)  <br> [<img src="Images/OpenInMO.png" width="136" alt="OpenInMO.png">](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Biosciences-Machine-Learning&project=MachineLearningBiosciences.prj&file=README.m) <br> [GitHub](https://github.com/MathWorks-Teaching-Resources/Biosciences-Machine-Learning)  <br>   |

Or feel free to explore our other [modular courseware content](https://www.mathworks.com/matlabcentral/fileexchange/?q=tag%3A%22courseware+module%22&sort=downloads_desc_30d).

# Educator Resources
- [Educator Page](https://www.mathworks.com/academia/educators.html)
- [Instructor Resources](InstructorResources/Documentation/README.md)

<a id="H_0FA5DA18"></a>

# Contribute 

Looking for more? Find an issue? Have a suggestion? Please contact the [MathWorks Educator Content Development Team](mailto:onlineteaching@mathworks.com). If you want to contribute directly to this project, you can find information about how to do so in the [CONTRIBUTING.md](CONTRIBUTING.md) page.

# License

The license for this project is in the [LICENSE.md](http://license.md) file in this repository.

# Help us Improve

[Share your feedback](<matlab: ShareFeedback>) to help us improve this module.

© Copyright 2023\-2026 The MathWorks, Inc.
