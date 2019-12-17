<<<<<<< HEAD
export GLUE_DIR=~/code/bert-Chinese-classification-task/Bert-Pytorch-Chinese-TextClassification/data
export BERT_BASE_DIR=~/code/bert-Chinese-classification-task/Bert-Pytorch-Chinese-TextClassification/pretrained_model/chinese_L-12_H-768_A-12/
export BERT_PYTORCH_DIR=$BERT_BASE_DIR

python3 run_classifier_word.py \
  --task_name NEWS \
  --do_train \
  --do_eval \
  --data_dir $GLUE_DIR/ \
=======
export BERT_ROOT_DIR=/home/leibao/code/bert_chinese_text_classification
export GLUE_DIR=$BERT_ROOT/data
export BERT_BASE_DIR=$BERT_ROOT_DIR/pretrained_model/chinese_L-12_H-768_A-12
export BERT_PYTORCH_DIR=$BERT_BASE_DIR

LOG_DIR=$BERT_ROOT_DIR/log
LOGNAME=`date +%m%d%H%M`


time python3 run_classifier_word.py \
  --task_name NEWS \
  --do_train \
  --do_eval \
  --data_dir $BERT_ROOT_DIR/data \
>>>>>>> run training with batchsize = 14
  --vocab_file $BERT_BASE_DIR/vocab.txt \
  --bert_config_file $BERT_BASE_DIR/bert_config.json \
  --init_checkpoint $BERT_PYTORCH_DIR/pytorch_model.bin \
  --max_seq_length 256 \
<<<<<<< HEAD
<<<<<<< HEAD
  --train_batch_size 3\
  --learning_rate 2e-5 \
  --num_train_epochs 50.0 \
  --output_dir ./newsAll_output/ \
  --local_rank 0 \
  --gradient_accumulation_steps 1
=======
  --train_batch_size 14\
=======
  --train_batch_size 24\
>>>>>>> test print for model GPU usage
  --learning_rate 2e-5 \
  --num_train_epochs 50 \
  --output_dir $BERT_ROOT_DIR/checkpoint \
  --local_rank 0 \
  --gradient_accumulation_steps 2 \
  --time_to_save_checkpoint 2200 \
<<<<<<< HEAD
#  --resuming_from_checkpoint $BERT_ROOT_DIR/checkpoint/12042226.pt  
  > $LOG_DIR/$LOGNAME.log
>>>>>>> run training with batchsize = 14
=======
  --resuming_from_checkpoint $BERT_ROOT_DIR/checkpoint/12092203.pt  > $LOG_DIR/$LOGNAME.log
>>>>>>> test print for model GPU usage
