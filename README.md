# MRI-TL-ML
A study of the efficacy of transfer learning methods versus "traditional" machine learning methods (i.e., separate feature extraction and learner architectures).

This project is a submission of Sasha Petrenko for his MATH5001: Mathematics of Medical Imaging course and the Missouri University of Science and Technology.

## Usage

1. Download the dataset at https://figshare.com/articles/dataset/brain_tumor_dataset/1512427
2. Extract all of the data to a single folder.
3. Preprocess the images with the script `matlab/preprocessing.m`, pointing to the correct directory.
4. Create a python environment (e.g., `conda`) and install the requirements under `requirements.txt`.
5. Run the notebook `notebooks/tl-mri.ipyng`.
6. View the figures and results in `results/`.

## Author

* Sasha Petrenko <sap625@mst.edu>