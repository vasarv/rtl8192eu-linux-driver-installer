git clone https://github.com/Mange/rtl8192eu-linux-driver.git &&
sudo apt-get install git linux-headers-generic build-essential dkms &&
cd rtl8192eu-linux-driver &&
make clean &&
make &&
sudo make install &&
echo "options 8192eu rtw_power_mgnt=0 rtw_enusbss=0" | sudo tee /etc/modprobe.d/8192eu.conf &&
echo "blacklist rtl8xxxu" | sudo tee /etc/modprobe.d/rtl8xxxu.conf &&
echo "Driver install successfully!"
