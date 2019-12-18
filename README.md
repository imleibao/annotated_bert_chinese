# Backgroud
This repo is based on [Bert-Pytorch-Chinese-TextClassification](https://github.com/xieyufei1993/Bert-Pytorch-Chinese-TextClassification) which basically refers to [huggingface](https://github.com/huggingface/transformers) , I guess [v0.6.2](https://github.com/huggingface/transformers/releases/tag/v0.6.2).

# How to use it 
This repo is created to illustrate the key code when using bert to classify chinese text(fine-tuning). 

The file "annotated_run_classifier_word.ipynb" & "modeling.ipynb", the core of this repo, will give you all pictures about how to handle chinese text classification task with bert. Just read it.


Feel free to use it.


  
# To run the code 
## Reading fist:

Fellow [the guidance](https://github.com/xieyufei1993/Bert-Pytorch-Chinese-TextClassification) and download `datasets`, `chinese bert pretrained model` released by google.

## Quick Start:

Step 1: download google pretrained model, and place it into pretrained_model folder.

Step 2: download your datasets place it into data folder.

Setp 3: modify run.sh, set envirenmernt parameters `GLUE_DIR`, `BERT_BASE_DIR`, `BERT_PYTORCH_DIR`.

Step 4: sh run.sh.


## Attention: 

1. Make sure that you have downloaded datasets, google pretrained model and placed them at the right folders.
2. Make sure that you have set GLUE_DIR, BERT_BASE_DIR, BERT_PYTORCH_DIR right. These env variables' values depend on where did you setup your project. for example: GLUE_DIR specifies where to store datasets, "export GLUE_DIR=~~/code/bert-Chinese-classification-task/Bert-Pytorch-Chinese-TextClassification~~/data", meaning my project root directory is "~/code/bert-Chinese-classification-task/Bert-Pytorch-Chinese-TextClassification" and datasets are stored in "data" folder.

3. If you change the datasets name or path, there are 3 spots need to be modified accordingly: a. the env variables in run.sh; b. the commandline parameters in run.sh; c. dataset's name used to load in run_classifier_word.py

ocab.txt


# Project Structure
To run the code without edited, your project should be organized like bellow:

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
# 50 epoch
bach_size = 24
accumulation_step = 2
epoch = 50
gpu:2070
about:48 hours

results:
```
eval_accuracy = 0.9726
eval_loss = 0.3091133233547211
global_step = 22913
```
sad story!!
