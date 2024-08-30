# Generate Splits
python3 create_splits_seq.py --task cptac_luad_tumor_vs_normal_20x --seed 2024 --k 10 --label_frac 1

###############################################################################################

# MIL, Label Frac 1
CUDA_VISIBLE_DEVICES=0 python main.py \
    --embed_dim 1024 --drop_out 0.25 --early_stopping --lr 2e-4 --k 10 \
    --weighted_sample --bag_loss ce --inst_loss svm --task cptac_luad_tumor_vs_normal_20x --log_data \
    --data_root_dir /home/heiheiyu127/Desktop/PMCC/data/CPTAC/CPTAC-LUAD/slides/features_20x/ \
    --exp_code tumor_vs_normal_mil_100_20x --model_type mil --label_frac 1

# CLAM_SB, Label Frac 1
CUDA_VISIBLE_DEVICES=0 python main.py \
    --embed_dim 1024 --drop_out 0.25 --early_stopping --lr 2e-4 --k 10 \
    --weighted_sample --bag_loss ce --inst_loss svm --task cptac_luad_tumor_vs_normal_20x --log_data \
    --data_root_dir /home/heiheiyu127/Desktop/PMCC/data/CPTAC/CPTAC-LUAD/slides/features_20x/ \
    --exp_code tumor_vs_normal_clam_sb_100_20x --model_type clam_sb --label_frac 1