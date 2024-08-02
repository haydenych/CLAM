###############################################################################################

# Generate Splits
python3 create_splits_seq.py --task cptac_luad_male_vs_female --seed 2024 --k 10 --label_frac 1

###############################################################################################

# MIL, Label Frac 1
CUDA_VISIBLE_DEVICES=0 python main.py \
    --embed_dim 1024 --drop_out 0.25 --early_stopping --lr 2e-4 --k 10 \
    --weighted_sample --bag_loss ce --inst_loss svm --task cptac_luad_male_vs_female --log_data \
    --data_root_dir /home/heiheiyu127/Desktop/PMCC/data/CPTAC/CPTAC-LUAD/slides/features_5x/ \
    --exp_code male_vs_female_mil_100 --model_type mil --label_frac 1

# # CLAM_SB, Label Frac 1
CUDA_VISIBLE_DEVICES=0 python main.py \
    --embed_dim 1024 --drop_out 0.25 --early_stopping --lr 2e-4 --k 10 \
    --weighted_sample --bag_loss ce --inst_loss svm --task cptac_luad_male_vs_female --log_data \
    --data_root_dir /home/heiheiyu127/Desktop/PMCC/data/CPTAC/CPTAC-LUAD/slides/features_5x/ \
    --exp_code male_vs_female_clam_sb_100 --model_type clam_sb --label_frac 1

###############################################################################################