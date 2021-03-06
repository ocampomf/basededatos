-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: notasdetexto
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.20-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'viajes'),(2,'destinos'),(3,'vuelos'),(4,'estadias'),(5,'hoteles'),(6,'alquileres'),(7,'playas'),(8,'excursiones'),(9,'restaurantes'),(10,'transporte');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota_categoria`
--

DROP TABLE IF EXISTS `nota_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nota_categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria_id` int(11) NOT NULL,
  `nota_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nota_categoria_FK` (`nota_id`),
  KEY `nota_categoria_FK_1` (`categoria_id`),
  CONSTRAINT `nota_categoria_FK` FOREIGN KEY (`nota_id`) REFERENCES `notas` (`id`),
  CONSTRAINT `nota_categoria_FK_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_categoria`
--

LOCK TABLES `nota_categoria` WRITE;
/*!40000 ALTER TABLE `nota_categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `nota_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `fechaDeCreacion` datetime NOT NULL DEFAULT current_timestamp(),
  `fechaModificacion` datetime DEFAULT NULL,
  `descripcion` text NOT NULL,
  `puedeEliminarse` tinyint(4) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `notas_FK` (`usuario_id`),
  CONSTRAINT `notas_FK` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,'La tierra prometida, ac?? nom??s: Morro de Sao Paulo','2021-09-06 20:36:49',NULL,'Tiramos el ancla frente a la muralla, un poco antes del muelle a donde llegan las lanchas y barcazas que traen gente de Salvador, principalmente. Desde la capital de Bah??a son 60 kil??metros, unas dos horas por mar abierto, un viaje corto y r??pido pero en el que suele haber bastante ola, muchos se marean. Esto nos sorprendi??: s??lo nos separaban 60 millas de Morro, una navegaci??n simple, toda de d??a, y nos encontramos con las olas m??s altas y rompiendo de todo el viaje hasta el momento.',0,2),(2,'Tiramos el ancla frente a la muralla','2021-09-06 20:37:55',NULL,'Desde que el pasado 1 de julio la provincia tailandesa de Phuket reabriera sus fronteras al turismo internacional, la isla no ha parado de recibir visitantes de manera gradual, dentro de unas normas de seguridad. Desde esta fecha, los viajeros extranjeros vacunados pueden acceder sin requisitos de cuarentena, dentro de una propuesta impulsada por el gobierno del pa??s ubicado en el sudeste asi??tico. ',0,1),(3,'Tulum, un para??so que ya no se esconde y que disfruta de cada vez m??s popularidad entre turistas','2021-09-06 20:37:55',NULL,'De un tiempo a esta parte, sin embargo, cada vez son m??s quienes se animan a disfrutar la experiencia mexicana. Y en lugares como Tulum, esto se eleva al nivel de ??explosi??n??, habi??ndose convertido en un aut??ntico foco tur??stico al que acuden gentes de todos los rincones del mundo.',1,1),(4,'Ante la falta de turistas, los monos de Bali asaltan las casas y temen que se vuelvan violentos','2021-09-06 20:37:55',NULL,'Privados de su fuente de alimentaci??n preferida -los pl??tanos, man??es y otras golosinas que les dan los turistas ahora ausentes debido a la pandemia-, los hambrientos monos de la isla tur??stica de Bali han recurrido a meterse a las viviendas de los habitantes en busca de algo sabroso.',1,2),(5,'Jumeirah Group anuncia la apertura de una nueva e impresionante direcci??n en las Maldivas','2021-09-06 20:37:55',NULL,'El mar de tonos turquesa, a una temperatura que oscila en los 28??C, playas de arenas blancas, lugares ideales para el surf y el buceo, adem??s de resorts de ensue??o, ideales para parejas son algunos de sus argumentos. Viven en sus islas pobladas unas 500 mil personas que en su mayor??a profesan el islamismo y se concentran en su peque??a y capital, Mal??, con unos 100 mil habitantes.',0,3),(6,'Islas Maldivas: 8 lugares imperdibles','2021-09-06 20:37:55',NULL,'Antes que nada, algunos datos ??tiles. Llegar hasta Maldivas desde la Argentina implica realizar un largo viaje en avi??n. Con pasajes que cuestan US$2.210, Gol y Turkish van desde Buenos Aires, con escalas en Sao Paulo y Estambul, para llegar a Mal?? 35 horas despu??s. Por Aerol??neas Argentinas y Qatar Airlines, el pasaje cuesta US$3.146, con escalas en Sao Paulo y Doha (29 horas de viaje).',1,5),(7,'Hanifaru Bay','2021-09-06 20:37:55',NULL,'En la Reserva de la Biosfera Baa Atoll, a 20 minutos de vuelo de Mal??, recibe la mayor concentraci??n de mantarrayas (Manta birostris) del mundo. Esta especie puede medir hasta 7 metros y pesar unas 2 toneladas, pero no es venenosa. Llegan hasta este sitio arenoso y poco profundo entre mayo y noviembre.',0,6),(8,'Parque Natural Addu','2021-09-06 20:37:55',NULL,'Protege un ambiente compuesto por lagos y manglares, en el atol??n del mismo nombre. Una zona de corales atrae a los buceadores, quienes pueden nadar entre mantarrayas casi todo el a??o y acercarse a los restos del British Loyalty, un buque hundido por los alemanes durante la Segunda Guerra Mundial.',1,1),(9,'North Male Atoll y Huvadhoo Atoll','2021-09-06 20:37:55',NULL,'Aunque las barreras de coral protegen lagunas de aguas tranquilas, m??s all?? de ellas se forman olas ideales para el surf. El atol??n North Mal?? es muy popular por su cercan??a a la capital y a los principales resorts. En tanto, Huvadhoo ofrece las olas m??s fr??as del archipi??lago (unos 24?? C).',1,2),(10,'Plan para una semana de vacaciones en Nueva York inolvidable','2021-09-06 20:37:55',NULL,'En este art??culo vamos a describir el plan de viaje que realizar??a, bas??ndome en mi experiencia, en el caso de que fuera a viajar siete d??as de vacaciones a Nueva York, para visitar en una semana los principales sitios tur??sticos y volver con una experiencia de viaje inolvidable. En principio, el orden no tiene porqu?? ser necesariamente el indicado, sino que probablemente en funci??n del tiempo, cansancio,??? ir??a seleccionando una ruta u otra sobre la marcha.',0,1);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuarios_un` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'florencia','ocampo','ocampo@gmail.com'),(2,'diego','gonzalez','diego@gmail.com'),(3,'juan','perez','juan@gmail.com'),(4,'pedro','alvarez','alvarez@gmail.com'),(5,'susana','fernandez','fernandez@gmail.com'),(6,'luan','santos','santos@gmail.com'),(7,'frederick','romero','frederick@gmail.com'),(8,'sofia','cuenca','cuenca@gmail.com'),(9,'hernan','blanco','blanco@gmail.com'),(10,'mariano','neuman','neuman@gmail.com');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'notasdetexto'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-07 22:04:07
