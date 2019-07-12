

export GLUE_DIR=data
export TASK_NAME=news

python train.py \
  --task_name $TASK_NAME \
  --do_eval \
  --do_lower_case \
  --data_dir $GLUE_DIR/$TASK_NAME \
  --bert_model bert-base-uncased \
  --max_seq_length 128 \
  --train_batch_size 32 \
  --learning_rate 2e-5 \
  --num_train_epochs 1.0 \
  --output_dir output_dir \
  --overwrite_output_dir