#process 

$ps : sistemde aktif olan kullanıcının process listeler.
$ps -e : sistemde çalışan tüm process ayrıntılı listeler.
$ps -u <userName> : parametre olarak verilen kullanıcının process listeler.

$top : anlık olarak sistemdeki process ve kaynak kullanımını gösterir.

$top

Processes: 406 total, 2 running, 404 sleeping, 2032 threads                                                           21:30:01
Load Avg: 2.09, 1.78, 1.86  CPU usage: 4.29% user, 4.77% sys, 90.93% idle   SharedLibs: 260M resident, 58M data, 87M linkedit.
MemRegions: 200073 total, 2287M resident, 104M private, 967M shared. PhysMem: 8047M used (2588M wired), 145M unused.
VM: 7482G vsize, 1371M framework vsize, 190583774(128) swapins, 194143056(0) swapouts.
Networks: packets: 18363805/22G in, 15208804/1765M out. Disks: 38447794/1044G read, 15376493/863G written.

PID    COMMAND      %CPU TIME     #TH   #WQ  #PORT MEM    PURG   CMPRS  PGRP  PPID  STATE    BOOSTS             %CPU_ME
98341  com.apple.We 0.0  00:38.41 4     1    164   79M    0B     75M    98341 1     sleeping *0-[15838]         0.00000
95776  ssh-agent    0.0  00:00.03 1     0    21    828K   0B     812K   95776 1     sleeping *0[1]              0.00000
95742  com.apple.We 0.0  00:34.18 4     1    116   75M    0B     71M    95742 1     sleeping *0-[15626]         0.00000
95603  com.apple.We 0.0  01:47.47 5     1    131   247M   0B     240M   95603 1     sleeping *0-[14470]         0.00000
95561  mysqld       0.5  74:25.41 39    0    61    351M   0B     350M   95561 1     sleeping *0[1]              0.00000
95445  studentd     0.0  01:34.68 2     1    141   12M    0B     8348K  95445 1     sleeping *0[1]              0.00000

#kill: sistemdeki process sonlandırmak için kullanılır.

kill <PID>    : pid ile verilen process sonlandırır.
kill -9 <PID> : sonlandıramadığınız process kesin olarak sonlandırır.
kill <servis-adı> : verilen servisin ilgili bütün process sonlandırır.

$kill mysqld