./build.sh tests
export BUILD_SUCCESS=$?

if [[ $BUILD_SUCCESS -eq 0 ]] 
then
    ../build/tests
fi
