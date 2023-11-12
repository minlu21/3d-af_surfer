#!/usr/bin/env bash

# Create all necessary directories - remember to add UP000006548 when publishing this to github
directories=("UP000001940" "UP000000559" "UP000000437" "UP000002195" "UP000000803" "UP000000625" "UP000008827" "UP000005640" "UP000008153" "UP000000805" "UP000000589" "UP000001584" "UP000059680" "UP000001450" "UP000002494" "UP000002311" "UP000002485" "UP000008816" "UP000002296" "UP000007305")
for i in ${directories[@]}; do
    mkdir "data/$i"
done

# wget https://ftp.ebi.ac.uk/pub/databases/alphafold/v4/UP000006548_3702_ARATH_v4.tar
# tar xvf UP000006548_3702_ARATH_v4.tar -C data/UP000006548
# rm UP000006548_3702_ARATH_v4.tar 

# wget https://ftp.ebi.ac.uk/pub/databases/alphafold/v4/UP000001940_6239_CAEEL_v4.tar
# tar xvf UP000001940_6239_CAEEL_v4.tar -C data/UP000001940
# rm UP000001940_6239_CAEEL_v4.tar

# wget https://ftp.ebi.ac.uk/pub/databases/alphafold/v4/UP000000559_237561_CANAL_v4.tar
# tar xvf UP000000559_237561_CANAL_v4.tar -C data/UP000000559
# rm UP000000559_237561_CANAL_v4.tar

# wget https://ftp.ebi.ac.uk/pub/databases/alphafold/v4/UP000000437_7955_DANRE_v4.tar
# tar xvf UP000000437_7955_DANRE_v4.tar -C data/UP000000437
# rm UP000000437_7955_DANRE_v4.tar

# wget https://ftp.ebi.ac.uk/pub/databases/alphafold/v4/UP000002195_44689_DICDI_v4.tar
# tar xvf UP000002195_44689_DICDI_v4.tar -C data/UP000002195
# rm UP000002195_44689_DICDI_v4.tar

# wget https://ftp.ebi.ac.uk/pub/databases/alphafold/v4/UP000000803_7227_DROME_v4.tar
# tar xvf UP000000803_7227_DROME_v4.tar -C data/UP000000803
# rm UP000000803_7227_DROME_v4.tar

# wget https://ftp.ebi.ac.uk/pub/databases/alphafold/v4/UP000000625_83333_ECOLI_v4.tar
# tar xvf UP000000625_83333_ECOLI_v4.tar -C data/UP000000625
# rm UP000000625_83333_ECOLI_v4.tar

# wget https://ftp.ebi.ac.uk/pub/databases/alphafold/v4/UP000008827_3847_SOYBN_v4.tar
# tar xvf UP000008827_3847_SOYBN_v4.tar -C data/UP000008827
# rm UP000008827_3847_SOYBN_v4.tar

wget https://ftp.ebi.ac.uk/pub/databases/alphafold/v4/UP000005640_9606_HUMAN_v4.tar
tar xvf UP000005640_9606_HUMAN_v4.tar -C data/UP000005640
rm UP000005640_9606_HUMAN_v4.tar

wget https://ftp.ebi.ac.uk/pub/databases/alphafold/v4/UP000008153_5671_LEIIN_v4.tar
tar xvf UP000008153_5671_LEIIN_v4.tar -C data/UP000008153
rm UP000008153_5671_LEIIN_v4.tar

wget https://ftp.ebi.ac.uk/pub/databases/alphafold/v4/UP000000805_243232_METJA_v4.tar
tar xvf UP000000805_243232_METJA_v4.tar -C data/UP000000805
rm UP000000805_243232_METJA_v4.tar

wget https://ftp.ebi.ac.uk/pub/databases/alphafold/v4/UP000000589_10090_MOUSE_v4.tar
tar xvf UP000000589_10090_MOUSE_v4.tar -C data/UP000000589
rm UP000000589_10090_MOUSE_v4.tar

wget https://ftp.ebi.ac.uk/pub/databases/alphafold/v4/UP000001584_83332_MYCTU_v4.tar
tar xvf UP000001584_83332_MYCTU_v4.tar -C data/UP000001584
rm UP000001584_83332_MYCTU_v4.tar

wget https://ftp.ebi.ac.uk/pub/databases/alphafold/v4/UP000059680_39947_ORYSJ_v4.tar
tar xvf UP000059680_39947_ORYSJ_v4.tar -C data/UP000059680
rm UP000059680_39947_ORYSJ_v4.tar

wget https://ftp.ebi.ac.uk/pub/databases/alphafold/v4/UP000001450_36329_PLAF7_v4.tar
tar xvf UP000001450_36329_PLAF7_v4.tar -C data/UP000001450
rm UP000001450_36329_PLAF7_v4.tar

wget https://ftp.ebi.ac.uk/pub/databases/alphafold/v4/UP000002494_10116_RAT_v4.tar
tar xvf UP000002494_10116_RAT_v4.tar -C data/UP000002494
rm UP000002494_10116_RAT_v4.tar

wget https://ftp.ebi.ac.uk/pub/databases/alphafold/v4/UP000002311_559292_YEAST_v4.tar
tar xvf UP000002311_559292_YEAST_v4.tar -C data/UP000002311
rm UP000002311_559292_YEAST_v4.tar

wget https://ftp.ebi.ac.uk/pub/databases/alphafold/v4/UP000002485_284812_SCHPO_v4.tar
tar xvf UP000002485_284812_SCHPO_v4.tar -C data/UP000002485
rm UP000002485_284812_SCHPO_v4.tar

wget https://ftp.ebi.ac.uk/pub/databases/alphafold/v4/UP000008816_93061_STAA8_v4.tar
tar xvf UP000008816_93061_STAA8_v4.tar -C data/UP000008816
rm UP000008816_93061_STAA8_v4.tar

wget https://ftp.ebi.ac.uk/pub/databases/alphafold/v4/UP000002296_353153_TRYCC_v4.tar
tar xvf UP000002296_353153_TRYCC_v4.tar -C data/UP000002296
rm UP000002296_353153_TRYCC_v4.tar

wget https://ftp.ebi.ac.uk/pub/databases/alphafold/v4/UP000007305_4577_MAIZE_v4.tar
tar xvf UP000007305_4577_MAIZE_v4.tar -C data/UP000007305
rm UP000007305_4577_MAIZE_v4.tar

