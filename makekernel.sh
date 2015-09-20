cd ${4}
export ${3}
export ${2}
make ${1}
make -j$CORE_COUNT
mkdir -p $OUT_DIR
mv ./arch/arm/boot/zImage $OUT_DIR
