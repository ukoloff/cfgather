INSERT INTO `model` (`id`, `name`, `ctime`, `ANSI`, `comment`) VALUES
(1, 'cisco', '2012-09-04 11:35:07', 0, 'Cisco вообще'),
(2, 'asa', '2012-09-04 11:35:29', 0, 'Cisco ASA'),
(3, 'hp3c', '2012-09-04 11:35:29', 0, 'HP'),
(4, 'procurve', '2012-09-04 11:35:44', 1, 'HP ProCurve');

INSERT INTO `snippet` (`model`, `name`, `command`, `comment`) VALUES
(1, 'init', 'ip ssh pubkey-chain\r\n  username cfgather\r\n   key-hash ssh-rsa 3227546273A9E34E953F0D54C168AFE6 cfgather@w3.uxm\r\n  quit', NULL),
(2, 'init', 'username cfgather password ABCDEFGHIJKLMNOP encrypted\r\nusername cfgather attributes\r\n service-type admin\r\n ssh authentication publickey 5b:7c:0c:4b:d1:22:6f:e3:bb:10:36:32:31:8c:47:7b:d4:1a:ac:df:3c:d9:f1:e8:c2:af:d0:12:ad:92:ba:47 hashed', NULL),
(3, 'init', 'public-key peer cfgather@w3.uxm\r\n  public-key-code begin\r\n   30820120300D06092A864886F70D01010105000382010D00308201080282010100BA81AB2F\r\n   CB83832A6D89BDA0612B5B55A53FB518BA767245384C8743C0AD26E78EE2B45CA10A571951\r\n   B8F8F9A6D770435592D574570B688B3A1433E31BC9485B209F53B9C374C0CC55988797BBBC\r\n   23DCDD3D1B93E094FF595856FC47E7B96E0021A61BFE13CB7E6067F58EFDD19CC858918C8F\r\n   E8A6B4A2F54C074A9BC3A27E4B7E07B8B5C2241038B08ED0F53B50B1F583DEDF322CFAB175\r\n   81F88901111F6B845E8566225A74811AC077F06DC8D75B722B503F0E019D118683F20B6EB6\r\n   C8558E2419F75D20776030E91575FDCF165ED805C7A02EECE8853259F6CDFBA625446C8BEF\r\n   070932E8EF735A9CEDFE5B624AEE0B7930A98EFFBC0EB59A87B02970F649020123\r\n  public-key-code end\r\npeer-public-key end\r\n\r\nssh user cfgather service-type all authentication-type publickey assign publickey cfgather@w3.uxm work-directory /', NULL),
(4, 'init', 'no ip ssh filetransfer\r\ntftp client\r\ncopy tftp pub-key-file 192.168.22.242 authorized_keys manager', 'Должен работать TFTP-сервер'),
(1, 'config', 'show running-config', NULL),
(2, 'config', 'show running-config', NULL),
(3, 'config', 'display current-configuration', NULL),
(1, 'adduser', 'ip ssh pubkey-chain\r\n  username cfgather\r\n   key-hash ssh-rsa 3227546273A9E34E953F0D54C168AFE6 cfgather@w3.uxm\r\n  quit', NULL),
(2, 'adduser', 'username cfgather password ABCDEFGHIJKLMNOP encrypted\r\nusername cfgather attributes\r\n service-type admin\r\n ssh authentication publickey 5b:7c:0c:4b:d1:22:6f:e3:bb:10:36:32:31:8c:47:7b:d4:1a:ac:df:3c:d9:f1:e8:c2:af:d0:12:ad:92:ba:47 hashed', NULL),
(3, 'adduser', 'public-key peer cfgather@w3.uxm\r\n  public-key-code begin\r\n   30820120300D06092A864886F70D01010105000382010D00308201080282010100BA81AB2F\r\n   CB83832A6D89BDA0612B5B55A53FB518BA767245384C8743C0AD26E78EE2B45CA10A571951\r\n   B8F8F9A6D770435592D574570B688B3A1433E31BC9485B209F53B9C374C0CC55988797BBBC\r\n   23DCDD3D1B93E094FF595856FC47E7B96E0021A61BFE13CB7E6067F58EFDD19CC858918C8F\r\n   E8A6B4A2F54C074A9BC3A27E4B7E07B8B5C2241038B08ED0F53B50B1F583DEDF322CFAB175\r\n   81F88901111F6B845E8566225A74811AC077F06DC8D75B722B503F0E019D118683F20B6EB6\r\n   C8558E2419F75D20776030E91575FDCF165ED805C7A02EECE8853259F6CDFBA625446C8BEF\r\n   070932E8EF735A9CEDFE5B624AEE0B7930A98EFFBC0EB59A87B02970F649020123\r\n  public-key-code end\r\npeer-public-key end\r\n\r\nssh user cfgather service-type all authentication-type publickey assign publickey cfgather@w3.uxm work-directory /', NULL),
(1, 'deluser', 'ip ssh pubkey-chain\r\n  no username Backup', NULL),
(2, 'deluser', 'no username Backup attributes\r\nno username Backup', NULL),
(3, 'deluser', 'undo ssh user Backup\r\nundo public-key peer Backup@w3.uxm\r\nY', NULL),
(1, 'syslog', 'logging 192.168.16.6', NULL),
(2, 'syslog', 'logging host int 192.168.16.6', NULL),
(3, 'syslog', 'info-center loghost 192.168.16.6', NULL),
(4, 'config', 'show running-config', NULL);

INSERT INTO `snippet` (`model`, `name`, `command`, `comment`) VALUES
(1, '<session>', 'terminal length 0', NULL),
(1, '</session>', 'exit', NULL),
(1, '<config>', 'configure terminal', NULL),
(1, '</config>', 'write memory\r\nexit', NULL),
(2, '<session>', 'en\r\n\r\nterminal pager 0', NULL),
(2, '</session>', 'exit', NULL),
(2, '<config>', 'configure terminal', NULL),
(2, '</config>', 'end\r\nwrite memory', NULL),
(3, '<session>', 'screen-length disable', NULL),
(3, '</session>', 'quit', NULL),
(3, '<config>', 'system-view', NULL),
(3, '</config>', 'quit\r\nsave force', NULL),
(4, '<session>', '\r\n\r\nno page', NULL),
(4, '</session>', 'exit\r\nexit\r\ny', NULL),
(4, '<config>', 'configure terminal', NULL),
(4, '</config>', 'exit\r\nwrite memory', NULL);
