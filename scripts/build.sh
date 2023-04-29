cd ..

cmake -Bbuild -H.
cmake --build build --target $1

if [[ $? -ne 0 ]] 
then
    exit 1
else
    exit 0
fi
