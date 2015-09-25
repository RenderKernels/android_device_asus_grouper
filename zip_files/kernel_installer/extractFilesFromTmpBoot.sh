#!/sbin/sh
cd /tmp
/tmp/abootimg -x /tmp/boot.img
sum1=`sha1sum zImage | cut -d ' ' -f 1` #-- installtype=1
mkdir boot
cd boot
../abootimg -x ../tmp_boot.img
sum2=`sha1sum zImage | cut -d ' ' -f 1`
cd ..
if [ "$sum2" == "$sum1" ]; then
echo "security=0" > /tmp/security.prop
else
echo "security=1" > /tmp/security.prop
fi
exit 0
