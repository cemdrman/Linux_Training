uname: sistemin hakkında bilgi verir.
	uname -a: kernel sürümü, kernel adı, hostname ve çekirdek mimarisi bilgilerini verir.
cal: bulunduğumuzun ayın takvimini verir.
	cal 1994: 1994 yılının aylarını getirir.
	cal 3 1994 : 1994 yılının mart ayını getirir.
date: sistem saatini getirir.
hostname: bilgisayar adını getirir.
w-who-whoami: 
	w: hangi kullanıcı hangi uygulamayı kullandığı bilgisi,
	whoami / who am i: sistemi kullanıcısını gösterir.

uptime: sistemin ne kadar süredir açık olduğunu gösterir.
locate: aranılan dosyanın hangi dizinde olduğunu gösterir.
	locate conf
dmidecode: donanım ve BIOS hakkında bilgi verir.
	dmidecode -t ile;
		system
		baseboard
		chassis
		processor
		memory
		cache
		connector
		slot			parametrelerini seçebilirsiniz.

history: kullanılan komut geçmişini listeler. parametre geçmeden de listeleyebileceğiniz gibi parametre vererek de ulaşabilirsiniz.
	history
	history 10
	Default değeri öğrenmek için ise;
	echo $HISTSIZE 
	Bu değeri değiştirmek isterseniz .bashrc dosyasınından yeni değeri atayabilirsiniz.