# # Generate Splits
# python3 create_splits_seq.py --task uhn_luad_hne_20x --seed 2024 --k 10 --label_frac 1

# ###############################################################################################

# # MIL, Label Frac 1
# CUDA_VISIBLE_DEVICES=0 python main.py \
#     --embed_dim 1024 --drop_out 0.25 --early_stopping --lr 2e-5 --k 10 \
#     --weighted_sample --bag_loss ce --inst_loss svm --task uhn_luad_hne_20x --log_data \
#     --data_root_dir "/media/heiheiyu127/Hayden's HD/PMCC/data/uhn_luad/HNE/features_20x/" \
#     --exp_code uhn_luad_hne_20x_mb_big_1 --model_type clam_mb --model_size big --label_frac 1

# Generate Splits
python3 create_splits_seq.py --task uhn_luad_hne_5x --seed 2024 --k 10 --label_frac 1

###############################################################################################

# MIL, Label Frac 1
CUDA_VISIBLE_DEVICES=0 python main.py \
    --embed_dim 1024 --drop_out 0.25 --early_stopping --lr 2e-5 --k 10 \
    --weighted_sample --bag_loss ce --inst_loss svm --task uhn_luad_hne_5x --log_data \
    --data_root_dir "/media/heiheiyu127/Hayden's HD/PMCC/data/uhn_luad/HNE/features_5x/" \
    --exp_code uhn_luad_hne_5x_mb_small_1 --model_type clam_mb --model_size small --label_frac 1