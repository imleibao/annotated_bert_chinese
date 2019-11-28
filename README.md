# Backgroud
This annotated bert for chinense classification task is based on code here ,which refers to [huggingface](https://github.com/huggingface/transformers) [v0.6.2](https://github.com/huggingface/transformers/releases/tag/v0.6.2) .
# How to use it 
This reop is created to illustrate the key code when using bert to classify chinese text. 

Reading the file "bert_chinese_textclassification 之 run_classifier_word.ipynb",which is the core of this repo. This file gives you all pictures about how to handle chinese text classification task. 

Feel free to use it.


  
# To run the source code 
Reading fist:

Please Reading the guidience of [here](https://github.com/xieyufei1993/Bert-Pytorch-Chinese-TextClassification).
download data sets and google pretrained model

Quick Start:

Step 1: download google pretrained model, and place it into pretrained_model folder.

Step 2: download you dataset place it into data folder.

Setp 3: modify run.sh, set envirenmernt parameters GLUE_DIR, BERT_BASE_DIR, BERT_PYTORCH_DIR.

Step 4: sh run.sh.


Atten: 

1. make sure you downloaded data sets and google pretrained model and placed them at the right folder
2. make sure you have set the  GLUE_DIR, BERT_BASE_DIR, BERT_PYTORCH_DIR right, their values depend on where did you setup your project. for example: GLUE_DIR specifies where to store datasets, "export GLUE_DIR=~~/code/bert-Chinese-classification-task/Bert-Pytorch-Chinese-TextClassification~~/data", meaning my project root directory is "~/code/bert-Chinese-classification-task/Bert-Pytorch-Chinese-TextClassification" and datasets are stored in "data" folder.
3. If you change your datasets name or path, there are 3 spots you should modift too. 1. the env parameters in run.sh; 2. the commandline parameters in run.sh; 3. dataset's name used to load in run_classifier_word.py
ocab.txt
lei@lei-desktop:Bert-Pytorch-Chinese-TextClassification$ 

# Project Structure
your project should be organized like bellow:

```
+ convert_tf_to_pytorch     tools to convert tensorflow pretrained model to pytorch format 
+ data                      data set
  - dev.tsv  
  - train.tsv
+ pretrained_model          pytorch format bert pretrained model
  + chinese_L-12_H-768_A-12
    - bert_config.json                     
    - bert_model.ckpt.index  
    - pytorch_model.bin     Converded from ckpt tensorflow  model by using tool in "convert_tf_to_pytorch"
    - bert_model.ckpt.data-00000-of-00001  
    - bert_model.ckpt.meta   
    - vocab.txt
+ src                       source code 
  - modeling.py             Bert model detail
  - optmization.py          Bert optimizor
  - run_classifier_word.py  The entry of the whole task, including training and evaluating process.
  - run.sh                  Costom the model parameters according your needs
 ```
