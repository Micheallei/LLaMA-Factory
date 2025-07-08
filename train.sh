export TOKENIZERS_PARALLELISM=false;
export WANDB_RUN_ID=$(date +"%Y%m%d_%H%M%S")  # 基于当前日期时间

cd /home/aiscuser/LLaMA-Factory

FORCE_TORCHRUN=1 llamafactory-cli train examples/train_full/qwen2_5_full_sft.yaml > /home/aiscuser/LLaMA-Factory/output/train_qwen2_5_full_sft.log 2>&1

python /home/aiscuser/temp2.py