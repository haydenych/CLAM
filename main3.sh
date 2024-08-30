###############################################################################################

# Generate Splits
python3 create_splits_seq.py --task cptac_type --seed 2024 --k 10 --label_frac 1

###############################################################################################

# MIL, Label Frac 1
CUDA_VISIBLE_DEVICES=0 python main.py \
    --embed_dim 1024 --drop_out 0.25 --early_stopping --lr 2e-4 --k 10 \
    --weighted_sample --bag_loss ce --inst_loss svm --task cptac_type --log_data \
    --data_root_dir /home/heiheiyu127/Desktop/PMCC/data/CPTAC/mixed/ \
    --exp_code cancer_type_mil_100 --model_type mil --label_frac 1

# # CLAM_MB, Label Frac 1
CUDA_VISIBLE_DEVICES=0 python main.py \
    --embed_dim 1024 --drop_out 0.25 --early_stopping --lr 2e-4 --k 10 \
    --weighted_sample --bag_loss ce --inst_loss svm --task cptac_type --log_data \
    --data_root_dir /home/heiheiyu127/Desktop/PMCC/data/CPTAC/mixed/ \
    --exp_code cancer_type_clam_mb_100 --model_type clam_mb --label_frac 1

###############################################################################################