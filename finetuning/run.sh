torchrun --nproc_per_node=8 --master_port=2000 train.py \
    --model_name_or_path decapoda-research/llama-7b-hf \
    --data_path MID_train_EN_data.json \
    --fp16 True \
    --output_dir $GEMINI_DATA_OUT \
    --num_train_epochs 3 \
    --per_device_train_batch_size 8 \
    --per_device_eval_batch_size 8 \
    --gradient_accumulation_steps 4 \
    --evaluation_strategy "no" \
    --save_strategy "steps" \
    --save_steps 500 \
    --save_total_limit 1 \
    --learning_rate 2e-5 \
    --weight_decay 0. \
    --warmup_ratio 0.03 \
    --lr_scheduler_type "cosine" \
    --logging_steps 1 \
    --deepspeed ds_config.json