# Script taken from Imoseyon and modified by LorD CLockaN #


#TOOLCHAIN=/home/lord/android/system/prebuilt/linux-x86/toolchain/arm-2011/bin/
#TOOLCHAIN=/home/lord/android/system/prebuilt/linux-x86/toolchain/arm-eabi-4.5.4/bin/
#TOOLCHAIN_PREFIX=arm-eabi-

PATH=$PATH:/home/lord/Desktop/dhd/arm-eabi-4.4.3/bin/
export CCOMPILER=/home/lord/Desktop/dhd/arm-eabi-4.4.3/bin/arm-eabi-

make -j16 ARCH=arm CROSS_COMPILE=$CCOMPILER


cp arch/arm/boot/zImage ../finished/OneXzimage;

find . -iname "*.ko" -exec cp {} ../finished/OneXmodules \;

echo "";
echo "COMPILING FINISHED!!!";
echo "";
echo "Press any key to do a \"make clean\" or CTRL+C to skip it";
read;
alias make='make -j16 ARCH=arm CROSS_COMPILE=$CCOMPILER'
make clean
