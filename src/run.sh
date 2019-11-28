export GLUE_DIR=~/code/bert-Chinese-classification-task/Bert-Pytorch-Chinese-TextClassification/data
export BERT_BASE_DIR=~/code/bert-Chinese-classification-task/Bert-Pytorch-Chinese-TextClassification/pretrained_model/chinese_L-12_H-768_A-12/
export BERT_PYTORCH_DIR=$BERT_BASE_DIR

python3 run_classifier_word.py \
  --task_name NEWS \
  --do_train \
  --do_eval \
  --data_dir $GLUE_DIR/ \
  --vocab_file $BERT_BASE_DIR/vocab.txt \
  --bert_config_file $BERT_BASE_DIR/bert_config.json \
  --init_checkpoint $BERT_PYTORCH_DIR/pytorch_model.bin \
  --max_seq_length 256 \
  --train_batch_size 3\
  --learning_rate 2e-5 \
  --num_train_epochs 50.0 \
  --output_dir ./newsAll_output/ \
  --local_rank 0 \
  --gradient_accumulation_steps 1
