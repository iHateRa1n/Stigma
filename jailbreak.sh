echo "StigmaX is installing, please wait... "
if [ ! -f already_run ]; then
    apt-get update
fi
apt-get -y --force-yes install com.coolbooter.coolbootercli;
echo;
echo "Please enter final amount of desired storage in GB. (up to device capacity - 4)"
read gb
echo "Enter iOS Version"
read ios
echo "WARNING! A LOT OF TEXT WILL SOON FLOOD THE SCREEN. EPILEPSY WARNING! "
sleep 5
coolbootercli ios --datasize $gbGB
apt-get -y --force-yes install com.coolbooter.cbuntether
touch already_run
