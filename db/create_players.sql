#DROP TABLE IF EXISTS players;

#CREATE TABLE players (
#  id int NOT NULL AUTO_INCREMENT,
#  yahoo_ref smallint(6) NOT NULL default '0',
#  player varchar(25) NOT NULL default '',
#  team char(3) NOT NULL default '',
#  pos varchar(20) NOT NULL default '',
#  status char(3) ,
#  rank smallint(6) default '1500',
#  IP decimal(4,1) ,
#  W tinyint(4) ,
#  SV tinyint(4) ,
#  K smallint(6) ,
#  ERA decimal(4,2) ,
#  WHIP decimal(3,2) ,
#  R smallint(6) ,
#  HR smallint(6) ,
#  RBI smallint(6) ,
#  SB tinyint(4) ,
#  AVG decimal(4,3) ,
#  PRIMARY KEY (id)
#) TYPE=MyISAM;

# This is 2005 NL Only player statistics
INSERT INTO players (yahoo_ref,player,team,pos,status,rank,R,HR,RBI,SB,AVG) VALUES
('6619','A. Pujols','StL','1B','','2','129','41','117','16','.330'),
('5775','D. Lee','ChC','1B','','3','120','46','107','15','.335'),
('7143','J. Bay','Pit','OF','','11','110','32','101','21','.306'),
('6154','A. Soriano','Was','2B','','14','102','36','104','30','.268'),
('5681','A. Jones','Atl','OF','','16','95','51','128','5','.263'),
('7163','Mi. Cabrera','Fla','3B,OF','','18','106','33','116','1','.323'),
('5698','B. Abreu','Phi','OF','','21','104','24','102','31','.286'),
('7382','D. Wright','NYM','3B','','30','99','27','102','17','.306'),
('7072','C. Utley','Phi','1B,2B','','35','93','28','105','16','.291'),
('7066','J. Reyes','NYM','SS','','44','99','7','58','60','.273'),
('6419','J. Rollins','Phi','SS','','45','115','12','54','41','.290'),
('4826','J. Kent','LAD','1B,2B','','46','100','29','105','6','.289'),
('5178','C. Delgado','NYM','1B','','50','81','33','115','0','.301'),
('6161','C. Lee','Mil','OF','','51','85','32','114','13','.265'),
('6763','A. Dunn','Cin','1B,OF','','52','107','40','101','4','.247'),
('6604','M. Ensberg','Hou','3B','','53','86','36','101','6','.283'),
('6404','R. Furcal','LAD','SS','','55','100','12','58','46','.284'),
('5177','C. Floyd','NYM','OF','','60','85','34','98','12','.273'),
('4305','K. Griffey Jr.','Cin','OF','','63','85','35','92','0','.301'),
('6415','F. López','Cin','2B,SS','','65','97','23','85','15','.291'),
('6375','P. Burrell','Phi','OF','','74','78','32','117','0','.281'),
('6550','J. Pierre','ChC','OF','','82','96','2','47','57','.276'),
('5998','R. Winn','SF','OF','','92','85','20','63','19','.306'),
('5870','T. Helton','Col','1B','','93','92','20','79','3','.320'),
('6014','A. Ramírez','ChC','3B','','98','72','31','92','0','.302'),
('5543','B. Giles','SD','OF','','100','92','15','83','13','.301'),
('7311','M. Holliday','Col','OF','','110','68','19','87','14','.307'),
('6624','M. Giles','Atl','2B','','114','104','15','63','16','.291'),
('5151','J. Edmonds','StL','OF','','116','88','29','89','5','.263'),
('5948','G. Jenkins','Mil','OF','','119','87','25','86','0','.292'),
('7047','C. Tracy','Ari','1B,OF','','122','73','27','72','3','.308'),
('4217','C. Biggio','Hou','2B','','123','94','26','69','11','.264'),
('5179','S. Green','Ari','OF','','129','87','22','73','8','.286'),
('6279','L. Berkman','Hou','1B,OF','','133','76','24','82','4','.293'),
('4576','Lu. González','Ari','OF','','139','90','24','79','4','.271'),
('6132','C. Beltrán','NYM','OF','','149','83','16','78','17','.266'),
('5513','T. Clark','Ari','1B','','151','47','30','87','0','.304'),
('5061','J. Burnitz','Pit','OF','','155','84','24','87','5','.258'),
('6583','B. Clark','Mil','OF','','156','94','13','53','10','.306'),
('5753','J. Guillén','Was','OF','','161','81','24','76','1','.283'),
('5994','P. Wilson','Hou','OF','','165','73','25','90','6','.260'),
('4517','M. Alou','SF','OF','','167','67','19','63','5','.321'),
('6992','B. Hall','Mil','2B,3B,SS','','168','69','17','62','18','.291'),
('5164','C. Jones','Atl','3B','','179','66','21','72','5','.296'),
('6855','J. Lane','Hou','OF','','185','65','26','78','6','.267'),
('6246','J. Jones','ChC','OF','','194','74','23','73','13','.249'),
('5602','É. Rentería','Atl','SS','','195','100','8','70','9','.276'),
('6688','D. Eckstein','StL','SS','','197','90','8','61','11','.294'),
('6742','A. Rowand','Phi','OF','','202','77','13','69','16','.270'),
('7269','W. Taveras','Hou','OF','','208','82','3','29','34','.291'),
('4789','K. Lofton','LAD','OF','','210','67','2','36','22','.335'),
('5904','J. Encarnación','StL','OF','','225','59','16','76','6','.287'),
('6401','N. Johnson','Was','1B','','229','66','15','74','3','.289'),
('5547','C. Counsell','Ari','2B','','233','85','9','42','26','.256'),
('7145','G. Atkins','Col','3B','','237','62','13','89','0','.287'),
('5930','S. Casey','Pit','1B','','241','75','9','58','2','.312'),
('5323','R. Durham','SF','2B','','251','67','12','62','6','.290'),
('5298','J. Randa','Pit','3B','','255','71','17','68','0','.276'),
('7437','R. Howard','Phi','1B','','261','52','22','63','0','.288'),
('6578','P. Feliz','SF','1B,3B,OF','','263','69','20','81','0','.250'),
('6685','R. Freel','Cin','2B,3B,OF','','270','69','4','21','36','.271'),
('6305','D. Roberts','SD','OF','','276','65','8','38','23','.275'),
('5523','R. Aurilia','Cin','2B,3B,SS','','278','61','14','68','2','.282'),
('5587','B. Mueller','LAD','2B,3B','','283','69','10','62','0','.295'),
('4306','O. Vizquel','SF','SS','','300','66','3','45','24','.271'),
('7253','A. LaRoche','Atl','1B','','301','53','20','78','0','.259'),
('6389','A. Everett','Hou','SS','','313','58','11','54','21','.248'),
('6875','O. Hudson','Ari','2B','','319','62','10','63','7','.271'),
('5702','N. Pérez','ChC','2B,SS','','342','59','9','54','8','.274'),
('6843','S. Taguchi','StL','OF','','348','45','8','53','11','.288'),
('7231','C. Barmes','Col','SS','','349','55','10','46','6','.289'),
('4953','R. Klesko','SD','OF','','354','61','18','58','3','.248'),
('6098','M. Barrett','ChC','C','','356','48','16','61','0','.276'),
('7233','K. Greene','SD','SS','','362','51','15','70','5','.250'),
('7594','J. Francoeur','Atl','OF','','364','41','14','45','3','.300'),
('5700','T. Walker','ChC','2B','','365','50','12','40','1','.305'),
('7346','C. Sullivan','Col','OF','','366','64','4','30','12','.294'),
('6851','A. Kearns','Cin','OF','','370','62','18','67','0','.240'),
('5492','M. Cameron','SD','OF','','382','47','12','39','13','.273'),
('4746','V. Castilla','SD','3B','','393','53','12','66','4','.253'),
('7258','Lu. González','Col','1B,2B,3B,SS,OF','','397','51','9','44','3','.292'),
('7213','R. Weeks','Mil','2B','','406','56','13','42','15','.239'),
('6117','J. Drew','LAD','OF','','416','48','15','36','1','.286'),
('6693','Ja. Wilson','Pit','SS','','418','60','8','52','7','.257'),
('6032','P. Lo Duca','NYM','C','','423','45','6','57','4','.283'),
('4928','M. Piazza','SD','C','','424','41','19','62','0','.251'),
('5886','A. Núñez','Phi','2B,3B,SS','','425','64','5','44','0','.285'),
('5249','O. Sáenz','LAD','1B,3B','','429','39','15','63','0','.263'),
('7302','J. Castillo','Pit','2B','','432','49','11','53','2','.268'),
('5915','J. Valentín','Cin','C','','447','36','14','50','0','.281'),
('5786','J. Cruz','LAD','OF','','456','46','18','50','0','.251'),
('7415','R. Church','Was','OF','','458','41','9','42','3','.287'),
('6252','J. LaRue','Cin','C','','461','38','14','60','0','.260'),
('6999','F. Sánchez','Pit','2B,3B,SS','','462','54','5','35','2','.291'),
('5343','D. Bell','Phi','3B','','468','53','10','61','0','.248'),
('5270','M. Lieberthal','Phi','C','','470','48','12','47','0','.263'),
('5878','D. Miller','Mil','C','','473','50','9','43','0','.273'),
('5473','Ma. Sweeney','SF','1B','','477','31','8','40','4','.294'),
('5514','S. Hatteberg','Cin','1B','','478','52','7','59','0','.256'),
('6391','M. LeCroy','Was','1B','','479','33','17','50','0','.260'),
('6610','X. Nady','NYM','1B,OF','','490','40','13','43','2','.261'),
('7452','V. Díaz','NYM','OF','','493','41','12','38','6','.257'),
('5197','Ál. González','Phi','3B,SS','','494','47','9','38','2','.269'),
('5205','M. Matheny','SF','C','','497','42','13','59','0','.242'),
('7135','J. Ellison','SF','OF','','499','49','4','24','14','.264'),
('6622','H. Choi','LAD','1B','','503','40','15','42','1','.253'),
('6920','R. Langerhans','Atl','OF','','504','48','8','42','0','.267'),
('6480','B. Schneider','Was','C','','509','38','10','44','1','.268'),
('3001','J. Franco','NYM','1B','','515','30','9','42','4','.275'),
('6110','C. Koskie','Mil','3B','','516','49','11','36','4','.249'),
('7322','B. Hawpe','Col','OF','','518','38','9','47','2','.262'),
('5158','T. Womack','Cin','2B,OF','','520','46','0','15','27','.249'),
('4307','S. Finley','SF','OF','','523','41','12','54','8','.222'),
('6127','J. Hairston Jr.','ChC','2B,OF','','526','51','4','30','8','.261'),
('6423','J. Werth','LAD','OF','','530','46','7','43','11','.234'),
('5732','D. Jackson','Was','2B,3B,SS,OF','','532','44','5','23','15','.255'),
('7283','J. Hardy','Mil','SS','','534','46','9','50','0','.247'),
('6390','M. Lamb','Hou','1B,3B,OF','','539','41','12','53','1','.236'),
('6811','W. Betemit','Atl','3B,SS','','543','36','4','20','1','.305'),
('7597','M. Murton','ChC','OF','','546','19','7','14','2','.321'),
('7057','C. Burke','Hou','2B,OF','','548','49','5','26','11','.248'),
('6558','E. Byrnes','Ari','OF','','549','49','10','40','7','.226'),
('7345','Y. Molina','StL','C','','550','36','8','49','2','.252'),
('5769','R. Ledee','LAD','OF','','551','31','7','39','0','.278'),
('7234','L. Niekro','SF','1B','','552','32','12','46','0','.252'),
('7540','O. Robles','LAD','3B,SS','','554','44','5','34','0','.272'),
('5827','J. Vidro','Was','2B','','557','38','7','32','0','.275'),
('6638','C. Izturis','LAD','SS','','559','48','2','31','8','.257'),
('5706','N. Garciaparra','LAD','3B,SS','','562','28','9','30','0','.283'),
('7558','K. Johnson','Atl','OF','','563','46','9','40','2','.241'),
('5095','B. Ausmus','Hou','C','','568','35','3','47','5','.258'),
('7228','A. Miles','StL','2B','','570','37','2','28','4','.281'),
('7424','P. Orr','Atl','2B,3B','','584','32','1','8','7','.300'),
('5231','J. Cirillo','Mil','3B','','593','29','4','23','4','.281'),
('6101','M. Anderson','Was','1B,2B,OF','','598','31','7','19','6','.264'),
('4913','D. Easley','Ari','2B,3B,SS','','602','37','9','30','4','.240'),
('7605','J. Rodríguez','StL','OF','','603','15','5','24','2','.295'),
('6080','W. Helms','Fla','1B,3B','','605','18','4','24','0','.298'),
('6720','J. Estrada','Ari','C','','609','31','4','39','0','.261'),
('6384','J. Spivey','StL','2B','','612','37','7','24','9','.232'),
('6325','R. Castro','NYM','C','','616','26','8','41','1','.244'),
('5299','M. Tucker','Was','OF','','617','35','5','36','4','.239'),
('5441','O. Palmeiro','Hou','OF','','618','22','3','20','3','.284'),
('7564','R. Doumit','Pit','C','','620','25','6','35','2','.255'),
('6289','H. Cota','Pit','C','','622','29','7','43','0','.242'),
('7519','J. Repko','LAD','OF','','624','43','8','30','5','.221'),
('7569','B. McCann','Atl','C','','630','20','5','23','1','.278'),
('7250','K. Matsui','NYM','2B','','631','31','3','24','6','.255'),
('7028','M. Olivo','Fla','C','','641','30','9','34','7','.217'),
('6642','C. Wilson','Pit','1B,OF','','642','23','5','22','3','.264'),
('7024','J. Carroll','Col','2B,3B,SS','','644','44','0','22','3','.251'),
('4905','E. Young','SD','2B,OF','','645','22','2','12','7','.275'),
('6139','R. Fick','Was','C,1B,OF','','647','25','3','30','0','.265'),
('6515','T. Redman','NYM','OF','NA','648','33','2','26','4','.251'),
('6863','M. Byrd','Was','OF','','649','20','2','26','5','.266'),
('5553','S. Fasano','Phi','C','','651','25','11','20','0','.250'),
('5748','D. Cruz','StL','2B,SS','','652','28','5','20','0','.265'),
('6355','J. DaVanon','Ari','OF','','654','42','2','15','11','.231'),
('6186','C. Guzmán','Was','SS','','657','39','4','31','7','.219'),
('7278','E. Encarnación','Cin','3B','','659','25','9','31','3','.232'),
('5215','J. Mabry','ChC','1B,3B,OF','','661','26','8','32','0','.240'),
('5831','M. Bellhorn','SD','2B','','663','43','8','30','3','.210'),
('6244','C. Woodward','NYM','1B,OF','','667','16','3','18','0','.283'),
('6753','L. Bigbie','StL','OF','','669','27','5','23','5','.239'),
('6307','G. Blum','SD','1B,2B,3B,SS','','672','32','6','25','3','.229'),
('7276','D. Navarro','LAD','C','','673','21','3','14','0','.273'),
('7609','B. Eldred','Pit','1B','NA','680','23','12','27','1','.221'),
('5668','S. Rolen','StL','3B','','682','28','5','28','1','.235'),
('4904','T. Pratt','Atl','C','','684','17','7','23','0','.251'),
('7274','J. Closser','Col','C','','690','31','7','27','1','.219'),
('6541','D. Ardoin','Col','C','','696','28','6','22','1','.229'),
('5862','H. Blanco','ChC','C','','698','16','6','25','0','.242'),
('6795','Y. Torrealba','Col','C','','706','32','3','15','1','.234'),
('7177','L. Terrero','Ari','OF','','709','23','4','20','3','.230'),
('4428','J. Vizcaíno','SF','1B,2B,SS','','712','15','1','23','2','.246'),
('6634','J. Gerut','Pit','OF','','719','15','1','14','1','.253'),
('7054','A. González','SD','1B','','726','17','6','17','0','.227'),
('6504','C. Moeller','Mil','C','','728','23','7','23','0','.206'),
('7409','C. Snyder','Ari','C','','729','24','6','28','0','.202'),
('5310','T. Pérez','Phi','1B,3B,SS','','733','17','0','22','1','.233'),
('7075','T. Linden','SF','OF','','737','20','4','13','3','.216'),
('5517','G. Bennett','StL','C','','742','11','1','21','0','.221'),
('4948','J. Valentín','NYM','3B,OF','','747','17','2','14','3','.170'),
('7235','H. Quintero','Hou','C','','749','6','1','8','0','.185'),
('4626','J. Bagwell','Hou','1B','','765','11','3','19','0','.250'),
('7400','J. Piedra','Col','OF','','773','19','6','16','2','.313'),
('7264','J. Bautista','Pit','3B','','786','3','0','1','1','.143'),
('7142','R. Olmedo','Cin','2B','NA','795','10','1','4','4','.221'),
('7148','Z. Sorensen','Mil','Util','','798','3','0','0','0','.167'),
('7159','M. Kata','Cin','2B','','807','7','0','0','0','.189'),
('7166','E. Bruntlett','Hou','2B,SS,OF','','816','19','4','14','7','.220'),
('7428','W. Young','SD','1B','','835','2','1','3','0','.303'),
('7184','M. Diaz','Atl','OF','','848','7','1','9','0','.281'),
('7188','T. Sledge','SD','OF','','850','7','1','8','2','.243'),
('7290','P. Fielder','Mil','1B','','855','2','2','10','0','.288'),
('7336','C. Hart','Mil','OF','','868','9','2','7','2','.193'),
('5692','D. Mirabelli','SD','C','','873','16','6','18','2','.228'),
('5697','R. Chávez','Hou','C','','884','6','2','6','1','.172'),
('7440','J. Gall','StL','OF','','888','5','2','10','0','.270'),
('7441','D. Krynzel','Mil','OF','NA','889','0','0','0','0','.000'),
('7344','M. Treanor','Fla','C','','901','10','0','13','0','.201'),
('7352','A. Green','Ari','Util','','902','5','0','2','0','.226'),
('7451','J. Knoedler','SF','C','NA','904','0','0','0','0','.100'),
('7601','D. Sandoval','Phi','SS','','916','1','0','0','0','.000'),
('4294','S. Alomar Jr.','LAD','C','','924','11','0','14','0','.273'),
('7367','C. Aguila','Fla','OF','','938','11','0','4','0','.244'),
('7615','O. Quintanilla','Col','SS','','945','16','0','7','2','.219'),
('7513','N. McLouth','Pit','OF','','947','20','5','12','2','.257'),
('7515','W. Bergolla','Cin','2B','','952','3','0','1','0','.132'),
('7619','B. Watson','Was','OF','','954','8','1','5','0','.175'),
('7479','T. Blanco','Was','OF','NA','965','7','1','7','1','.177'),
('7372','B. Harris','Was','Util','','966','1','1','3','0','.333'),
('7623','M. Jacobs','Fla','1B','','971','19','11','23','0','.310'),
('7373','J. Willingham','Fla','C','','976','3','0','4','0','.304'),
('7627','R. Zimmerman','Was','3B','','977','6','0','6','0','.397'),
('6826','D. Sardinha','Cin','C','','979','0','0','0','0','.000'),
('7486','C. Jackson','Ari','1B','','986','8','2','8','0','.200'),
('7488','H. Ramírez','Fla','SS','','989','0','0','0','0','.000'),
('7521','L. Scott','Hou','OF','','992','6','0','4','1','.188'),
('7524','C. Duffy','Pit','OF','','996','22','1','9','2','.341'),
('7492','J. Hermida','Fla','OF','','1002','9','4','11','2','.293'),
('7638','W. Aybar','LAD','3B','','1004','12','1','10','3','.326'),
('7527','R. Cedeño','ChC','SS','','1011','13','1','6','1','.300'),
('5897','E. Marrero','Col','1B,OF','','1017','19','7','19','1','.181'),
('7643','A. Chávez','SF','Util','','1021','1','0','1','0','.263'),
('6733','E. Chávez','NYM','OF','','1027','19','0','11','2','.216'),
('7648','R. Andino','Fla','SS','','1028','4','0','1','1','.159'),
('6956','D. Ross','Cin','C','','1029','11','3','15','0','.240'),
('6847','B. Hill','SD','3B','NA','1031','12','0','11','0','.269'),
('7654','D. Ortmeier','SF','OF','','1038','1','0','1','1','.136'),
('7655','M. Perez','Cin','C','NA','1039','0','0','0','0','.000'),
('7658','C. Duncan','StL','1B','','1045','2','1','3','0','.200'),
('7663','Jo. Wilson','Col','Util','','1054','2','0','0','0','.100'),
('7665','C. Denorfia','Cin','OF','','1057','8','1','2','1','.263'),
('7670','R. Theriot','ChC','2B','','1067','3','0','0','0','.154'),
('7675','C. Jimerson','Hou','OF','','1077','0','0','0','0',''),
('7680','A. Hernández','NYM','2B','','1084','1','0','0','0','.056'),
('7681','N. Cruz','Mil','OF','','1085','1','0','0','0','.200'),
('7551','B. Peña','Atl','C','','1094','2','0','4','0','.179'),
('6892','A. Amezaga','Fla','Util','','1097','2','0','0','1','.167'),
('7567','S. Schumaker','StL','OF','','1121','9','0','1','1','.250'),
('7575','R. Shealy','Col','1B','','1139','14','2','16','1','.330'),
('7059','K. Hill','Ari','C','','1157','6','0','6','0','.218'),
('7053','C. Ross','LAD','OF','','1160','1','0','1','0','.160'),
('7052','C. Freeman','Col','OF','','1161','6','0','0','0','.273'),
('7104','S. Victorino','Phi','OF','','1170','5','2','8','0','.294'),
('7046','S. Hairston','Ari','OF','','1183','0','0','0','0','.100'),
('7077','G. Gross','Mil','OF','','1202','11','1','7','1','.250'),
('7041','J. Baker','Col','3B','','1203','6','1','4','0','.211'),
('7587','B. Johnson','SD','OF','','1212','10','3','13','0','.213'),
('3918','B. Bonds','SF','OF','','1214','8','5','10','0','.286'),
('7229','P. LaForest','SD','C','','1222','5','1','4','0','.172'),
('7084','H. Luna','StL','2B,OF','','1225','26','1','18','10','.285'),
('7089','R. Paulino','Pit','C','','1233','1','0','0','0','.500'),
('7584','P. McAnulty','SD','OF','NA','1234','4','0','0','1','.208'),
('7704','F. Pie','ChC','OF','','1520','','','','',''),
('7295','J. Barfield','SD','2B','','1521','','','','',''),
('5746','P. Reese','Fla','2B','NA','1522','','','','',''),
('7560','S. Drew','Ari','SS','','1523','','','','',''),
('7414','J. Keppinger','NYM','2B','','1524','','','','',''),
('7405','F. Guzmán','SD','OF','NA','1525','','','','','');


INSERT INTO players (yahoo_ref,player,team,pos,status,rank,IP,W,SV,K,ERA,WHIP) VALUES
('5771','C. Carpenter','StL','SP','','8','241.2','21','0','213','2.83','1.06'),
('5536','B. Wagner','NYM','RP','','10','77.2','4','38','87','1.51','0.84'),
('7133','D. Willis','Fla','SP','','13','236.1','22','0','170','2.63','1.13'),
('4875','P. Martínez','NYM','SP','','15','217.0','15','0','208','2.82','0.95'),
('5331','A. Pettitte','Hou','SP','','20','222.1','17','0','171','2.39','1.03'),
('3340','R. Clemens','Hou','SP','NA','22','211.1','13','0','185','1.87','1.01'),
('7221','C. Cordero','Was','RP','','23','74.1','2','47','61','1.82','0.97'),
('6646','R. Oswalt','Hou','SP','','24','241.2','20','0','184','2.94','1.20'),
('6420','D. Turnbow','Mil','RP','','25','67.1','7','39','64','1.74','1.08'),
('6872','J. Peavy','SD','SP','','28','203.0','13','0','216','2.88','1.04'),
('6913','B. Lidge','Hou','RP','','29','70.2','4','42','103','2.29','1.15'),
('6559','C. Zambrano','ChC','SP','','36','223.1','14','0','202','3.26','1.15'),
('4232','J. Smoltz','Atl','SP','','49','229.2','14','0','169','3.06','1.15'),
('6864','B. Myers','Phi','SP','','57','215.1','13','0','208','3.72','1.21'),
('7132','C. Capuano','Mil','SP','','69','219.0','18','0','176','3.99','1.38'),
('4975','T. Hoffman','SD','RP','','70','57.2','1','43','54','2.97','1.11'),
('7121','B. Webb','Ari','SP','','72','229.0','14','0','172','3.54','1.26'),
('5449','J. Isringhausen','StL','RP','','75','59.0','1','39','51','2.14','1.19'),
('6395','D. Báez','LAD','RP','','76','72.1','5','41','51','2.86','1.33'),
('5235','J. Lieber','Phi','SP','','78','218.1','17','0','149','4.20','1.21'),
('6787','M. Prior','ChC','SP','','80','166.2','11','0','188','3.67','1.21'),
('6405','J. Patterson','Was','SP','','81','198.1','9','0','185','3.13','1.19'),
('6299','D. Davis','Mil','SP','','83','222.2','11','0','208','3.84','1.30'),
('7226','N. Lowry','SF','SP','','97','204.2','13','0','172','3.78','1.31'),
('6618','B. Sheets','Mil','SP','','99','156.2','10','0','141','3.33','1.07'),
('6735','B. Fuentes','Col','RP','','102','74.1','2','31','91','2.91','1.25'),
('6006','R. Dempster','ChC','SP,RP','','105','92.0','5','33','89','3.13','1.43'),
('5801','D. Lowe','LAD','SP','','117','222.0','12','0','146','3.61','1.25'),
('6936','A. Harang','Cin','SP','','120','211.2','11','0','163','3.83','1.27'),
('5454','J. Suppan','StL','SP','','125','194.1','16','0','114','3.57','1.38'),
('6455','S. Linebrink','SD','RP','','126','73.2','8','1','70','1.83','1.06'),
('5734','L. Hernández','Was','SP','','128','246.1','15','0','147','3.98','1.43'),
('3933','G. Maddux','ChC','SP','','131','225.0','13','0','136','4.24','1.22'),
('7151','J. Valverde','Ari','RP','','132','66.1','3','15','75','2.44','1.07'),
('6393','M. Mulder','StL','SP','','134','205.0','16','0','111','3.64','1.38'),
('6245','T. Hudson','Atl','SP','','138','192.0','14','0','115','3.52','1.35'),
('6036','B. Howry','ChC','RP','','140','73.0','7','3','48','2.47','0.89'),
('5784','M. Morris','SF','SP','','143','192.2','14','0','117','4.11','1.28'),
('7412','C. Young','SD','SP','','146','164.2','12','0','137','4.26','1.26'),
('6885','J. Sosa','Atl','SP,RP','','154','134.0','13','0','85','2.55','1.39'),
('5340','J. Schmidt','SF','SP','','158','172.0','12','0','165','4.40','1.42'),
('4122','T. Glavine','NYM','SP','','171','211.1','13','0','105','3.53','1.36'),
('7065','A. Heilman','NYM','SP,RP','','176','108.0','5','5','106','3.17','1.15'),
('7512','Z. Duke','Pit','SP','','177','84.2','8','0','58','1.81','1.20'),
('4612','Ro. Hernández','Pit','RP','','186','69.2','8','4','61','2.58','1.22'),
('4815','M. Batista','Ari','RP','','187','74.2','5','31','54','4.10','1.43'),
('5806','C. Lidle','Phi','SP','','188','184.2','13','0','121','4.53','1.35'),
('6331','D. Wheeler','Hou','RP','','189','73.1','2','3','69','2.21','0.98'),
('6824','J. Seo','LAD','SP','','190','90.1','8','0','59','2.59','1.11'),
('6493','J. Marquis','StL','SP','','196','207.0','13','0','100','4.13','1.33'),
('4279','T. Gordon','Phi','RP','','201','80.2','5','2','69','2.57','1.09'),
('6445','A. Fultz','Phi','RP','','203','72.1','4','0','54','2.24','0.97'),
('4718','D. Weathers','Cin','RP','','211','77.2','7','15','61','3.94','1.29'),
('6283','T. Ohka','Mil','SP','','219','180.1','11','0','98','4.04','1.35'),
('6276','B. Penny','LAD','SP','','222','175.1','7','0','122','3.90','1.29'),
('6861','B. Claussen','Cin','SP','','227','166.2','10','0','121','4.21','1.41'),
('6546','M. Wise','Mil','RP','','230','64.1','4','1','62','3.36','0.96'),
('4736','A. Rhodes','Phi','RP','','234','43.1','3','0','43','2.08','1.04'),
('5118','S. Torres','Pit','RP','','238','94.2','5','3','55','2.76','1.18'),
('7080','L. Ayala','Was','RP','','242','71.0','8','1','40','2.66','1.25'),
('7495','M. Cain','SF','SP','','246','46.1','2','0','30','2.33','0.93'),
('5869','S. Eyre','ChC','RP','','252','68.1','2','0','65','2.63','1.08'),
('6823','T. Walker','SF','RP','','253','61.2','6','23','54','4.23','1.54'),
('5966','B. Looper','StL','RP','','254','59.1','4','28','27','3.94','1.47'),
('5819','B. Tomko','LAD','SP','','259','190.2','8','1','114','4.48','1.37'),
('7604','C. Hensley','SD','RP','','264','47.2','1','0','28','1.70','1.05'),
('7381','C. Qualls','Hou','RP','','268','79.2','6','0','60','3.28','1.21'),
('6738','D. Williams','Cin','SP','','281','138.2','10','0','88','4.41','1.41'),
('5207','R. Helling','Mil','SP,RP','','282','49.0','3','0','42','2.39','1.16'),
('6889','H. Ramírez','Atl','SP','','286','202.1','11','0','80','4.63','1.39'),
('7306','M. Wuertz','ChC','RP','','287','75.2','6','0','89','3.81','1.32'),
('7383','J. Francis','Col','SP','','288','183.2','14','0','128','5.68','1.62'),
('6657','C. Reitsma','Atl','RP','','289','73.1','3','15','42','3.93','1.27'),
('6948','D. Sánchez','NYM','RP','','292','82.0','4','8','71','3.73','1.35'),
('5025','W. Williams','SD','SP','','295','159.2','9','0','106','4.85','1.41'),
('7536','B. Thompson','StL','RP','','296','55.0','4','1','29','2.95','1.11'),
('7636','P. Maholm','Pit','SP','','297','41.1','3','0','26','2.18','1.16'),
('7071','R. Madson','Phi','RP','','303','87.0','6','0','79','4.14','1.25'),
('6752','V. Zambrano','NYM','SP','','304','166.1','7','0','112','4.17','1.48'),
('6965','B. Backe','Hou','SP','','306','149.1','10','0','97','4.76','1.46'),
('6700','B. Lawrence','Was','SP','','312','195.2','7','0','109','4.83','1.37'),
('7395','Y. Brazobán','LAD','RP','','317','72.2','4','21','61','5.33','1.40'),
('5764','G. Rusch','ChC','SP,RP','','320','145.1','9','0','111','4.52','1.57'),
('6088','Od. Pérez','LAD','SP','','323','108.2','7','0','74','4.56','1.26'),
('4508','C. Hammond','Cin','RP','','331','58.2','5','0','34','3.84','1.11'),
('6301','K. Wells','Pit','SP','','332','182.0','8','0','132','5.09','1.57'),
('7207','M. González','Pit','RP','','335','50.0','1','3','58','2.70','1.32'),
('7099','G. Majewski','Was','RP','','338','86.0','4','1','50','2.93','1.36'),
('5982','K. Wood','ChC','SP,RP','','340','66.0','3','0','77','4.23','1.18'),
('6019','O. Hernández','Ari','SP','','345','128.1','9','1','91','5.12','1.46'),
('7371','D. Bush','Mil','SP','','347','136.1','5','0','75','4.49','1.25'),
('7356','B. Halsey','Ari','SP','','350','160.0','8','0','82','4.61','1.44'),
('4143','J. Mesa','Col','RP','','351','56.2','2','27','37','4.76','1.54'),
('6916','Ra. Flores','StL','RP','','353','41.2','3','1','43','3.46','1.20'),
('7125','C. Vargas','Ari','SP','','358','132.1','9','0','95','5.24','1.46'),
('7537','R. Tejeda','Phi','SP,RP','','361','85.2','4','0','72','3.57','1.38'),
('6225','R. Franklin','Phi','SP','','367','190.2','8','0','93','5.10','1.44'),
('6873','J. Williams','ChC','SP','','371','122.2','6','0','70','4.26','1.37'),
('4870','P. Astacio','Was','SP','','374','126.2','6','0','78','4.69','1.34'),
('5187','C. Park','SD','SP','','377','155.1','12','0','113','5.74','1.67'),
('6612','W. Ohman','ChC','RP','','378','43.1','2','0','45','2.91','1.29'),
('7574','B. Boyer','Atl','RP','','379','37.2','4','0','33','3.11','1.30'),
('6317','Ra. Ortiz','Was','SP','','381','171.1','9','0','96','5.36','1.50'),
('7552','W. Rodríguez','Hou','SP','','387','128.2','10','0','80','5.53','1.46'),
('4441','K. Mercker','Cin','RP','','390','61.2','3','4','45','3.65','1.35'),
('5743','B. Moehler','Fla','SP,RP','','394','158.1','6','0','95','4.55','1.52'),
('7599','J. Vargas','Fla','SP','','398','73.2','5','0','59','4.03','1.38'),
('6237','B. Kim','Col','SP,RP','','400','148.0','5','0','115','4.86','1.53'),
('6321','D. Cortés','Col','RP','','403','52.2','2','2','36','4.10','1.14'),
('4994','M. Hampton','Atl','SP','','405','69.1','5','0','27','3.50','1.33'),
('4639','J. Fassero','SF','SP,RP','','407','91.0','4','0','60','4.05','1.35'),
('4828','R. Springer','Hou','RP','','409','59.0','4','0','54','4.73','1.19'),
('6981','A. Cook','Col','SP','','410','83.1','7','0','24','3.67','1.40'),
('6248','R. Wolf','Phi','SP','','412','80.0','6','0','61','4.39','1.41'),
('6291','L. Vizcaíno','Ari','RP','','421','70.0','6','0','43','3.73','1.47'),
('5537','S. Estes','SD','SP','','422','123.2','7','0','63','4.80','1.43'),
('6770','J. Fogg','Col','SP,RP','','430','169.1','6','0','85','5.05','1.47'),
('7530','S. Munter','SF','RP','','438','38.2','2','0','11','2.56','1.34'),
('7219','G. Geary','Phi','RP','','441','58.0','2','0','42','3.72','1.29'),
('5755','Ju. Santana','Phi','RP','','442','42.0','3','1','49','4.50','1.26'),
('6697','V. Santos','Pit','SP,RP','','445','141.2','4','0','89','4.57','1.50'),
('5944','E. Milton','Cin','SP','','452','186.1','8','0','123','6.47','1.55'),
('7477','D. Houlton','LAD','SP,RP','','455','129.0','6','0','90','5.16','1.53'),
('5772','J. Thomson','Atl','SP','','460','98.2','4','0','61','4.47','1.41'),
('5448','J. Borowski','Fla','RP','','465','46.1','1','0','27','4.47','1.08'),
('6427','S. Kim','Col','SP,RP','','466','82.2','6','0','55','4.90','1.43'),
('7240','M. Belisle','Cin','SP,RP','','469','85.2','4','1','59','4.41','1.48'),
('6313','T. Armas','Was','SP','','471','101.1','7','0','59','4.97','1.52'),
('7399','B. Hennessey','SF','SP','','474','118.1','5','0','64','4.64','1.51'),
('5803','M. DeJean','Col','RP','','476','62.1','5','0','52','4.48','1.48'),
('6785','J. Jennings','Col','SP','','482','122.0','6','0','75','5.02','1.57'),
('5186','R. White','Cin','RP','','486','75.0','4','2','40','3.72','1.59'),
('6229','R. King','Col','RP','','498','40.0','4','0','23','3.38','1.55'),
('6945','Ol. Pérez','Pit','SP','','508','103.0','7','0','97','5.85','1.67'),
('6261','D. Marte','Pit','RP','','510','45.1','3','4','54','3.77','1.72'),
('7359','L. Cormier','Atl','RP','','511','79.1','7','0','63','5.11','1.63'),
('7501','K. Davies','Atl','SP,RP','','517','87.2','7','0','62','4.93','1.68'),
('5172','S. Trachsel','NYM','SP','','529','37.0','1','0','24','4.14','1.32'),
('5064','T. Worrell','SF','RP','','535','48.2','1','1','39','4.07','1.46'),
('6270','W. Miller','ChC','SP','NA','536','91.0','4','0','64','4.95','1.57'),
('6571','R. Vogelsong','Pit','RP','','537','81.1','2','0','52','4.43','1.50'),
('7246','J. Grabow','Pit','RP','','541','52.0','2','0','42','4.85','1.37'),
('5778','S. Kline','SF','RP','','542','61.0','2','0','36','4.28','1.46'),
('7389','R. Novoa','ChC','RP','','544','44.2','4','0','47','4.43','1.61'),
('6709','J. Julio','NYM','RP','','569','71.2','3','0','58','5.90','1.40'),
('6364','L. Carter','LAD','RP','','571','57.0','1','1','22','4.89','1.33'),
('4391','M. Stanton','Was','RP','','572','42.2','3','0','27','4.64','1.50'),
('6769','R. Drese','Was','SP','','574','129.1','7','0','46','5.78','1.61'),
('7500','T. Stauffer','SD','SP','','576','81.0','3','0','49','5.33','1.49'),
('5757','R. Rincón','StL','RP','','577','37.1','1','0','27','4.34','1.45'),
('7523','S. Schmoll','NYM','RP','','581','46.2','2','3','29','5.01','1.48'),
('7516','E. Astacio','Hou','SP,RP','','583','81.0','3','0','66','5.67','1.54'),
('7514','T. Coffey','Cin','RP','','586','58.0','4','1','26','4.50','1.64'),
('4944','D. Brocail','SD','RP','','587','73.1','5','1','61','5.52','1.69'),
('7178','K. Correia','SF','SP,RP','','589','58.1','2','0','44','4.63','1.58'),
('7169','N. Bump','Fla','RP','','590','38.0','0','0','18','4.03','1.45'),
('7186','S. Mitre','Fla','SP,RP','','591','60.1','2','0','37','5.37','1.41'),
('5705','T. Miller','Hou','RP','','594','44.1','2','0','35','4.06','1.67'),
('5984','S. Ponson','StL','SP','','596','130.1','7','0','68','6.21','1.73'),
('6957','L. Hudson','Cin','SP','NA','600','84.2','6','0','53','6.38','1.57'),
('4733','R. Cormier','Phi','RP','','613','47.1','4','0','34','5.89','1.52'),
('7418','H. Bell','NYM','RP','','623','46.2','1','0','43','5.59','1.48'),
('6985','R. Rodríguez','Phi','SP','','634','57.0','2','0','24','5.53','1.47'),
('6240','D. Kolb','Mil','RP','','643','57.2','3','11','39','5.93','1.86'),
('7411','I. Snell','Pit','SP,RP','','650','42.0','1','0','34','5.14','1.60'),
('7183','R. Wagner','Cin','RP','','665','45.2','3','0','39','6.11','1.60'),
('7281','J. de la Rosa','Mil','RP','','692','42.1','2','0','42','4.46','2.03'),
('7386','J. Maine','NYM','SP','','693','40.0','2','0','24','6.30','1.57'),
('5954','Ru. Ortiz','Ari','SP','','710','115.0','5','0','46','6.89','1.84'),
('7583','R. Messenger','Fla','RP','','724','37.0','0','0','29','5.35','1.86'),
('7324','B. Bruney','Ari','RP','','727','46.0','1','12','51','7.43','1.98'),
('6947','Z. Day','Col','SP,RP','','744','47.1','1','0','23','6.85','1.96'),
('5561','P. Wilson','Cin','SP','','746','46.1','1','0','30','7.77','1.83'),
('6786','D. Brazelton','SD','SP,RP','','748','71.0','1','0','43','7.61','2.07'),
('7095','J. Koronka','ChC','SP','','752','15.2','1','0','10','7.47','1.72'),
('7251','T. Hamulack','LAD','RP','','766','2.1','0','0','2','23.14','3.43'),
('7136','T. Wellemeyer','ChC','RP','','790','32.1','2','1','32','6.12','1.67'),
('5390','Fé. Rodríguez','Was','RP','','792','32.1','0','0','18','5.01','1.64'),
('6342','E. Gagne','LAD','RP','','796','13.1','1','8','22','2.70','0.98'),
('7149','É. González','Ari','RP','','800','0.1','0','0','1','108.00','12.00'),
('7303','M. Johnston','Pit','RP','','811','1.0','0','0','2','36.00','4.00'),
('7168','M. Gallo','Hou','RP','','819','20.1','0','0','12','2.66','1.38'),
('6479','S. Etherton','SD','SP','','820','17.2','1','0','10','6.62','1.19'),
('6620','J. Rauch','Was','RP','','824','30.0','2','0','23','3.60','1.17'),
('7423','J. Capellán','Mil','RP','','825','15.2','1','0','14','2.87','1.40'),
('5266','J. Eischen','Was','RP','','842','36.1','2','0','30','3.22','1.46'),
('6061','C. Bradford','NYM','RP','','851','23.1','2','0','10','3.86','1.41'),
('7330','S. Dohmann','Col','RP','','854','31.0','2','0','35','6.10','1.68'),
('7331','A. Simpson','Cin','RP','','856','7.1','0','0','6','12.27','1.91'),
('7332','M. Adams','Mil','RP','','859','13.1','0','1','14','2.70','1.65'),
('7190','C. Tsao','Col','RP','DL','864','11.0','1','3','4','6.55','1.91'),
('7337','El. Ramírez','Cin','SP','','869','22.1','0','0','9','8.46','1.93'),
('6495','K. Davis','Mil','RP','','876','16.2','1','0','11','2.70','1.20'),
('7297','G. Floyd','Phi','SP','','878','26.0','1','0','17','10.04','1.77'),
('7445','C. Cali','StL','RP','','892','6.0','0','0','5','10.50','2.67'),
('7449','L. Kensing','Fla','RP','','899','5.2','0','0','4','11.12','2.47'),
('7357','J. Lehr','Mil','RP','','912','34.2','1','0','23','3.89','1.44'),
('7600','D. Eveland','Mil','RP','','915','31.2','1','1','23','5.97','1.83'),
('7608','M. McBride','Atl','RP','','923','14.0','1','1','22','5.79','1.79'),
('7361','G. Aquino','Ari','RP','','925','31.1','0','1','34','7.76','1.88'),
('6661','J. Standridge','Cin','RP','','926','33.1','2','0','19','4.59','1.86'),
('7466','T. Hughes','Was','RP','','933','13.0','1','0','8','5.54','2.00'),
('7613','J. Broxton','LAD','RP','','942','13.2','1','0','22','5.93','1.83'),
('7617','E. Brito','Phi','SP','','949','22.0','1','0','15','3.68','1.41'),
('7518','A. Reyes','StL','P','','957','13.1','1','0','12','2.70','0.75'),
('7475','T. Johnson','StL','RP','','958','2.2','0','0','4','0.00','2.25'),
('7624','J. Devine','Atl','RP','','972','5.0','0','0','3','12.60','2.20'),
('7375','J. Padilla','NYM','RP','','981','36.1','3','1','17','1.49','1.02'),
('7629','C. James','Atl','RP','','982','5.2','0','0','5','1.59','1.24'),
('7520','R. Speier','Col','RP','NA','985','24.2','2','0','10','3.65','1.58'),
('4425','J. Grimsley','Ari','RP','','990','22.0','1','0','10','5.73','1.50'),
('7637','J. Bergmann','Was','RP','','1000','19.2','2','0','21','2.75','1.27'),
('7529','R. Ring','NYM','RP','','1014','10.2','0','0','8','5.06','1.88'),
('7534','J. Accardo','SF','RP','','1024','29.2','1','0','16','3.94','1.18'),
('7649','H. Kuo','LAD','RP','','1030','5.1','0','0','10','6.75','1.88'),
('7652','A. Lerew','Atl','RP','','1034','8.0','0','0','5','5.63','1.75'),
('7653','D. Nippert','Ari','SP','','1036','14.2','1','0','11','5.52','1.57'),
('7656','C. Booker','Phi','RP','','1042','2.0','0','0','2','31.50','5.00'),
('6955','J. Cerda','Col','RP','','1043','19.0','1','0','18','6.63','1.68'),
('7666','C. Demaria','Mil','RP','','1060','9.0','1','0','11','9.00','2.11'),
('7667','T. Bowyer','Fla','RP','','1062','9.2','0','0','12','5.59','1.34'),
('7669','Jo. Johnson','Fla','P','','1064','12.1','0','0','10','3.65','1.70'),
('7677','B. Bullington','Pit','RP','','1080','1.1','0','0','1','13.50','1.50'),
('7678','T. Gorzelanny','Pit','P','','1082','6.0','0','0','3','12.00','2.17'),
('7679','M. Capps','Pit','RP','','1083','4.0','0','0','3','4.50','1.25'),
('7682','M. Esposito','Col','SP','','1086','14.2','0','0','5','6.75','2.05'),
('6881','J. Foster','Atl','RP','','1089','34.2','4','1','32','4.15','1.33'),
('7546','M. Burns','Cin','RP','','1090','31.0','0','0','20','4.94','1.19'),
('6896','S. Cassidy','SD','RP','','1100','13.0','1','0','12','8.31','1.69'),
('7568','F. Osoria','LAD','RP','','1123','29.2','0','0','15','3.94','1.21'),
('7573','J. Taschner','SF','RP','','1138','22.2','2','0','19','1.59','1.24'),
('6775','B. Lyon','Ari','RP','','1145','29.1','0','14','17','6.44','1.84'),
('7578','R. Hill','ChC','SP,RP','','1146','23.2','0','0','21','9.13','1.77'),
('7580','B. Medders','Ari','RP','','1154','30.1','4','0','31','1.78','1.05'),
('7048','A. Wainwright','StL','RP','','1177','2.0','0','0','0','13.50','1.50'),
('7045','M. Gosling','Cin','SP,RP','','1186','32.1','0','0','14','4.45','1.82'),
('7110','J. Anderson','SD','RP','','1190','5.2','1','0','2','7.94','1.94'),
('7112','O. Villarreal','Atl','RP','','1193','13.2','2','0','5','5.27','1.24'),
('7589','C. Resop','Fla','RP','','1196','17.0','2','0','15','8.47','1.82'),
('6174','S. Williamson','ChC','RP','','1210','14.1','0','0','23','5.65','1.47'),
('7586','B. Shackelford','Cin','RP','','1217','29.2','1','0','17','2.43','1.01'),
('7585','S. Olsen','Fla','SP','','1221','20.1','1','0','21','3.98','1.52'),
('5290','A. Benítez','SF','RP','','1231','30.0','2','19','23','4.50','1.37'),
('7582','J. Bayliss','Pit','RP','','1236','11.2','0','0','10','4.63','0.94'),
('7289','G. Miller','LAD','RP','','1501','','','','','',''),
('6137','B. Sikorski','SD','RP','','1502','','','','','',''),
('7300','B. Nelson','Cin','RP','NA','1503','','','','','',''),
('7307','D. Aardsma','ChC','RP','','1504','','','','','',''),
('7699','Y. Petit','Fla','SP','','1505','','','','','',''),
('6915','J. Bong','Cin','RP','NA','1506','','','','','',''),
('6954','F. Beltrán','Was','RP','NA','1507','','','','','',''),
('7060','B. Hendrickson','Mil','SP','','1508','','','','','',''),
('6765','G. Balfour','Cin','RP','','1509','','','','','',''),
('7368','B. Fortunato','NYM','RP','','1510','','','','','','');
