export BERT_ROOT_DIR=/home/leibao/code/bert_chinese_text_classification
export BERT_BASE_DIR=$BERT_ROOT_DIR/pretrained_model/chinese_L-12_H-768_A-12
export BERT_PYTORCH_DIR=$BERT_BASE_DIR

LOG_DIR=$BERT_ROOT_DIR/log
LOGNAME=`date +%m%d%H%M`

time python3 run_classifier_word.py \
  --task_name NEWS \
  --do_train \
  --do_eval \
  --data_dir $BERT_ROOT_DIR/data \
  --vocab_file $BERT_BASE_DIR/vocab.txt \
  --bert_config_file $BERT_BASE_DIR/bert_config.json \
  --init_checkpoint $BERT_PYTORCH_DIR/pytorch_model.bin \
  --max_seq_length 256 \
  --train_batch_size 24\
  --learning_rate 2e-5 \
  --num_train_epochs 50 \
  --output_dir $BERT_ROOT_DIR/checkpoint \
  --local_rank 0 \
  --gradient_accumulation_steps 2 \
  --time_to_save_checkpoint 2200 \
  #--resuming_from_checkpoint $BERT_ROOT_DIR/checkpoint/12172222_12_2.pt  > $LOG_DIR/$LOGNAME.log

