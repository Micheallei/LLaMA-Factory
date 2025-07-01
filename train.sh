export TOKENIZERS_PARALLELISM=false;
export WANDB_RUN_ID=$(date +"%Y%m%d_%H%M%S")  # 基于当前日期时间

cd /home/aiscuser/LLaMA-Factory

FORCE_TORCHRUN=1 llamafactory-cli train examples/train_full/qwen3_full_sft.yaml > /home/aiscuser/LLaMA-Factory/output/train_qwen3-14b_full_sft_from_ai_npc_v3_0626.log 2>&1

python /home/aiscuser/temp2.py