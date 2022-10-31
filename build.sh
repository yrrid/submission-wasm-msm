echo 'Building the WASM Project, Please wait....'
cd C
rm WMSM.wasm
make 
cp WMSM.wasm ../submission/submission.wasm
echo 'Build Completed!!'
