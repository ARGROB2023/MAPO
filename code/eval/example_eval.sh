#!/bin/bash

export VLLM_ATTENTION_BACKEND=torch 
export VLLM_USE_V1=0

# bash eval/example_eval.sh
PYTHON_PATH=/usr/bin/python3  

CURRENT_DIR=$(pwd)
echo "$CURRENT_DIR"

# Define list of model paths to evaluate

TASK_NAME=qwen2_5_vl_7b_geo_12_grpo 

HF_MODEL_PATH=""

RESULTS_DIR="" 
EVAL_DIR=""
DATA_DIR=""

SYSTEM_PROMPT="""You FIRST think about the reasoning process as an internal monologue and then provide the final answer.
 The reasoning process MUST BE enclosed within <think> </think> tags. The final answer MUST BE put in \boxed{}."""

cd $EVAL_DIR

$PYTHON_PATH main.py \
  --model $HF_MODEL_PATH \
  --output-dir $RESULTS_DIR \
  --data-path $DATA_DIR \
  --datasets mathvista,mathverse \
  --tensor-parallel-size 4 \
  --system-prompt="$SYSTEM_PROMPT" \
  --min-pixels 262144 \
  --max-pixels 4194304 \
  --max-model-len 8192 \
  --temperature 0.5 \
  --eval-threads 24
