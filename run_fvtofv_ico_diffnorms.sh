#!/bin/sh

rm -rf testdata_fvtofv_ico_diffnorms_1.txt
rm -rf testdata_fvtofv_ico_diffnorms_2.txt
rm -rf testdata_fvtofv_ico_diffnorms_3.txt

time ./GenerateTestData --mesh outICO72.g --test 1 --out testdata_ICO72_1.nc
time ./GenerateTestData --mesh outICO72.g --test 2 --out testdata_ICO72_2.nc
time ./GenerateTestData --mesh outICO72.g --test 3 --out testdata_ICO72_3.nc

./CalculateDiffNorms --a testdata_CSne15_ICO72_np1_1.nc --b testdata_ICO72_1.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_1.txt
./CalculateDiffNorms --a testdata_CSne15_ICO72_np2_1.nc --b testdata_ICO72_1.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_1.txt
./CalculateDiffNorms --a testdata_CSne15_ICO72_np3_1.nc --b testdata_ICO72_1.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_1.txt
./CalculateDiffNorms --a testdata_CSne15_ICO72_np4_1.nc --b testdata_ICO72_1.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_1.txt

./CalculateDiffNorms --a testdata_CSne30_ICO72_np1_1.nc --b testdata_ICO72_1.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_1.txt
./CalculateDiffNorms --a testdata_CSne30_ICO72_np2_1.nc --b testdata_ICO72_1.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_1.txt
./CalculateDiffNorms --a testdata_CSne30_ICO72_np3_1.nc --b testdata_ICO72_1.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_1.txt
./CalculateDiffNorms --a testdata_CSne30_ICO72_np4_1.nc --b testdata_ICO72_1.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_1.txt

./CalculateDiffNorms --a testdata_CSne60_ICO72_np1_1.nc --b testdata_ICO72_1.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_1.txt
./CalculateDiffNorms --a testdata_CSne60_ICO72_np2_1.nc --b testdata_ICO72_1.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_1.txt
./CalculateDiffNorms --a testdata_CSne60_ICO72_np3_1.nc --b testdata_ICO72_1.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_1.txt
./CalculateDiffNorms --a testdata_CSne60_ICO72_np4_1.nc --b testdata_ICO72_1.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_1.txt

./CalculateDiffNorms --a testdata_CSne15_ICO72_np1_2.nc --b testdata_ICO72_2.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_2.txt
./CalculateDiffNorms --a testdata_CSne15_ICO72_np2_2.nc --b testdata_ICO72_2.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_2.txt
./CalculateDiffNorms --a testdata_CSne15_ICO72_np3_2.nc --b testdata_ICO72_2.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_2.txt
./CalculateDiffNorms --a testdata_CSne15_ICO72_np4_2.nc --b testdata_ICO72_2.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_2.txt

./CalculateDiffNorms --a testdata_CSne30_ICO72_np1_2.nc --b testdata_ICO72_2.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_2.txt
./CalculateDiffNorms --a testdata_CSne30_ICO72_np2_2.nc --b testdata_ICO72_2.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_2.txt
./CalculateDiffNorms --a testdata_CSne30_ICO72_np3_2.nc --b testdata_ICO72_2.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_2.txt
./CalculateDiffNorms --a testdata_CSne30_ICO72_np4_2.nc --b testdata_ICO72_2.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_2.txt

./CalculateDiffNorms --a testdata_CSne60_ICO72_np1_2.nc --b testdata_ICO72_2.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_2.txt
./CalculateDiffNorms --a testdata_CSne60_ICO72_np2_2.nc --b testdata_ICO72_2.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_2.txt
./CalculateDiffNorms --a testdata_CSne60_ICO72_np3_2.nc --b testdata_ICO72_2.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_2.txt
./CalculateDiffNorms --a testdata_CSne60_ICO72_np4_2.nc --b testdata_ICO72_2.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_2.txt

./CalculateDiffNorms --a testdata_CSne15_ICO72_np1_3.nc --b testdata_ICO72_3.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_3.txt
./CalculateDiffNorms --a testdata_CSne15_ICO72_np2_3.nc --b testdata_ICO72_3.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_3.txt
./CalculateDiffNorms --a testdata_CSne15_ICO72_np3_3.nc --b testdata_ICO72_3.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_3.txt
./CalculateDiffNorms --a testdata_CSne15_ICO72_np4_3.nc --b testdata_ICO72_3.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_3.txt

./CalculateDiffNorms --a testdata_CSne30_ICO72_np1_3.nc --b testdata_ICO72_3.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_3.txt
./CalculateDiffNorms --a testdata_CSne30_ICO72_np2_3.nc --b testdata_ICO72_3.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_3.txt
./CalculateDiffNorms --a testdata_CSne30_ICO72_np3_3.nc --b testdata_ICO72_3.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_3.txt
./CalculateDiffNorms --a testdata_CSne30_ICO72_np4_3.nc --b testdata_ICO72_3.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_3.txt

./CalculateDiffNorms --a testdata_CSne60_ICO72_np1_3.nc --b testdata_ICO72_3.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_3.txt
./CalculateDiffNorms --a testdata_CSne60_ICO72_np2_3.nc --b testdata_ICO72_3.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_3.txt
./CalculateDiffNorms --a testdata_CSne60_ICO72_np3_3.nc --b testdata_ICO72_3.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_3.txt
./CalculateDiffNorms --a testdata_CSne60_ICO72_np4_3.nc --b testdata_ICO72_3.nc --mesh outICO72.g --outfile testdata_fvtofv_ico_diffnorms_3.txt

