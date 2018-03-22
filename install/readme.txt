1. bind-install.sh为安装bind脚本，注意：操作系统要为centos7系列；脚本跑完后，把/var/named目录备份转移出去，将准备好的named目录拷贝到/var/目录下。
2. nsupdate-add.txt与nsupdate-delete.txt分别为添加、修改主服务的zone脚本，执行方式为：sh  /etc/key-external.dnskey nsupdate-add.txt 。其中/etc/key-external.dnskey为中空机上的关于bind密钥。
