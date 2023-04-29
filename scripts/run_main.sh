./build.sh main
export BUILD_SUCCESS=$?

run_main() {
    echo "====FOLLOWING=MAIN=IO=STREAM===="
    echo "stdio begin >>"
    ../build/main
    echo "<< stdio end"
    echo "================================"
}

if [[ $BUILD_SUCCESS -eq 0 ]]
then
    run_main
fi
