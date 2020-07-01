# Making_GANet_More_Efficient_Group_30

The Readme of the Computer Vision project by Group 30: Making GANet more Efficient

Hao Li

Zixuan Wan

Rutger Dirks 

Under supervision of Robert-Jan Bruintjes, TU Delft.

For the course CS4245 Seminar Computer Vision by Deep Learning at the Delft University of Technology (TU Delft).

### Citation: The provided code is a replication from the GANet code cited below, including the link to github.

git clone https://github.com/feihuzhang/GANet.git

```
@inproceedings{Zhang2019GANet,
  title={GA-Net: Guided Aggregation Net for End-to-end Stereo Matching},
  author={Zhang, Feihu and Prisacariu, Victor and Yang, Ruigang and Torr, Philip HS},
  booktitle={Proceedings of the IEEE Conference on Computer Vision and Pattern Recognition},
  pages={185--194},
  year={2019}
}
```

## Scope

The replicated code is used to and adjusted to make it more efficient.
Four factors are researched that affect the efficiency of the network:
Varying the input crop size, 
Early stopping,
Varying the number of 3D Convolutions, 
Pruning the network.
These factors are adjusted and the performance and training times are compared.

The Blogpost of the study can be viewed in the following link: https://medium.com/making-ganet-more-efficient/making-ga-net-more-efficient-868d0336b24a?sk=64ed2017358358ce84eee79f50aeb73a 

## Instructions

Ideally, the full repository should be downloaded to a Google Drive. 
This project makes use of Google Colab to execute the .ipynb codes.
This project also makes use of MATLAB code for result analysis. 

### Replicated codes
The repository contains Jupyter Notebook files which are the replicated codes 
with some extensions to locate the right directories, install required libraries, and to obtain useful information.
Make sure the code refers to the appropriate directories.

#### Execute code
When downloaded to Google Drive, open the .ipynb files with Google Colab.
Uncomment the 
"os.chdir('/content/drive/My Drive/Making_GANet_More_Efficient_Group_30-master/GANet-master')"
code in each code block and comment the: 
"os.chdir('/content/drive/My Drive/Computer_Vision_edit/GANet-master')"
or change it to the appropriate directory from which you will execute the code.

Set the Runtime type to Python 3 and GPU and run the code.


### MATLAB codes
The MATLAB codes are located inside the Blogpost/Images directory.
Use MATLAB to execute this code.
It will output the image results that can also be found in the reproducibility study. 

### Data: KITTI 2015
The KITTI 2015 stereo dataset is used to train and evaluate the models.
The dataset can be downloaded here: http://www.cvlibs.net/datasets/kitti/eval_scene_flow.php?benchmark=stereo
Put the data_scene_flow directory inside the Datasets directory. Also, from the training directory copy the disp_occ_0 directory to the testing directory.

Source KITTI 2015:
Moritz Menze and Andreas Geiger. 2015. Object Scene Flow for Autonomous Vehicles. Conference on Computer Vision and Pattern Recognition (CVPR).

### Additional 
The "models" and "utils" directories contain replicated code models and utilities from Zhang, 2019
that is used by the networks.
The "checkpoints" directory contains checkpoints that gave good results in our experiments
