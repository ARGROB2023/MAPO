#!/bin/bash

set -x

# bash examples/qwen2_5_vl_7b_geo3k_dapo_our.sh

export PYTHONUNBUFFERED=1

MODEL_PATH=/zoom/Qwen2.5-VL-7B-Instruct
ROLLOUT_NUMBER=12
TRAING_EPOCH=20
ADV_ESTIMATOR=grpo
EXPERIMENT_NAME=qwen2_5_vl_7b_geo_${ROLLOUT_NUMBER}_dapo_${ADV_ESTIMATOR}
CHECKPONT_PATH=/checkpoints/${EXPERIMENT_NAME}/

python3 -m verl.trainer.main \
    config=examples/config.yaml \
    data.mini_rollout_batch_size=128 \
    worker.actor.model.model_path=${MODEL_PATH} \
    algorithm.adv_estimator=${ADV_ESTIMATOR} \
    worker.rollout.n=${ROLLOUT_NUMBER}\
    worker.actor.clip_ratio_low=0.2 \
    worker.actor.clip_ratio_high=0.28 \
    algorithm.disable_kl=True \
    algorithm.online_filtering=True \
    trainer.n_gpus_per_node=8 \
    trainer.total_epochs=${TRAING_EPOCH} \
    trainer.experiment_name=${EXPERIMENT_NAME} \
    trainer.save_checkpoint_path=${CHECKPONT_PATH} 