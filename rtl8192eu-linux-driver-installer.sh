git clone https://github.com/Mange/rtl8192eu-linux-driver.git && #Качаем git-репу
sudo apt-get install git linux-headers-generic build-essential dkms -y && #Ставим пакеты, если не стоят.
cd rtl8192eu-linux-driver && #Заходим в папку с исходниками, компилим:
make clean &&
make &&
sudo make install &&
echo "options 8192eu rtw_power_mgnt=0 rtw_enusbss=0" | sudo tee /etc/modprobe.d/8192eu.conf && #Запрещаем PowerManagment для нового драйвера, блэклистим стандартный драйвер:
echo "blacklist rtl8xxxu" | sudo tee /etc/modprobe.d/rtl8xxxu.conf &&
echo "Driver install successfully!" #Выводим в консоль сообщение, об успешном завершении установки.
