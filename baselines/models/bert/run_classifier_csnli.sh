CURRENT_DIR=`pwd`
export CUDA_VISIBLE_DEVICES="0"
export BERT_BASE_DIR=$CURRENT_DIR/prev_trained_model/chinese_L-12_H-768_A-12
export GLUE_DIR=../../glue/chineseGLUEdatasets

export MYDIR=/N/dc2/projects/NLI/csnli_output_20191110

#### train
python run_classifier.py \
  --task_name=csnli \
  --do_train=true \
  --do_eval=true \
  --do_test=true \
  --data_dir=$GLUE_DIR/cnsd/cnsd-snli \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
  --max_seq_length=128 \
  --train_batch_size=64 \
  --eval_batch_size=64 \
  --learning_rate=3e-5 \
  --num_train_epochs=2.0 \
  --output_dir=$MYDIR

##### for eval and test

#python run_classifier.py \
#  --task_name=cnli \
#  --do_train=false \
#  --do_eval=true \
#  --do_test=true \
#  --data_dir=$GLUE_DIR/cnli \
#  --vocab_file=$BERT_BASE_DIR/vocab.txt \
#  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
#  --init_checkpoint=$MYDIR \
#  --max_seq_length=128 \
#  --train_batch_size=64 \
#  --eval_batch_size=64 \
#  --learning_rate=3e-5 \
#  --num_train_epochs=2.0 \
#  --output_dir=$MYDIR



