关于dns父域的配置。
请把“named-**/”目录中的内容放置在/var/named/目录下，注意把bind监听端口设置成本机的。
其中“named-master”目录为父域主服务的配置。“named-slave01”目录为父域第一个从服务的配置,以此类推，第二个从服务配置请参考“named-slave01”目录配置。
