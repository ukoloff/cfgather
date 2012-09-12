INSERT INTO `model` (`id`, `name`, `ctime`, `ANSI`, `comment`) VALUES
(1, 'cisco', '2012-09-04 11:35:07', 0, 'Cisco ������'),
(2, 'asa', '2012-09-04 11:35:29', 0, 'Cisco ASA'),
(3, 'hp3c', '2012-09-04 11:35:29', 0, 'HP'),
(4, 'procurve', '2012-09-04 11:35:44', 1, 'HP ProCurve');

INSERT INTO `snippet` (`id`, `model`, `name`, `command`, `comment`) VALUES
(1, 2, 'init', 'en\r\n\r\nconfigure terminal\r\n\r\nusername Backup nopassword privilege 15\r\nusername Backup attributes\r\n service-type admin\r\n ssh authentication publickey 5b:7c:0c:4b:d1:22:6f:e3:bb:10:36:32:31:8c:47:7b:d4:1a:ac:df:3c:d9:f1:e8:c2:af:d0:12:ad:92:ba:47 hashed\r\n\r\nend\r\nwrite memory\r\nexit\r\n', NULL),
(2, 2, 'config', 'en\r\n\r\nterminal pager 0\r\n#<Configuration>\r\nshow running-config\r\n#</Configuration>\r\nexit\r\n', NULL),
(3, 1, 'init', 'configure terminal\r\n\r\nip ssh pubkey-chain\r\n  username Backup\r\n   key-hash ssh-rsa 3227546273A9E34E953F0D54C168AFE6 Backup@w3.uxm\r\n  quit\r\n\r\nend\r\nwrite memory\r\nexit\r\n', NULL),
(4, 1, 'config', 'terminal length 0\r\n#<Configuration>\r\nshow running-config\r\n#</Configuration>\r\nexit\r\n', NULL),
(5, 3, 'init', 'system-view\r\n\r\n public-key peer Backup@w3.uxm\r\n  public-key-code begin\r\n   30820120300D06092A864886F70D01010105000382010D00308201080282010100BA81AB2F\r\n   CB83832A6D89BDA0612B5B55A53FB518BA767245384C8743C0AD26E78EE2B45CA10A571951\r\n   B8F8F9A6D770435592D574570B688B3A1433E31BC9485B209F53B9C374C0CC55988797BBBC\r\n   23DCDD3D1B93E094FF595856FC47E7B96E0021A61BFE13CB7E6067F58EFDD19CC858918C8F\r\n   E8A6B4A2F54C074A9BC3A27E4B7E07B8B5C2241038B08ED0F53B50B1F583DEDF322CFAB175\r\n   81F88901111F6B845E8566225A74811AC077F06DC8D75B722B503F0E019D118683F20B6EB6\r\n   C8558E2419F75D20776030E91575FDCF165ED805C7A02EECE8853259F6CDFBA625446C8BEF\r\n   070932E8EF735A9CEDFE5B624AEE0B7930A98EFFBC0EB59A87B02970F649020123\r\n  public-key-code end\r\n peer-public-key end\r\n\r\nssh user Backup service-type all authentication-type publickey assign publickey Backup@w3.uxm work-directory /\r\n\r\nsave force\r\nquit\r\nquit\r\n', NULL),
(6, 3, 'config', 'screen-length disable\r\n#<Configuration>\r\ndisplay current-configuration\r\n#</Configuration>\r\nquit\r\n', NULL),
(7, 4, 'init', '\r\n\r\nconf t\r\nno ip ssh filetransfer\r\ntftp client\r\nwr m\r\ncopy tftp pub-key-file 192.168.22.242 authorized_keys manager\r\nexit\r\nexit\r\nexit\r\ny', '������ �������� TFTP-������'),
(8, 4, 'config', '\r\n\r\nno page\r\n# <Configuration>\r\nshow running-config\r\n# </Configuration>\r\nexit\r\nexit\r\ny\r\n', NULL);