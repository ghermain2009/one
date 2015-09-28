/*
SQLyog Community v11.52 (64 bit)
MySQL - 5.6.16 : Database - buenisimo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`buenisimo` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `buenisimo`;

/*Table structure for table `cup_campana` */

DROP TABLE IF EXISTS `cup_campana`;

CREATE TABLE `cup_campana` (
  `id_campana` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(1000) NOT NULL,
  `subtitulo` varchar(1000) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `sobre_campana` varchar(5000) DEFAULT NULL,
  `observaciones` varchar(5000) DEFAULT NULL,
  `fecha_inicio` date NOT NULL,
  `hora_inicio` time NOT NULL,
  `fecha_final` date NOT NULL,
  `hora_final` time NOT NULL,
  `fecha_validez` date DEFAULT NULL COMMENT 'Fecha de Validez del Cupon',
  `id_empresa` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  PRIMARY KEY (`id_campana`),
  KEY `fk_cup_campana_ge_empresa1_idx` (`id_empresa`),
  KEY `fk_cup_campana_acc_usuario1_idx` (`id_user`),
  CONSTRAINT `fk_cup_campana_acc_usuario1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cup_campana_ge_empresa1` FOREIGN KEY (`id_empresa`) REFERENCES `gen_empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `cup_campana` */

insert  into `cup_campana`(`id_campana`,`titulo`,`subtitulo`,`descripcion`,`sobre_campana`,`observaciones`,`fecha_inicio`,`hora_inicio`,`fecha_final`,`hora_final`,`fecha_validez`,`id_empresa`,`id_user`,`fecha_registro`) values (1,'¡Al ataque! $ 58 en vez de $ 128 por 48 Cortes de Makis para 2 personas: 12 Tenkatsu + 12 Emperador + 12 Volcanos + 12 Acevichado en ASAKUSA SUSHI BAR RESTAURANTE','48 Cortes de Makis en Asakusa Sushi Bar - Restaurante',NULL,'<br />\r\n• 48 piezas de makis:<br />\r\n<br />\r\n<span style=\"font-weight: bold;\">Descripción del servicio:</span><br />\r\n<span style=\"font-weight: bold;\">- 12 Acevichados:</span> relleno de palta, langostino empanizado y pulpa de cangrejo. Vienen cubiertos en salsa acevichada.<br />\r\n<br />\r\n<span style=\"font-weight: bold;\">- 12 Tenkatsu:</span> relleno de langostino empanizado, palta, queso crema. Cubierto con chispas de tempura, cebollita china en salsa dulce y ajonjolí blanco. <br />\r\n <br />\r\n<span style=\"font-weight: bold;\">- 12 Emperador:</span> relleno de queso crema, langostino empanizado. Cubierto de láminas de palta en salsa tarí. <br />\r\n<br />\r\n<span style=\"font-weight: bold;\">- 12 Volcanos:</span> relleno de langostino empanizado y queso crema. Cubiertos de láminas de palta en salsa picante.<br />\r\n<br />\r\n ','','2014-12-28','00:00:00','2015-05-31','23:59:00','0000-00-00',1,1,'2014-12-28 10:00:00'),(2,'$ 299 en vez de $. 600 por Láminas de Seguridad transparentes de 12 mil. para auto (incluye los 4 vidrios laterales y el posterior) + Instalación + Lavado de PROFILMS','Láminas de Seguridad para tu auto e instalación de Profilms',NULL,'<br />\r\n• Láminas de seguridad de 12 micras para auto (incluye los 4 vidrios laterales y la posterior) <br />\r\n• Instalación<br />\r\n• Lavado<br />\r\n<br />\r\n<span style=\"font-weight: bold;\">Caracterí­sticas:</span><br />\r\nSe encuentran fabricadas con varias capas de poli&eacute;ster de alta resistencia y una resina acrí­lica de alto rendimiento. <br />\r\nLas láminas cuentan con un elevado grado de adherencia al vidrio. <br />\r\nLa gruesa capa de adhesiva incrementa la resistencia a fuertes impactos. <br />\r\nSu espesor es de 12 mil&eacute;simas de pulgada, lo que permite darle mayor protección a las ventanas de tu auto. <br />\r\n<br />\r\n<span style=\"font-weight: bold;\">Beneficios:</span> <br />\r\nLa láminas de seguridad Profilms te protegerán de atentados, vandalismos, sismos y accidentes. En caso de un accidente puede salvarte la vida al mantener los fragmentos del vidrio unidos en una sola pieza. Esto te protegerá de las esquirlas voladoras de los vidrios de tu vehículo. Reduce el avance del fuego en caso de incendios. <br />\r\nNo distorsionan la visibilidad del vidrio instalado.<br />\r\n<br />\r\n<span style=\"font-weight: bold;\">Instalación:</span> se hará en el mismo establecimiento <br />\r\n<br />\r\n<span style=\"font-weight: bold;\">Lavado:</span> tu vehículo quedará más que limpio con este lavado exterior con shampoo, y siliconeado interior y exterior.<br />\r\n<br />\r\n<span style=\"font-weight: bold;\">Duración:</span> 8 horas aproximadamente.<br />\r\n<br />\r\nNo lo dejes para despu&eacute;s... ¡Resguarda tu seguridad dentro del auto!  ','','2014-12-28','00:00:00','2015-05-31','23:59:00','0000-00-00',2,1,'2014-12-28 10:00:00'),(3,'Desde $ 39 Desayuno Buffet para 1 o 2 personas, según elijas, en NOVOTEL LIMA','Desayuno Buffet para 1 o 2 personas, según elijas, en Novotel Lima',NULL,'<br />\r\n<span style=\"font-weight: bold;\">OPCIÓN 1:</span><br />\r\n$ 39 en vez de $ 53 por:<br />\r\n• Desayuno Buffet para 1 persona.<br />\r\n<span style=\"font-weight: bold;\">OPCIÓN 2:</span> <br />\r\n$ 69 en vez de $ 106 por:<br />\r\n• Desayuno Buffet para 2 personas. <br />\r\n  ','','2014-12-28','00:00:00','2015-05-31','23:59:00','0000-00-00',3,1,'2014-12-28 10:00:00'),(4,'¡Siempre liso! $ 99 en vez de $ 530 por Alisado brasilero con keratina + Sistema acelerador fotónico Photon Lizze + Post lavado con mascarilla de chocolate + Cambio de esmalte Masglow en NAOMI\'S Salón y Spa','Alisado brasilero con keratina + Photon Lizze en Naomi\'s',NULL,'<br />\r\n<span style=\"font-weight: bold;\">• Alisado brasilero con keratina:</span> ideal para cabellos resecos, esponjosos y maltratados; el alisado dejará tu cabello hidratado, suave y sedoso, reduciendo notablemente su volumen. <br />\r\n<br />\r\n<span style=\"font-weight: bold;\">• Sistema acelerador fotónico Photon Lizze:</span> es un revolucionario tratamiento a base de rayos de luz frí­a que logra un laceado de impacto. Con esto obtendrás un cabello más suave, brillante, manejable y sin rastros de frizz. <br />\r\n<br />\r\n<span style=\"font-weight: bold;\">• Post lavado con mascarilla de chocolate Gold brasilera:</span> fortalece el cabello y sella las puntas. Será realizado a los 2 o 3 días despu&eacute;s.<br />\r\n<br />\r\n<span style=\"font-weight: bold;\"><span style=\"font-weight: bold;\">•&nbsp;</span>Cambio de esmalte con la reconocida marca Masglow.</span><br />\r\n<br />\r\n<span style=\"font-weight: bold;\">Nota: el largo del cabello debe medir hasta la altura del brasier (si la sobrepasa tendrá que abonar S/. 35 más en el Salón).</span><br />\r\n ','','2014-12-28','00:00:00','2015-05-31','23:59:00','0000-00-00',4,1,'2014-12-28 10:00:00'),(5,'¡Cusco te llama! $ 50 en vez de $ 85 por City Tour en Mirabus por Cusco + Desayuno + Movilidad turí­stica en el Valle Sagrado + Guía profesional con TU VIAJE PERÚ','City Tour en Mirabus por Cusco + Guí­a y más con Tu Viaje Perú',NULL,'<br />\r\nCity Tour en Mirabus por Cusco<br />\r\nMovilidad turÍ­stica en el Valle Sagrado<br />\r\nGuÍ­a profesional<br />\r\n<br />\r\n<span style=\"font-weight: bold;\">* DIA 1:</span><br />\r\nTour a la ciudad:<br />\r\nPunto de encuentro Plaza de Armas de Cusco 1.45 p.m.<br />\r\nLuego  visita al Qoricancha  o Templo del Sol \" Sacsayhuaman - Puca Pucara - Tambomachay y Qenqo, luego retorno a la ciudad de Cusco 6:30 p.m.<br />\r\n<br />\r\n<span style=\"font-weight: bold;\">Incluye:</span><br />\r\nBus  turÍ­stico para el grupo  <br />\r\nGuÍa profesional <br />\r\n<br />\r\n<span style=\"font-weight: bold;\">No incluye:</span><br />\r\nBoleto  TurÍstico  (varÍ­an seún pasajero nacional ,estudiante o extranjeros, niños menores de 7 años  no pagan ingresos)<br />\r\nEntradas al Qoricancha ($ 10)<br />\r\n<br />\r\n<span style=\"font-weight: bold;\">* DIA 2:</span><br />\r\nValle sagrado: <br />\r\nPunto de encuentro: Plaza de Armas de Cusco a las 8.20 a.m.<br />\r\nEste tour se inicia aproximadamente a las 8:20 a.m. y finaliza a las 7 p.m., pasarán por su hotel, para tener una visita guiada al Valle Sagrado de los Incas, sobre el rí­o Vilcanota, para una vista panorámica de la ciudadela Inca de Pisac y visita al tí­pico mercado Indio de Pisac, donde tendrán la oportunidad de conocer de cerca las costumbres de sus pobladores y regatear precios con los vendedores. Luego se dirigirán a la Ciudad de Urubamba, viajando a orillas del rio Vilcanota, llegarán a la ciudad inca de Ollantaytambo y el  camino de  retorno  lo harán visitando  el pintoresco  pueblo de Chinchero. Regresan a la ciudad de Cusco  a las  7 p.m.<br />\r\n<br />\r\n<span style=\"font-weight: bold;\">Incluye:</span><br />\r\nBus  turí­stico para el grupo  en el valle sagrado<br />\r\nGuía profesional al valle sagrado<br />\r\n<br />\r\n<span style=\"font-weight: bold;\">No incluye:</span><br />\r\nBoleto  Turístico  (varí­an según pasajero nacional ,estudiante o extranjeros, niños menores de 7 años  no pagan ingresos)<br />\r\nAlmuerzo <br />\r\n<br />\r\n<span style=\"font-weight: bold;\">¡Maraví­llate con este video del Valle Sagrado!</span><br />\r\n ','','2014-12-28','00:00:00','2015-05-31','23:59:00','0000-00-00',5,1,'2014-12-28 10:00:00'),(6,'¡Somos Trujillo! $ 192 en vez de $ 320 por 3D/2N para 2 en HOTEL CONVENCIÓN + Desayunos + Servicio a la habitación','¡Vamos a Trujillo! 3D/2N para 2 en Hotel Convención',NULL,'<br />\r\n3D/2N en habitación doble o matrimonial en HOTEL CONVENCIÓN de Trujillo<br />\r\nDesayunos<br />\r\nServicio a la habitación sin recargo<br />\r\n<br />\r\n<span style=\"font-weight: bold;\">Descripción:</span><br />\r\n<span style=\"font-weight: bold;\">- Hotel Convención:</span> se esfuerza por hacer de tu estadí­a una experiencia satisfactoria. Su estrat&eacute;gica ubicación, excelente servicio personalizado, trato cordial y variedad de comodidades, hará que tu estadí­a sea inolvidable.<br />\r\n<br />\r\n<span style=\"font-weight: bold;\">- Los desayunos constan de:</span> jugo de frutas naturales, pan, mermelada, mantequilla, caf&eacute; c/s leche y huevos revueltos con jamón.<br />\r\n<br />\r\n<span style=\"font-weight: bold;\">- Tambi&eacute;n incluye:</span> wifi, servicio a la habitación sin recargo, TV con cable, baño privado y agua caliente. ','','2014-12-28','00:00:00','2015-05-31','23:59:00','0000-00-00',6,1,'2014-12-28 10:00:00'),(7,'¡Adrenalina al máximo! $ 139 en vez de $ 279 por Skatecycle MONARK ® en color blanco o negro, según elijas','Skatecycle Monark® en color blanco o negro, según elijas',NULL,'<br />\r\n<span style=\"font-weight: bold;\">OPCIÓN 1:</span><br />\r\nSkatecycle MONARK &reg; en color blanco<br />\r\n<br />\r\n<span style=\"font-weight: bold;\">OPCIÓN 2:</span><br />\r\nSkatecycle MONARK &reg; en color negro<br />\r\n<br />\r\n ','','2014-12-28','00:00:00','2015-05-31','23:59:00','0000-00-00',7,1,'2014-12-28 10:00:00'),(8,'Desde 504 en la mañana','¡Oferta imperdible! Desde $ 19.90 por Buffet Ítalo-Peruano para 1 o 2 personas en ANANKÉ TRATTORÍA PERUANA',NULL,'\r\n<p>Disfruta de un banquete digno de rey! No dejes de comer los deliciosos platillos de este buffet Ítalo-Peruano que Anank&eacute; Trattoría Peruana tiene para ti. Aprovecha esta exquisita oferta gastronómica con hasta 62% de descuento.</p><br style=\"text-align: justify; line-height: 18px; font-family: gotham-book, arial, sans-serif; color: rgb(0, 0, 0); background-color: rgb(244, 243, 239);\" />\r\n<span style=\"text-align: justify;\">La oferta incluye:</span><br style=\"text-align: justify;\" />\r\n<span style=\"text-align: justify;\">OPCIÓN 1:</span><br style=\"text-align: justify;\" />\r\n<span style=\"text-align: justify;\">$ 19.90 en vez de $ 52 por:</span><br style=\"text-align: justify;\" />\r\n<span style=\"text-align: justify;\">• Buffet Ítalo-Peruano para 1 persona</span><br style=\"text-align: justify; line-height: 18px; font-family: gotham-book, arial, sans-serif; color: rgb(0, 0, 0); background-color: rgb(244, 243, 239);\" />\r\n<br style=\"text-align: justify; line-height: 18px; font-family: gotham-book, arial, sans-serif; color: rgb(0, 0, 0); background-color: rgb(244, 243, 239);\" />\r\n<span style=\"text-align: justify;\">OPCIÓN 2:</span><br style=\"text-align: justify;\" />\r\n<span style=\"text-align: justify;\">$ 38 en vez de $ 104 por:</span><br style=\"text-align: justify;\" />\r\n<span style=\"text-align: justify;\">• Buffet Ítalo-Peruano para 2&nbsp;</span><br style=\"text-align: justify;\" />\r\n<br style=\"text-align: justify;\" />\r\n<span style=\"text-align: justify;\">Descripción de Buffet Ítalo- Peruano:</span><br style=\"text-align: justify;\" />\r\n<span style=\"text-align: justify;\">Entradas:</span><br style=\"text-align: justify;\" />\r\n<span style=\"text-align: justify;\">- Causa limeña&nbsp;</span><br style=\"text-align: justify;\" />\r\n<span style=\"text-align: justify;\">- Ensalada waldorf&nbsp;</span><br style=\"text-align: justify;\" />\r\n<span style=\"text-align: justify;\">- Ensalada chucrut&nbsp;</span> ','\r\n<ul class=\"bullets\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 8px; padding: 0px; text-align: justify;\">\r\n	<li style=\"padding: 0px 0px 0px 5px;\">Podrás usar este cupón hasta el 28 de mayo de 2015.</li>\r\n	<li style=\"padding: 0px 0px 0px 5px;\">1 OferTOP por 1 o 2 personas, según elijas.</li>\r\n	<li style=\"padding: 0px 0px 0px 5px;\">Máximo 5 OferTOP por mesa.</li>\r\n	<li style=\"padding: 0px 0px 0px 5px;\">Horario de atención de cupones: de martes a domingo de 12:30 m. a 3 p.m.</li>\r\n	<li style=\"padding: 0px 0px 0px 5px;\">La atención se realizará previa reserva, con 24 horas de anticipación, escribiendo a reservasananke@gmail.com</li>\r\n	<li style=\"padding: 0px 0px 0px 5px;\">No aplica para delivery ni para llevar.</li>\r\n	<li style=\"padding: 0px 0px 0px 5px;\">Platos sujetos a variación sin previo aviso.</li>\r\n	<li style=\"padding: 0px 0px 0px 5px;\">Reservas sujetas a disponibilidad.</li>\r\n	<li style=\"padding: 0px 0px 0px 5px;\">No válido para feriados ni días festivos.</li>\r\n	<li style=\"padding: 0px 0px 0px 5px;\">Oferta no acumulable con otras promociones.</li>\r\n	<li style=\"padding: 0px 0px 0px 5px;\">No olvides presentar tu cupón impreso en el establecimiento.</li>\r\n	<li style=\"padding: 0px 0px 0px 5px;\">Las imágenes mostradas son referenciales.</li>\r\n	<li style=\"padding: 0px 0px 0px 5px;\">Stock mínimo disponible:5.</li>\r\n	<li style=\"padding: 0px 0px 0px 5px;\">Una vez realizada la reserva no se aceptarán cambios de fecha, ni cancelaciones.</li>\r\n	<li style=\"padding: 0px 0px 0px 5px;\">Conoce las&nbsp;<a href=\"http://ofertop.pe/interes/terminos-y-condiciones\" target=\"_blank\">Políticas y condiciones</a>&nbsp;que aplican a todas nuestras ofertas.</li>\r\n	<li style=\"padding: 0px 0px 0px 5px;\">Realiza tus&nbsp;<a href=\"http://ofertop.pe/interes/acerca-pago-efectivo\" target=\"_blank\">pagos en efectivo</a>.</li>\r\n	<li style=\"padding: 0px 0px 0px 5px;\">¡Te enviaremos tu OferTOP despu&eacute;s de realizar tu compra! No más esperas, para que lo puedas disfrutar cuando te provoque, previa reserva.</li>\r\n	<li style=\"padding: 0px 0px 0px 5px;\">Si en un plazo de 1 hora luego de realizar tu compra no recibes tu cupón OferTOP en tu correo electrónico registrado, por favor escríbenos aclientes@ofertop.pe y te daremos una pronta solución (Coloca en el asunto: Cupón no recibido).</li>\r\n</ul> ','2015-04-16','00:00:00','2015-05-31','00:00:00','2015-04-23',11,2,'0000-00-00 00:00:00'),(9,'¡Todos los makis que gustes ! $ 25.90 en vez de $ 40 ','¡ Antojo de maquis ! ',NULL,'\r\n','\r\n','2015-04-15','21:46:10','2015-12-30','12:35:00','2015-04-25',15,2,'0000-00-00 00:00:00');

/*Table structure for table `cup_campana_categoria` */

DROP TABLE IF EXISTS `cup_campana_categoria`;

CREATE TABLE `cup_campana_categoria` (
  `id_campana` int(11) NOT NULL,
  `id_sub_categoria` int(11) NOT NULL,
  PRIMARY KEY (`id_campana`,`id_sub_categoria`),
  KEY `fk_cup_acuerdo_has_gen_categoria_cup_acuerdo_idx` (`id_campana`),
  KEY `fk_cup_campana_categoria_gen_sub_categoria1_idx` (`id_sub_categoria`),
  CONSTRAINT `fk_cup_acuerdo_has_gen_categoria_cup_acuerdo` FOREIGN KEY (`id_campana`) REFERENCES `cup_campana` (`id_campana`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cup_campana_categoria_gen_sub_categoria1` FOREIGN KEY (`id_sub_categoria`) REFERENCES `gen_sub_categoria` (`id_sub_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cup_campana_categoria` */

insert  into `cup_campana_categoria`(`id_campana`,`id_sub_categoria`) values (1,20),(2,23),(3,19),(4,1),(5,21),(6,21),(7,24),(8,19),(9,20);

/*Table structure for table `cup_campana_opcion` */

DROP TABLE IF EXISTS `cup_campana_opcion`;

CREATE TABLE `cup_campana_opcion` (
  `id_campana_opcion` int(11) NOT NULL AUTO_INCREMENT,
  `id_campana` int(11) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `precio_regular` decimal(12,2) NOT NULL,
  `precio_especial` decimal(12,2) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `vendidos` int(11) DEFAULT NULL,
  `comision` decimal(12,2) NOT NULL,
  PRIMARY KEY (`id_campana_opcion`,`id_campana`),
  KEY `fk_cup_campana_opcion_cup_campana1_idx` (`id_campana`),
  CONSTRAINT `fk_cup_campana_opcion_cup_campana1` FOREIGN KEY (`id_campana`) REFERENCES `cup_campana` (`id_campana`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `cup_campana_opcion` */

insert  into `cup_campana_opcion`(`id_campana_opcion`,`id_campana`,`descripcion`,`precio_regular`,`precio_especial`,`cantidad`,`vendidos`,`comision`) values (1,1,'48 piezas de makis.','128.00','58.00',NULL,19,'0.00'),(2,2,'Láminas de seguridad de 12 micras para auto. ','600.00','299.00',NULL,2,'0.00'),(3,3,'Desayuno Buffet para 1 persona.','53.00','39.00',NULL,2,'0.00'),(4,3,'Desayuno Buffet para 2 personas.','106.00','69.00',NULL,9,'0.00'),(5,4,'Alisado brasilero con keratina.','530.00','99.00',NULL,16,'0.00'),(6,5,'City Tour en Mirabus por Cusco.','85.00','50.00',NULL,14,'0.00'),(7,6,'3D/2N en habitación doble o matrimonial en HOTEL CONVENCIÓN de Trujillo ','320.00','192.00',NULL,NULL,'0.00'),(8,7,'Skatecycle MONARKÂ® en color blanco','279.00','140.00',NULL,NULL,'0.00'),(9,7,'Skatecycle MONARKÂ® en color negro','279.00','140.00',NULL,NULL,'0.00'),(10,8,'\n<p>Oferta imperdible! Desde $ 19.90 por Buffet Ítalo-Peruano para 1 o 2 personas en ANANK&Eacute; TRATTORÍA PERUANA</p> ','52.00','19.00',NULL,NULL,'0.00'),(11,9,'\n','40.00','25.90',NULL,1,'0.00');

/*Table structure for table `cup_cliente` */

DROP TABLE IF EXISTS `cup_cliente`;

CREATE TABLE `cup_cliente` (
  `email_cliente` varchar(100) NOT NULL,
  `id_tipo_documento` char(3) DEFAULT NULL,
  `numero_documento` varchar(20) DEFAULT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `id_sexo` char(1) DEFAULT NULL,
  `nombres_facebook` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`email_cliente`),
  KEY `fk_cup_cliente_cup_tipo_documento1_idx` (`id_tipo_documento`),
  KEY `fk_cup_cliente_gen_sexo1_idx` (`id_sexo`),
  CONSTRAINT `fk_cup_cliente_cup_tipo_documento1` FOREIGN KEY (`id_tipo_documento`) REFERENCES `gen_tipo_documento` (`id_tipo_documento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cup_cliente_gen_sexo1` FOREIGN KEY (`id_sexo`) REFERENCES `gen_sexo` (`id_sexo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cup_cliente` */

insert  into `cup_cliente`(`email_cliente`,`id_tipo_documento`,`numero_documento`,`nombres`,`apellidos`,`telefono`,`celular`,`password`,`id_sexo`,`nombres_facebook`) values ('arturovilchez@gmail.com','DNI','10064811','Arturo','Vilchez','993555322','998236522','7110eda4d09e062aa5e4a390b0a572ac0d2c0220','M',NULL),('arturovilchr','DNI','','','','','','da39a3ee5e6b4b0d3255bfef95601890afd80709','M',NULL),('cerronparker@oneperutravel.com','DNI','10221795','Miguel','Cerron','984211144','984211144','1122c036000d5b9de505fac002c61b8da4a1c0b5','M',NULL),('germancitotapia@hotmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('gtapia@gibrcena.com.pe','DNI','10213153','Germán','tapia','e','','8cccb19e3724e5365b850153744c6aad6defdfa1','M',NULL);

/*Table structure for table `cup_cupon` */

DROP TABLE IF EXISTS `cup_cupon`;

CREATE TABLE `cup_cupon` (
  `id_cupon` int(11) NOT NULL AUTO_INCREMENT,
  `email_cliente` varchar(100) NOT NULL,
  `id_campana` int(11) NOT NULL,
  `id_campana_opcion` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unitario` decimal(12,2) NOT NULL,
  `precio_total` decimal(12,2) NOT NULL,
  `id_tarjeta` char(3) NOT NULL,
  `id_estado_compra` int(11) NOT NULL,
  `fecha_compra` datetime DEFAULT NULL,
  PRIMARY KEY (`id_cupon`),
  KEY `fk_cup_cupon_cup_cliente1_idx` (`email_cliente`),
  KEY `fk_cup_cupon_gen_estado_compra1_idx` (`id_estado_compra`),
  KEY `fk_cup_cupon_gen_tarjeta1_idx` (`id_tarjeta`),
  KEY `fk_cup_cupon_cup_campana_opcion1_idx` (`id_campana_opcion`,`id_campana`),
  CONSTRAINT `fk_cup_cupon_cup_campana_opcion1` FOREIGN KEY (`id_campana_opcion`, `id_campana`) REFERENCES `cup_campana_opcion` (`id_campana_opcion`, `id_campana`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cup_cupon_cup_cliente1` FOREIGN KEY (`email_cliente`) REFERENCES `cup_cliente` (`email_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cup_cupon_gen_estado_compra1` FOREIGN KEY (`id_estado_compra`) REFERENCES `gen_estado_compra` (`id_estado_compra`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cup_cupon_gen_tarjeta1` FOREIGN KEY (`id_tarjeta`) REFERENCES `gen_tarjeta` (`id_tarjeta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

/*Data for the table `cup_cupon` */

insert  into `cup_cupon`(`id_cupon`,`email_cliente`,`id_campana`,`id_campana_opcion`,`cantidad`,`precio_unitario`,`precio_total`,`id_tarjeta`,`id_estado_compra`,`fecha_compra`) values (1,'germancitotapia@hotmail.com',2,2,1,'299.00','299.00','001',1,NULL),(2,'germancitotapia@hotmail.com',2,2,2,'299.00','598.00','001',1,NULL),(3,'germancitotapia@hotmail.com',1,1,1,'58.00','58.00','001',3,NULL),(4,'germancitotapia@hotmail.com',1,1,1,'58.00','58.00','001',3,NULL),(5,'germancitotapia@hotmail.com',2,2,1,'299.00','299.00','001',3,NULL),(6,'germancitotapia@hotmail.com',3,4,1,'69.00','69.00','001',3,NULL),(7,'germancitotapia@hotmail.com',3,3,1,'39.00','39.00','001',3,NULL),(8,'germancitotapia@hotmail.com',4,5,1,'99.00','99.00','001',3,NULL),(9,'germancitotapia@hotmail.com',1,1,1,'58.00','58.00','001',3,'2015-04-19 18:29:42'),(10,'germancitotapia@hotmail.com',1,1,2,'58.00','116.00','001',3,'2015-04-20 00:43:31'),(11,'germancitotapia@hotmail.com',1,1,1,'58.00','58.00','001',3,'2015-04-20 00:45:55'),(12,'arturovilchez@gmail.com',9,11,1,'25.90','25.90','001',3,'2015-04-21 15:57:11'),(13,'cerronparker@oneperutravel.com',1,1,1,'58.00','58.00','001',3,'2015-04-21 18:15:33'),(14,'germancitotapia@hotmail.com',4,5,1,'99.00','99.00','001',3,'2015-04-22 13:51:39'),(15,'germancitotapia@hotmail.com',3,3,1,'39.00','39.00','001',3,'2015-04-22 13:59:21'),(16,'germancitotapia@hotmail.com',4,5,1,'99.00','99.00','001',3,'2015-04-22 14:44:38'),(17,'germancitotapia@hotmail.com',4,5,1,'99.00','99.00','001',3,'2015-04-22 22:07:42'),(18,'germancitotapia@hotmail.com',3,4,1,'69.00','69.00','001',3,'2015-04-22 22:09:25'),(19,'germancitotapia@hotmail.com',3,4,1,'69.00','69.00','001',3,'2015-04-22 22:28:33'),(20,'germancitotapia@hotmail.com',3,4,1,'69.00','69.00','001',3,'2015-04-22 23:23:40'),(21,'germancitotapia@hotmail.com',2,2,1,'299.00','299.00','001',3,'2015-04-28 05:29:18'),(22,'germancitotapia@hotmail.com',1,1,1,'58.00','58.00','001',3,'2015-04-28 06:58:33'),(23,'germancitotapia@hotmail.com',5,6,1,'50.00','50.00','001',3,'2015-05-02 10:21:07'),(24,'germancitotapia@hotmail.com',5,6,2,'50.00','100.00','001',7,'2015-05-12 15:21:46'),(25,'gtapia@gibrcena.com.pe',5,6,1,'50.00','50.00','001',7,'2015-05-12 19:26:16'),(26,'arturovilchr',5,6,1,'50.00','50.00','001',1,NULL),(27,'arturovilchez@gmail.com',5,6,4,'50.00','200.00','001',3,'2015-05-14 22:42:03'),(28,'germancitotapia@hotmail.com',1,1,5,'58.00','290.00','001',1,NULL),(29,'germancitotapia@hotmail.com',1,1,5,'58.00','290.00','001',1,NULL),(30,'germancitotapia@hotmail.com',1,1,5,'58.00','290.00','001',3,'2015-05-17 11:37:12'),(31,'germancitotapia@hotmail.com',5,6,2,'50.00','100.00','001',1,NULL),(32,'germancitotapia@hotmail.com',5,6,2,'50.00','100.00','001',3,'2015-05-18 21:53:43');

/*Table structure for table `cup_cupon_detalle` */

DROP TABLE IF EXISTS `cup_cupon_detalle`;

CREATE TABLE `cup_cupon_detalle` (
  `codigo_cupon` varchar(45) NOT NULL,
  `id_cupon` int(11) NOT NULL,
  `precio_unitario` decimal(12,2) NOT NULL,
  `id_estado_cupon` int(11) NOT NULL,
  `fecha_cancelacion` datetime DEFAULT NULL,
  `fecha_devolucion` datetime DEFAULT NULL,
  `fecha_validacion` datetime DEFAULT NULL,
  `fecha_vencimiento` datetime DEFAULT NULL,
  `fecha_liquidacion` datetime DEFAULT NULL,
  `fecha_pago` datetime DEFAULT NULL,
  PRIMARY KEY (`codigo_cupon`),
  KEY `id_cupon` (`id_cupon`),
  CONSTRAINT `cup_cupon_detalle_ibfk_1` FOREIGN KEY (`id_cupon`) REFERENCES `cup_cupon` (`id_cupon`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cup_cupon_detalle` */

insert  into `cup_cupon_detalle`(`codigo_cupon`,`id_cupon`,`precio_unitario`,`id_estado_cupon`,`fecha_cancelacion`,`fecha_devolucion`,`fecha_validacion`,`fecha_vencimiento`,`fecha_liquidacion`,`fecha_pago`) values ('ECU-192011171-53905-1',28,'58.00',1,NULL,NULL,NULL,NULL,NULL,NULL),('ECU-192011171-53905-2',28,'58.00',1,NULL,NULL,NULL,NULL,NULL,NULL),('ECU-192011171-53905-3',28,'58.00',1,NULL,NULL,NULL,NULL,NULL,NULL),('ECU-192011171-53905-6',28,'58.00',1,NULL,NULL,NULL,NULL,NULL,NULL),('ECU-192011171-53905-7',28,'58.00',1,NULL,NULL,NULL,NULL,NULL,NULL),('ECU-252011171-51905-0',29,'58.00',1,NULL,NULL,NULL,NULL,NULL,NULL),('ECU-252011171-51905-2',29,'58.00',1,NULL,NULL,NULL,NULL,NULL,NULL),('ECU-252011171-51905-5',29,'58.00',1,NULL,NULL,NULL,NULL,NULL,NULL),('ECU-252011171-51905-6',29,'58.00',1,NULL,NULL,NULL,NULL,NULL,NULL),('ECU-252011171-51905-7',29,'58.00',1,NULL,NULL,NULL,NULL,NULL,NULL),('ECU-262011171-54105-1',30,'58.00',3,'2015-05-17 11:37:12',NULL,NULL,NULL,NULL,NULL),('ECU-262011171-54105-3',30,'58.00',3,'2015-05-17 11:37:12',NULL,NULL,NULL,NULL,NULL),('ECU-262011171-54105-6',30,'58.00',3,'2015-05-17 11:37:12',NULL,NULL,NULL,NULL,NULL),('ECU-262011171-54105-8',30,'58.00',3,'2015-05-17 11:37:12',NULL,NULL,NULL,NULL,NULL),('ECU-262011171-54205-8',30,'58.00',3,'2015-05-17 11:37:12',NULL,NULL,NULL,NULL,NULL),('ECU-522021181-55705-1',31,'50.00',1,NULL,NULL,NULL,NULL,NULL,NULL),('ECU-522021181-55705-2',31,'50.00',1,NULL,NULL,NULL,NULL,NULL,NULL),('ECU-532021181-53205-4',32,'50.00',5,'2015-05-18 21:53:43',NULL,'2015-05-18 21:55:54',NULL,NULL,NULL),('ECU-532021181-53205-8',32,'50.00',3,'2015-05-18 21:53:43',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `cup_liquidacion` */

DROP TABLE IF EXISTS `cup_liquidacion`;

CREATE TABLE `cup_liquidacion` (
  `id_liquidacion` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_liquidacion` datetime DEFAULT NULL,
  `cantidad_cupones` int(11) DEFAULT NULL,
  `total_importe` decimal(12,2) DEFAULT NULL,
  `comision` decimal(12,2) DEFAULT NULL,
  `impuesto` decimal(12,2) DEFAULT NULL,
  `total_liquidacion` decimal(12,2) DEFAULT NULL,
  `id_campana` int(11) NOT NULL,
  `estado_liquidacion` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_liquidacion`),
  KEY `fk_cup_liquidacion_cup_campana1_idx` (`id_campana`),
  CONSTRAINT `fk_cup_liquidacion_cup_campana1` FOREIGN KEY (`id_campana`) REFERENCES `cup_campana` (`id_campana`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `cup_liquidacion` */

insert  into `cup_liquidacion`(`id_liquidacion`,`fecha_liquidacion`,`cantidad_cupones`,`total_importe`,`comision`,`impuesto`,`total_liquidacion`,`id_campana`,`estado_liquidacion`) values (1,'2015-05-12 16:02:12',1,'100.00','28.00','3.36','72.00',5,'1'),(2,'2015-05-12 21:16:59',2,'250.00','70.00','8.40','180.00',5,'1');

/*Table structure for table `cup_liquidacion_cupon` */

DROP TABLE IF EXISTS `cup_liquidacion_cupon`;

CREATE TABLE `cup_liquidacion_cupon` (
  `id_liquidacion` int(11) NOT NULL,
  `id_cupon` int(11) NOT NULL,
  PRIMARY KEY (`id_liquidacion`,`id_cupon`),
  KEY `fk_cup_liquidacion_has_cup_cupon_cup_cupon1_idx` (`id_cupon`),
  KEY `fk_cup_liquidacion_has_cup_cupon_cup_liquidacion1_idx` (`id_liquidacion`),
  CONSTRAINT `fk_cup_liquidacion_has_cup_cupon_cup_cupon1` FOREIGN KEY (`id_cupon`) REFERENCES `cup_cupon` (`id_cupon`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cup_liquidacion_has_cup_cupon_cup_liquidacion1` FOREIGN KEY (`id_liquidacion`) REFERENCES `cup_liquidacion` (`id_liquidacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cup_liquidacion_cupon` */

insert  into `cup_liquidacion_cupon`(`id_liquidacion`,`id_cupon`) values (1,24),(2,25),(2,27);

/*Table structure for table `cup_operador` */

DROP TABLE IF EXISTS `cup_operador`;

CREATE TABLE `cup_operador` (
  `id_operador` int(11) NOT NULL,
  `apellido_paterno` varchar(25) NOT NULL,
  `apellido_materno` varchar(25) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `numero_cuenta` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comision` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_operador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cup_operador` */

/*Table structure for table `gen_categoria` */

DROP TABLE IF EXISTS `gen_categoria`;

CREATE TABLE `gen_categoria` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `gen_categoria` */

insert  into `gen_categoria`(`id_categoria`,`descripcion`) values (1,'Belleza & Salud'),(2,'Viajes'),(3,'Restaurantes'),(4,'Entretenimiento'),(5,'Productos'),(6,'Servicios');

/*Table structure for table `gen_empresa` */

DROP TABLE IF EXISTS `gen_empresa`;

CREATE TABLE `gen_empresa` (
  `id_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `razon_social` varchar(150) NOT NULL,
  `registro_contribuyente` varchar(25) NOT NULL,
  `direccion_facturacion` varchar(150) NOT NULL,
  `direccion_comercial` varchar(150) DEFAULT NULL,
  `telefono` varchar(100) NOT NULL,
  `horario` varchar(150) NOT NULL,
  `web_site` varchar(150) DEFAULT NULL,
  `ubicacion_gps` varchar(500) DEFAULT NULL,
  `numero_cuenta` varchar(100) DEFAULT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `id_operador` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_empresa`),
  KEY `fk_ge_empresa_cup_operador1_idx` (`id_operador`),
  CONSTRAINT `fk_ge_empresa_cup_operador1` FOREIGN KEY (`id_operador`) REFERENCES `cup_operador` (`id_operador`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `gen_empresa` */

insert  into `gen_empresa`(`id_empresa`,`razon_social`,`registro_contribuyente`,`direccion_facturacion`,`direccion_comercial`,`telefono`,`horario`,`web_site`,`ubicacion_gps`,`numero_cuenta`,`descripcion`,`id_operador`) values (1,'ASAKUSA','567688888','Av. Javier Prado Este 2994, San Borja','','3245678','Horario de almuerzo: de lunes a jueves de 12:30 m. a 3:30 p.m. Horario de cena: de lunes a jueves de 7 p.m. a 11 p.m.','http://www.asakusa.pe/','http://maps.google.com/maps/api/staticmap?center=-12.087261,-76.995996&zoom=13&markers=-12.087261,-76.995996&size=200x200&sensor=TRUE_OR_FALSE','345566777','Asakusa Sushibar Restaurante fue creado por cuatro jóvenes peruanos japoneses, con la idea de ofrecer la mejor comida japonesa fusión de Lima. Cuenta con una variada y deliciosa carta, y un espectacular y bien surtido sushibar, además de un local con un bello local de estilo japonés contemporáneo y una atención de primera.',NULL),(2,'PROFILMS','23434343','Av. Javier Prado Este 3475-3477, San Borja','','3455455','De lunes a viernes de 8 a.m. a 6 p.m. / sábados de 8 a.m. a 2 p.m.','http://www.profilmssac.com','http://maps.google.com/maps/api/staticmap?center=-12.085235,-76.986734&zoom=13&markers=-12.085235,-76.986734&size=200x200&sensor=TRUE_OR_FALSE','434564545','Profilms es una empresa nacional especializada en la instalación de láminas de máxima seguridad y control solar para vidrios de vehículos y edificaciones. Ofrece una gran variedad de productos para la industria del vidrio como películas de diferentes colores, de privacidad y seguridad, de bombardeo iónico, etc.',NULL),(3,'NOVOTEL LIMA','43454545','Av. Victor Andrés Belaunde 198, San Isidro','','3454555','De lunes a domingos de 6 a.m. a 10 a.m.','http://www.novotel.com/es/hotel-6339-novotel-lima/index.shtml','http://maps.google.com/maps/api/staticmap?center=-12.095977,-77.036604&zoom=13&markers=-12.085235,-76.986734|-12.095977,-77.036604|-12.095977,-77.036604&size=200x200&sensor=TRUE_OR_FALSE','455656656','Novotel es una prestigiosa cadena hotelera con casi 400 hoteles en todo el mundo. Novotel Lima se encuentra estratégicamente ubicado en el distrito de San Isidro y cuenta con 208 habitaciones, 7 salas de reuniones, wi fi en todos sus ambientes, restaurante, bar, gimnasio, piscina y estacionamiento para ofrecer un servicio de calidad a sus huéspedes. Los servicios que ofrece lo convierten en el lugar ideal para viajes de negocios y de placer.',NULL),(4,'NAOMI\'S SALÓN & SPA','34344344','Jr. Canterac 325, Jesús Marí­a','','4566666','De lunes a sábado de 9:30 a.m. a 8 p.m.','http://www.facebook.com/Naomisalon','http://maps.google.com/maps/api/staticmap?center=-12.070663,-77.047053&zoom=13&markers=-12.085235,-76.986734|-12.095977,-77.036604|-12.095977,-77.036604|21.885754,-102.369081|-12.070663,-77.047053&size=200x200&sensor=TRUE_OR_FALSE','767777777','Naomi\'s Salón y Spa es un centro de belleza especializado en el cuidado de la mujer. Su staff de profesionales te brindarón los más modernos tratamientos entre faciales, tintes, depilación, manicure y pedicure que harán resaltar tu belleza.',NULL),(5,'TU VIAJE PERÚ','34343434','Urb. Parque Industrial, Av. Las Américas C6, Wanchaq, Cusco','','6789999','De lunes a domingo de 8 a.m. a 10 p.m.','http://tuviajeperu.com/','http://maps.google.com/maps/api/staticmap?center=-13.534691,-71.949026&zoom=13&markers=-12.085235,-76.986734|-12.095977,-77.036604|-12.095977,-77.036604|21.885754,-102.369081|-12.070663,-77.047053|-13.534691,-71.949026&size=200x200&sensor=TRUE_OR_FALSE','765544444','Tu Viaje Perú es una agencia de turismo con una amplia alternativa de viajes nacionales e internacionales. Encontrarás servicios turísticos de alta calidad, con respeto del medio ambiente y de las condiciones de trabajo de sus colaboradores. Ofrecen alternativas de viajes adaptadas a todo tipo de público: grupos de excursiones, estudiantes, familias, aventureros y personas con deseos de disfrutar del Perú.',NULL),(6,'HOTEL CONVENCIÓN','56678888','Calle Las Orquí­deas Mz. F, Lt. 10, Urbanización Las Flores, Trujillo','','7899999','Reservas: de lunes a sábado de 9 a.m. a 6 p.m.','http://convenciontrujillo.com','http://maps.google.com/maps/api/staticmap?center=-8.087972,-79.047203&zoom=13&markers=-12.085235,-76.986734|-12.095977,-77.036604|-12.095977,-77.036604|21.885754,-102.369081|-12.070663,-77.047053|-13.534691,-71.949026|-8.087972,-79.047203&size=200x200&sensor=TRUE_OR_FALSE','888888888','Hotel Convención es un hotel 3* con servicio personalizado y todas las comodidades que necesitas para disfrutar una estadí­a placentera. El hotel cuenta con cómodas habitaciones, baños independientes, servicio de lavanderí­a, cafeterí­a, peluquerí­a y servicio de taxi para tu mayor comodidad. Encontrarás toda la elegancia y confort que buscas para unos dí­as fuera de Lima.',NULL),(7,'MONARK','85894894','Calle Libertadores 171, San Isidro / Av. Elmer Calle Libertadores 171, San Isidro / Av. Elmer Faucet 1920 (frente a la base aeronaval), Callao','','6778888','De lunes a sábado de 10 a.m a 8 p.m. (San Isidro) / de lunes a sábado de 9 a.m. a 5:30 p.m. (Callao)','http://www.monarkperu.com/','http://maps.google.com/maps/api/staticmap?center=-12.100623,-77.037312&zoom=13&markers=-12.100623,-77.037312&size=200x200&sensor=TRUE_OR_FALSE','456777777','Monark es la empresa peruana que nació en 1952 bajo el objetivo de ser una de las más importantes en bicicletas, triciclos, carritos, scooters, repuestos y accesorios, equipos para hacer ejercicios y más. Al poco tiempo lograron gran popularidad y aceptación entre grandes y chicos, vendiéndose en todas las ciudades y provincias del paí­s.',NULL),(8,'MR. GRILL','67788888','Ca. Santa Isabel 615 Urb. Colmenares - Pueblo Libre (ref. cdra 8 de Av. La Marina)','','567777','Horario de atención: de lunes a domingo de 9 a.m. a 6 p.m.','http://www.facebook.com/pages/Mr-Grill-Peru/109785929079803?fref=ts','http://maps.google.com/maps/api/staticmap?center=-12.079986,-77.070956&zoom=13&markers=-12.100623,-77.037312|36.778261,-119.417932|36.778261,-119.417932|36.778261,-119.417932|-12.079986,-77.070956&size=200x200&sensor=TRUE_OR_FALSE','322333333','Disfruta lo mejor de las carnes preparadas a la Caja china, al Cilindro o a la parrilla, al más puro estilo y sabor de los especialistas de Mr. Grill.',NULL),(9,'LACEADOS HÉCTOR','56565656','Calle Esperanza 135, tda. 207, Miraflores','','3434334','De lunes a viernes de 10 a.m. a 7 p.m. / sábados de 9 a.m. a 4 p.m.','','http://maps.google.com/maps/api/staticmap?center=-12.120402,-77.027676&zoom=13&markers=-12.120402,-77.027676&size=200x200&sensor=TRUE_OR_FALSE','656676767','Laceados Héctor es uno de los salones de belleza especializados en topo tipo de laceados. Cuenta con un staff de profesionales de la belleza, quienes están en constante formación y aprendiendo nuevas técnicas para ofrecerte el servicio de calidad que te mereces. Héctor orienta su trabajo a la belleza y cuidado del cabello con el profesionalismo y seriedad requeridos por el mercado actual. Para ello, utiliza los productos y tecnologí­a más eficientes.',NULL),(10,'EQUILIBRIO CONCIENTE PERÚ','45555555','Calle Flora TristÃ¡n 598, Of. 4, San Isidro','','3343433','De lunes a viernes de 10 a.m. a 7 p.m.','http://www.equilibrioconcienteperu.blogspot.com/','http://maps.google.com/maps/api/staticmap?center=-12.095872,-77.057892&zoom=13&markers=-12.120402,-77.027676|-12.095872,-77.057892&size=200x200&sensor=TRUE_OR_FALSE','434343434','Equilibrio Conciente Perú ofrece tratamientos y actividades para el cuerpo, la mente y el espí­ritu en base a la sabidurí­a natural que manejan sus especialistas. Dentro de sus instalaciones cuentan con servicios de terapias colónicas, alimentación natural, programación neurolingí­stica y reiki, entre otros. Las raí­ces del centro radican en sus encargados: Martí­n Torres, técnico en dietética y nutrición natural, y Romina Linari, maestra de reiki y poseedora de un diploma internacional de coaching integral del Instituto de Estudios Integrales.',NULL),(11,'','','','','','','','','','',NULL),(12,'NOE','','','','','','','','','',NULL),(13,'','','','','','','','','','',NULL),(14,'','','','','','','','','','',NULL),(15,'NOE','201002274612','San Marino Shopping Local 31-32-33, Avenida Francisco de Orellana, Guayaquil','','593 4 208-286','9A M A 10 PM','http://www.noesushibar.com/','http://maps.google.com/maps/api/staticmap?center=-2.238981,-79.930810&zoom=13&markers=-2.238981,-79.930810&size=200x200&sensor=TRUE_OR_FALSE\r\n','23563295239','Noe Carmona, Chef Ejecutivo y creador de más del 70% de los platos que presentamos, fusiona  de manera extraordinaria la tradicional gastronomía japonesa con el paladar ecuatoriano, complementado con una presentación verdaderamente creativa y visualmente artística.	\r\n',NULL);

/*Table structure for table `gen_estado_compra` */

DROP TABLE IF EXISTS `gen_estado_compra`;

CREATE TABLE `gen_estado_compra` (
  `id_estado_compra` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_estado_compra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `gen_estado_compra` */

insert  into `gen_estado_compra`(`id_estado_compra`,`descripcion`) values (1,'Pendiente'),(2,'En Proceso'),(3,'Pagado'),(4,'Devuelto'),(5,'Validado'),(6,'Vencido'),(7,'Liquidado'),(8,'Pagado');

/*Table structure for table `gen_sexo` */

DROP TABLE IF EXISTS `gen_sexo`;

CREATE TABLE `gen_sexo` (
  `id_sexo` char(1) NOT NULL,
  `descripcion_sexo` varchar(45) NOT NULL,
  PRIMARY KEY (`id_sexo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `gen_sexo` */

insert  into `gen_sexo`(`id_sexo`,`descripcion_sexo`) values ('F','Femenino'),('M','Masculino');

/*Table structure for table `gen_sub_categoria` */

DROP TABLE IF EXISTS `gen_sub_categoria`;

CREATE TABLE `gen_sub_categoria` (
  `id_sub_categoria` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  PRIMARY KEY (`id_sub_categoria`),
  KEY `fk_gen_sub_categoria_gen_categoria1_idx` (`id_categoria`),
  CONSTRAINT `fk_gen_sub_categoria_gen_categoria1` FOREIGN KEY (`id_categoria`) REFERENCES `gen_categoria` (`id_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `gen_sub_categoria` */

insert  into `gen_sub_categoria`(`id_sub_categoria`,`descripcion`,`id_categoria`) values (1,'Alisados y Laceados',1),(2,'Tratamientos capilares',1),(3,'Tintes y Color',1),(4,'Faciales',1),(5,'Maquillaje Permanente',1),(6,'Peelings',1),(7,'Tratamientos Corporales',1),(8,'DepilaciÃ³n',1),(9,'Masajes',1),(10,'Manicure & Pedicure',1),(11,'Spa',1),(12,'EcografÃ­a 4D',1),(13,'PÃ©rdida de peso',1),(14,'GinecologÃ­a',1),(15,'Tratamientos preventivos',1),(16,'PodologÃ­a',1),(17,'OdontologÃ­a',1),(18,'OftalmologÃ­a',1),(19,'Buffets',3),(20,'Sushi & Makis',3),(21,'Viajes Nacionales',2),(22,'Viajes Internacionales',2),(23,'Automotriz',6),(24,'Deportes & Fitness',5);

/*Table structure for table `gen_tarjeta` */

DROP TABLE IF EXISTS `gen_tarjeta`;

CREATE TABLE `gen_tarjeta` (
  `id_tarjeta` char(3) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tarjeta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `gen_tarjeta` */

insert  into `gen_tarjeta`(`id_tarjeta`,`descripcion`) values ('001','Visa');

/*Table structure for table `gen_tipo_documento` */

DROP TABLE IF EXISTS `gen_tipo_documento`;

CREATE TABLE `gen_tipo_documento` (
  `id_tipo_documento` char(3) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tipo_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `gen_tipo_documento` */

insert  into `gen_tipo_documento`(`id_tipo_documento`,`descripcion`) values ('CEX','Carnet de ExtranjerÃ­a'),('DNI','DNI'),('PAS','Pasaporte'),('RUC','RUC');

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(100) NOT NULL,
  `controller` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  `label` varchar(150) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_acc_menu_acc_menu1_idx` (`parent`),
  CONSTRAINT `fk_acc_menu_acc_menu1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `menu` */

insert  into `menu`(`id`,`module`,`controller`,`action`,`label`,`parent`) values (1,'#','#','#','Mantenimiento',NULL),(2,'dashboard','user','list','Usuario',1),(3,'dashboard','role','list','Roles',1),(4,'dashboard','campana','list','Campaña',1),(5,'dashboard','micampana','index','Mi Campaña',NULL),(6,'dashboard','liquidacion','list','Liquidaciones',1),(7,'dashboard','empresa','list','Empresa',1);

/*Table structure for table `privilege` */

DROP TABLE IF EXISTS `privilege`;

CREATE TABLE `privilege` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_acc_privilegio_acc_rol1_idx` (`role_id`),
  KEY `fk_acc_privilegio_acc_menu1_idx` (`menu_id`),
  CONSTRAINT `fk_acc_privilegio_acc_menu1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_acc_privilegio_acc_rol1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `privilege` */

insert  into `privilege`(`id`,`role_id`,`menu_id`) values (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,4),(9,2,7),(10,2,1);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`id`,`name`) values (1,'Super Administrador'),(2,'Administrador'),(3,'Establecimiento');

/*Table structure for table `ubi_departamento` */

DROP TABLE IF EXISTS `ubi_departamento`;

CREATE TABLE `ubi_departamento` (
  `id_pais` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_departamento`,`id_pais`),
  KEY `fk_ubi_departamento_ubi_pais1_idx` (`id_pais`),
  CONSTRAINT `fk_ubi_departamento_ubi_pais1` FOREIGN KEY (`id_pais`) REFERENCES `ubi_pais` (`id_pais`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ubi_departamento` */

/*Table structure for table `ubi_distrito` */

DROP TABLE IF EXISTS `ubi_distrito`;

CREATE TABLE `ubi_distrito` (
  `id_pais` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `id_provincia` int(11) NOT NULL,
  `id_distrito` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_pais`,`id_departamento`,`id_provincia`,`id_distrito`),
  KEY `fk_ubi_distrito_ubi_provincia1_idx` (`id_pais`,`id_departamento`,`id_provincia`),
  CONSTRAINT `fk_ubi_distrito_ubi_provincia1` FOREIGN KEY (`id_pais`, `id_departamento`, `id_provincia`) REFERENCES `ubi_provincia` (`id_pais`, `id_departamento`, `id_provincia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ubi_distrito` */

/*Table structure for table `ubi_pais` */

DROP TABLE IF EXISTS `ubi_pais`;

CREATE TABLE `ubi_pais` (
  `id_pais` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`id_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ubi_pais` */

/*Table structure for table `ubi_provincia` */

DROP TABLE IF EXISTS `ubi_provincia`;

CREATE TABLE `ubi_provincia` (
  `id_pais` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `id_provincia` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_pais`,`id_departamento`,`id_provincia`),
  KEY `fk_ubi_provincia_ubi_departamento1_idx` (`id_departamento`,`id_pais`),
  CONSTRAINT `fk_ubi_provincia_ubi_departamento1` FOREIGN KEY (`id_departamento`, `id_pais`) REFERENCES `ubi_departamento` (`id_departamento`, `id_pais`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ubi_provincia` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `full_name` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_acc_usuario_acc_rol1_idx` (`role_id`),
  CONSTRAINT `fk_acc_usuario_acc_rol1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`full_name`,`email`,`role_id`) values (1,'gtapia','f162710ac5fb3754027223611251571ec5044227','GermÃ¡n Tapia Rojas','gtapia@gibarcena.com.pe',1),(2,'avilchez','52ae22bb8bcd8f8ebeccb3598318d6ad7cae75dc','Arturo Vilchez','avilchez@gibarcena.com.pe',2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
