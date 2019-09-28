pwd: hangi dizinde olduğunu verir.
cd: dizinler arası geçişi sağlar.
	cd cemdirman/Desktop/Linux_Training/
	cd ..    		bir alt dizine 
	cd ../..  		iki alt dizine
	cd 				sadece bu komut ile hangi dizinde olursanız olun kendi home dizinine geçiş yapmış olursunuz.
ls: klasör ve dosyaları listelemek için kullanılır.
	ls
	ls -l  			izinleri, hangi kullanıcının oluşturduğunu, oluşturma tarihini,
	ls -a           gizli dosyaları,
	ls -la    		gizli dosyaların da ayrıntı bilgisini,
	ls -R 			recursive olarak bütün dosya ve klasörleri,
	ls -S 			dosya boyutuna göre listeler.
touch: text dosyası oluşturur.
	touch denemeDosyasi
cat: dosya içeriğini terminale yazdırır.
	cat denemeDosyasi
echo: terminale yazmak ve var olan system değişkenlerini ekrana yazdırmak için kullanılır. bunun yanında bir dosyaya yazı yazmak için de kullanılabilir.
	echo ekrana yazdır
	echo dosyaya yazdır > testDosyasi                   	dosya boş değilse önceki yazılar silinir.
	echo dosyaya bir kere daha yaz >> testDosyasi			dosya boş değilse apend modda açıp öyle yazar.

Log dosyalarını okumak için kullaanabileceğiniz;

more
less
head
	head -n 10 						ilk 10 satırı,
tail
	tail -n 10						son 10 satırı listeler.
grep: dosya içerisinde string bir ifade aramak için kullanılır.
	grep -v: verilen ifade haricindeki satırları listelemez.
	grep -i: büyük/küçük harf duyarlılığı yapılmaz.
	grep -r: recursive arama yapar.
cp: dosya kopyalamak için kullanılır. 
	cp <kaynak> <hedef>  şeklinde syntax mevcut.
	cp dosyaDizinKomutları cemdirman/Desktop/HedefKlasör
mv: dosya taşımak için kullanılır.
	mv cemdirman/Desktop/HedefKlasör/dosyaDizinKomutları cemdirman/Desktop/Linux_Training/Chapter1
mkdir: dizin oluşturmak için kullanılır.
	mkdir HedefKlasör
	mkdir cemdirman/Desktop/TestKlasör/klasör1
		eğer üstteki komutta "TestKlasör" isimli klasör yoksa -p parametresi ile çalıştırarak olmayan klasörleri de oluşturmasını sağlarız.  
rm: dosya ve dizin silme işlemi için kullanılır. birden fazla parametre vererek aynı andan silme yapabilirsiniz.
	rm testDosyasi1 testDosyasi2.txt testDosyasi3.png
	rm -r cemdirman/Desktop/Linux_Training 					recursive olarak alt klasörleri de siler.

Dosya / Dizin Erişim Yetkisi

bir kullanıcı aşağıdaki izinlere sahip olaabilir;
r: read
w: write
x: execute

yukarıda listeleme komutlarında bahsettiğimiz gibi ls -l ile dosyanın izinlerine bakabiliriz.

	cemdirman$ ls -l
	total 16
    -rw-r--r--@ 1 cemdirman  staff  1107 26 Eyl 12:16 bilgiAlmaKomutları.sh
    -rw-r--r--  1 cemdirman  staff     0 27 Eyl 22:45 dosya1
    -rw-r--r--  1 cemdirman  staff     0 27 Eyl 22:45 dosya2
    -rw-r--r--@ 1 cemdirman  staff  2435 27 Eyl 17:24 dosyaDizinKomutları.sh
    drwxr-xr-x  2 cemdirman  staff    64 27 Eyl 22:45 klasör1
    drwxr-xr-x  2 cemdirman  staff    64 27 Eyl 22:45 klasör2

ifadeleri incelersek;

en başta bulunan d harfi directory(dizin) olduğunu, - ise dosya olduğunu ifade eder.
izinler ise üçlü gruplanarak okunabilir. aradaki - zaten bu grupları ifade eder.

1.Grup: sahibinin izinelerini,
2.Grup: sahibiyle aynı gruptaki kullanıcının izinelerini,
3.Grup: diğer kullanıcıların izinelerini ifade eder.


erişim yetkisi vermek;

Bu işlemi root kullanıcı gerçekleştirebilir. Bu sebepten root değilseniz önce root olmanız gerekmektedir.
Daha sonra chmod komutuyla gerçekleştirebilir.

chmod <ugoa><+-> <rwe> <dosya/dizin> 

u: user
g: group
o: others

+: yetki ekleme oparatörü
-: yetki alma oparatörü

	cemdirman$ ls -l
	total 16
    -rw-r--r--@ 1 cemdirman  staff  1107 26 Eyl 12:16 bilgiAlmaKomutları.sh
    -rw-rw-r--  1 cemdirman  staff     0 27 Eyl 22:45 dosya1
    -rw-r--r--  1 cemdirman  staff     0 27 Eyl 22:45 dosya2
    -rw-r--r--@ 1 cemdirman  staff  3592 28 Eyl 07:40 dosyaDizinKomutları.sh
    drwxr-xr-x  2 cemdirman  staff    64 27 Eyl 22:45 klasör1
    drwxr-xr-x  2 cemdirman  staff    64 27 Eyl 22:45 klasör2

Aşağıdaki komutlar yukarıdaki çıktı üzerinden örneklendirilecektir.

dosya1 group rolünde write izni mevcut. dosya2 iki için de aynı izni verelim.
	
	chmod g+w dosya2
	ls -l

	-rw-rw-r--  1 cemdirman  staff     0 27 Eyl 22:45 dosya1
    -rw-rw-r--  1 cemdirman  staff     0 27 Eyl 22:45 dosya2

dosya1 ve dosya2 group ve others rw yetkilerini alalım ve sadece dosyanın sahibi bu izinlere sahip olsun.

	chmod go-rw dosya1 dosya2
	ls -l

    -rw-------  1 cemdirman  staff     0 27 Eyl 22:45 dosya1
    -rw-------  1 cemdirman  staff     0 27 Eyl 22:45 dosya2

dosya1 ve dosya2 sahibi execute iznine de sahip olsun.

	chmod u+x dosya1 dosya2
    ls -l

    -rwx------  1 cemdirman  staff     0 27 Eyl 22:45 dosya1
    -rwx------  1 cemdirman  staff     0 27 Eyl 22:45 dosya2











