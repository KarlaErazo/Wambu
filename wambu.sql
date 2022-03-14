CREATE DATABASE wambu;
USE wambu;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for carrusel
-- ----------------------------
DROP TABLE IF EXISTS `carrusel`;
CREATE TABLE `carrusel`  (
  `idCarrusel` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `foto` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `estado` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idCarrusel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of carrusel
-- ----------------------------
INSERT INTO `carrusel` VALUES (1, '<h2 class=\"animated text-white\">Wambú<br>más fresco, mas sano</h2>', 'slider6.jpg', 1);
INSERT INTO `carrusel` VALUES (2, '<h2 class=\"animated text-white\">Wambú<br>jugos frescos y sanos</h2>', 'slider7.jpg', 1);
INSERT INTO `carrusel` VALUES (3, '<h2 class=\"animated text-white\">Wambú<br>calidad y precio económico</h2>', 'slider8.jpg', 1);

-- ----------------------------
-- Table structure for categoria
-- ----------------------------
DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria`  (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `estado` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idCategoria`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of categoria
-- ----------------------------
INSERT INTO `categoria` VALUES (1, 'Jugos Revitalizadores', 1);
INSERT INTO `categoria` VALUES (2, 'Jugos Naturales', 1);
INSERT INTO `categoria` VALUES (3, 'Jugos Saludables', 1);
INSERT INTO `categoria` VALUES (4, 'Fruta Cítrica', 1);
INSERT INTO `categoria` VALUES (5, 'Fruta Natural', 1);
INSERT INTO `categoria` VALUES (6, 'Fruta Afrodisiaca', 1);
INSERT INTO `categoria` VALUES (7, 'Fruta Tropical', 1);
INSERT INTO `categoria` VALUES (8, 'Agua', 1);

-- ----------------------------
-- Table structure for cliente
-- ----------------------------
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente`  (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `idPersona` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idCliente`) USING BTREE,
  INDEX `idPersona`(`idPersona`) USING BTREE,
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`idPersona`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cliente
-- ----------------------------
INSERT INTO `cliente` VALUES (19, '1', 22);
INSERT INTO `cliente` VALUES (20, '1', 23);
INSERT INTO `cliente` VALUES (21, '1', 24);

-- ----------------------------
-- Table structure for comentario
-- ----------------------------
DROP TABLE IF EXISTS `comentario`;
CREATE TABLE `comentario`  (
  `idComentario` int(11) NOT NULL AUTO_INCREMENT,
  `comentario` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `idProducto` int(11) NULL DEFAULT NULL,
  `fecha` datetime NULL DEFAULT NULL,
  `idUsuario` int(11) NULL DEFAULT NULL,
  `nombreUsuario` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `calificacion` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idComentario`) USING BTREE,
  INDEX `idProducto`(`idProducto`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comentario
-- ----------------------------

-- ----------------------------
-- Table structure for credenciales
-- ----------------------------
DROP TABLE IF EXISTS `credenciales`;
CREATE TABLE `credenciales`  (
  `idCredenciales` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `token` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `entityId` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `mid` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tid` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `userData` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `modo` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `identificador` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idCredenciales`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of credenciales
-- ----------------------------
INSERT INTO `credenciales` VALUES (1, 'https://test.oppwa.com/', 'OGE4Mjk0MTg1YTY1YmY1ZTAxNWE2YzhjNzI4YzBkOTV8YmZxR3F3UTMyWA', '8ac7a4c766c57ba40166caa2e2db0b6b', '1000000505', 'PD100406', 'EQUINOCCIALEQUIPAYMENT', 'DESARROLLO', 'DATAFAST-1');
INSERT INTO `credenciales` VALUES (2, 'https://test.oppwa.com/', 'OGE4Mjk0MTg1YTY1YmY1ZTAxNWE2YzhjNzI4YzBkOTV8YmZxR3F3UTMyWA', '8ac7a4c766c57ba40166caa2e2db0b6b', '1000000505', 'PD100406', 'EQUINOCCIALEQUIPAYMENT', 'PRUEBAS', 'DATAFAST-1');

-- ----------------------------
-- Table structure for detalle_pago
-- ----------------------------
DROP TABLE IF EXISTS `detalle_pago`;
CREATE TABLE `detalle_pago`  (
  `idDetallePago` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `plataforma` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tipo` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `autenticacion` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `voucher` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `personalizado` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `diferidos` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `resultadoCodigo` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `resultadoTexto` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `trama` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `intereses` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `adquiriente` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `fecha` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `marca` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `bin` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `digitos` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `holder` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `estado` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idDetallePago`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of detalle_pago
-- ----------------------------
INSERT INTO `detalle_pago` VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `detalle_pago` VALUES (2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `detalle_pago` VALUES (3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `detalle_pago` VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `detalle_pago` VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `detalle_pago` VALUES (6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `detalle_pago` VALUES (7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `detalle_pago` VALUES (8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `detalle_pago` VALUES (9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `detalle_pago` VALUES (10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `detalle_pago` VALUES (11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `detalle_pago` VALUES (12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `detalle_pago` VALUES (13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `detalle_pago` VALUES (14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `detalle_pago` VALUES (15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `detalle_pago` VALUES (16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `detalle_pago` VALUES (17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `detalle_pago` VALUES (18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `detalle_pago` VALUES (19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `detalle_pago` VALUES (20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `detalle_pago` VALUES (21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for empleado
-- ----------------------------
DROP TABLE IF EXISTS `empleado`;
CREATE TABLE `empleado`  (
  `idEmpleado` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `idPersona` int(11) NULL DEFAULT NULL,
  `idSucursal` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idEmpleado`) USING BTREE,
  INDEX `idPersona`(`idPersona`) USING BTREE,
  INDEX `idSucursal`(`idSucursal`) USING BTREE,
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`idPersona`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`idSucursal`) REFERENCES `sucursal` (`idSucursal`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of empleado
-- ----------------------------

-- ----------------------------
-- Table structure for empresa
-- ----------------------------
DROP TABLE IF EXISTS `empresa`;
CREATE TABLE `empresa`  (
  `idEmpresa` int(11) NOT NULL AUTO_INCREMENT,
  `tipoIdentificacion` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `identificacion` varchar(13) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nombre` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `logo` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `idHorario` int(11) NULL DEFAULT NULL,
  `acerca` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `social` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`idEmpresa`) USING BTREE,
  INDEX `idHorario`(`idHorario`) USING BTREE,
  CONSTRAINT `empresa_ibfk_1` FOREIGN KEY (`idHorario`) REFERENCES `horario` (`idHorario`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of empresa
-- ----------------------------
INSERT INTO `empresa` VALUES (3, 'RUC', '0999999999', 'WAMBÚ', 'admin@wambu.com', 'logo.png', 1, '¿Sabias que? Los jugos hechos de frutas naturales son un aporte nutritivo importante por las propiedades que tienen las frutas y/o verduras, es un importante aporte saludable. En Unaricareceta te ofrecemos una enorme variedad de recetas de jugos, licuados y zumos, ¡LO TENDRÁS LISTO EN MINUTOS!', '[{\"logo\":\"ion-social-facebook\",\"link\":\"https://www.facebook.com/Wambú-Jugos-102218994937665\",\"nombre\":\"facebook\"},{\"logo\":\"ion-social-twitter\",\"link\":\"https://twitter.com/\",\"nombre\":\"twitter\"},{\"logo\":\"ion-social-instagram-outline\",\"link\":\"https://www.instagram.com/wambu_jugos/\",\"nombre\":\"instagram\"}]');

-- ----------------------------
-- Table structure for error
-- ----------------------------
DROP TABLE IF EXISTS `error`;
CREATE TABLE `error`  (
  `idError` int(11) NOT NULL AUTO_INCREMENT,
  `clase` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `metodo` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `error` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `fecha` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`idError`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 493 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of error
-- ----------------------------
INSERT INTO `error` VALUES (1, 'user.js', 'iniciarSesion', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'gestion_autenticacion(\'mario@gmail.com\',\'WZRHGrsBESr8wYFZ9sx0tPURuZgG2lmzyvWp...\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL ss gestion_autenticacion(\'mario@gmail.com\',\'WZRHGrsBESr8wYFZ9sx0tPURuZgG2lmzyvWpwXPKz8U=\')\"}', NULL);
INSERT INTO `error` VALUES (2, 'user.js', 'registroUsuario', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'(\'juan@gmail.com\',\'WZRHGrsBESr8wYFZ9sx0tPURuZgG2lmzyvWpwXPKz8U=\',2,\'CÉDULA\',...\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT s gestion_registro_usuario(\'juan@gmail.com\',\'WZRHGrsBESr8wYFZ9sx0tPURuZgG2lmzyvWpwXPKz8U=\',2,\'CÉDULA\',\'1758458965\',\'JUAN CASEREZ\',\'0985654787\',\'6 DE DICIEMBRE\',2) AS res\"}', NULL);
INSERT INTO `error` VALUES (3, 'user.js', 'iniciarSesion', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'usuario.estado\' in \'where clause\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"CALL gestion_autenticacion(\'mario@gmail.com\',\'WZRHGrsBESr8wYFZ9sx0tPURuZgG2lmzyvWpwXPKz8U=\')\"}', '2020-09-12 20:25:51');
INSERT INTO `error` VALUES (4, 'product.js', 'listarProductos', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'undefined\' in \'where clause\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND undefined\"}', '2020-09-17 12:33:39');
INSERT INTO `error` VALUES (5, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'rin = 20\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1  rin = 20\"}', '2020-09-17 21:50:19');
INSERT INTO `error` VALUES (6, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'rin = 20\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1  rin = 20\"}', '2020-09-17 21:50:19');
INSERT INTO `error` VALUES (7, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'rin = 20\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1  rin = 20\"}', '2020-09-17 21:50:19');
INSERT INTO `error` VALUES (8, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'rin = 20\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1  rin = 20\"}', '2020-09-17 21:50:19');
INSERT INTO `error` VALUES (9, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'AN )\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AN )\"}', '2020-09-17 21:50:46');
INSERT INTO `error` VALUES (10, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'AN )\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AN )\"}', '2020-09-17 21:50:46');
INSERT INTO `error` VALUES (11, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'AN )\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AN )\"}', '2020-09-17 21:50:46');
INSERT INTO `error` VALUES (12, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'AN )\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AN )\"}', '2020-09-17 21:50:46');
INSERT INTO `error` VALUES (13, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'AN )\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AN )\"}', '2020-09-17 21:53:43');
INSERT INTO `error` VALUES (14, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'AN )\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AN )\"}', '2020-09-17 21:53:43');
INSERT INTO `error` VALUES (15, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'AN )\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AN )\"}', '2020-09-17 21:53:43');
INSERT INTO `error` VALUES (16, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'AN )\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AN )\"}', '2020-09-17 21:53:43');
INSERT INTO `error` VALUES (17, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'AN )\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AN )\"}', '2020-09-17 21:55:14');
INSERT INTO `error` VALUES (18, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'AN )\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AN )\"}', '2020-09-17 21:55:14');
INSERT INTO `error` VALUES (19, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'AN )\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AN )\"}', '2020-09-17 21:55:14');
INSERT INTO `error` VALUES (20, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'AN )\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AN )\"}', '2020-09-17 21:55:14');
INSERT INTO `error` VALUES (21, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'AN )\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AN )\"}', '2020-09-17 21:55:33');
INSERT INTO `error` VALUES (22, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'AN )\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AN )\"}', '2020-09-17 21:55:33');
INSERT INTO `error` VALUES (23, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'AN )\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AN )\"}', '2020-09-17 21:55:33');
INSERT INTO `error` VALUES (24, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'AN )\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AN )\"}', '2020-09-17 21:55:33');
INSERT INTO `error` VALUES (25, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'AN )\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AN )\"}', '2020-09-17 21:55:44');
INSERT INTO `error` VALUES (26, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'AN )\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AN )\"}', '2020-09-17 21:55:44');
INSERT INTO `error` VALUES (27, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'AN )\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AN )\"}', '2020-09-17 21:55:44');
INSERT INTO `error` VALUES (28, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'AN )\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AN )\"}', '2020-09-17 21:55:44');
INSERT INTO `error` VALUES (29, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'-12\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1  AND precio BETWEEN 71 AND 109 LIMIT 12 OFFSET -12\"}', '2020-09-18 00:03:37');
INSERT INTO `error` VALUES (30, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'-12\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1  AND precio BETWEEN 71 AND 109 LIMIT 12 OFFSET -12\"}', '2020-09-18 00:03:37');
INSERT INTO `error` VALUES (31, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'-12\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1  AND precio BETWEEN 71 AND 109 LIMIT 12 OFFSET -12\"}', '2020-09-18 00:03:37');
INSERT INTO `error` VALUES (32, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'-12\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1  AND precio BETWEEN 71 AND 109 LIMIT 12 OFFSET -12\"}', '2020-09-18 00:03:37');
INSERT INTO `error` VALUES (33, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'-12\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1  AND precio BETWEEN 87 AND 118 LIMIT 12 OFFSET -12\"}', '2020-09-18 00:06:17');
INSERT INTO `error` VALUES (34, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'-12\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1  AND precio BETWEEN 87 AND 118 LIMIT 12 OFFSET -12\"}', '2020-09-18 00:06:17');
INSERT INTO `error` VALUES (35, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'-12\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1  AND precio BETWEEN 87 AND 118 LIMIT 12 OFFSET -12\"}', '2020-09-18 00:06:17');
INSERT INTO `error` VALUES (36, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'-12\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1  AND precio BETWEEN 87 AND 118 LIMIT 12 OFFSET -12\"}', '2020-09-18 00:06:17');
INSERT INTO `error` VALUES (37, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'-12\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1  AND precio BETWEEN 87 AND 118 LIMIT 12 OFFSET -12\"}', '2020-09-18 00:09:44');
INSERT INTO `error` VALUES (38, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'-12\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1  AND precio BETWEEN 87 AND 118 LIMIT 12 OFFSET -12\"}', '2020-09-18 00:09:44');
INSERT INTO `error` VALUES (39, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'-12\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1  AND precio BETWEEN 87 AND 118 LIMIT 12 OFFSET -12\"}', '2020-09-18 00:09:44');
INSERT INTO `error` VALUES (40, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'-12\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1  AND precio BETWEEN 87 AND 118 LIMIT 12 OFFSET -12\"}', '2020-09-18 00:09:44');
INSERT INTO `error` VALUES (41, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'(ancho = \\\"0\\\" OR perfil = \\\"0\\\" OR rin = \\\"15\\\"\\t) LIMIT 8 OFFSET 0\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND stock > 0 (ancho = \\\"0\\\" OR perfil = \\\"0\\\" OR rin = \\\"15\\\"\\t) LIMIT 8 OFFSET 0\"}', '2020-09-21 20:40:54');
INSERT INTO `error` VALUES (42, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'(ancho = \\\"0\\\" OR perfil = \\\"0\\\" OR rin = \\\"15\\\"\\t) LIMIT 8 OFFSET 0\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND stock > 0 (ancho = \\\"0\\\" OR perfil = \\\"0\\\" OR rin = \\\"15\\\"\\t) LIMIT 8 OFFSET 0\"}', '2020-09-21 20:40:54');
INSERT INTO `error` VALUES (43, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'(ancho = \\\"0\\\" OR perfil = \\\"0\\\" OR rin = \\\"15\\\"\\t) LIMIT 8 OFFSET 0\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND stock > 0 (ancho = \\\"0\\\" OR perfil = \\\"0\\\" OR rin = \\\"15\\\"\\t) LIMIT 8 OFFSET 0\"}', '2020-09-21 20:40:54');
INSERT INTO `error` VALUES (44, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'(ancho = \\\"0\\\" OR perfil = \\\"0\\\" OR rin = \\\"15\\\"\\t) LIMIT 8 OFFSET 0\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND stock > 0 (ancho = \\\"0\\\" OR perfil = \\\"0\\\" OR rin = \\\"15\\\"\\t) LIMIT 8 OFFSET 0\"}', '2020-09-21 20:40:54');
INSERT INTO `error` VALUES (45, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'(ancho = \\\"0\\\" OR perfil = \\\"0\\\" OR rin = \\\"15\\\") LIMIT 8 OFFSET 0\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND stock > 0 (ancho = \\\"0\\\" OR perfil = \\\"0\\\" OR rin = \\\"15\\\") LIMIT 8 OFFSET 0\"}', '2020-09-21 20:41:42');
INSERT INTO `error` VALUES (46, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'(ancho = \\\"0\\\" OR perfil = \\\"0\\\" OR rin = \\\"15\\\") LIMIT 8 OFFSET 0\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND stock > 0 (ancho = \\\"0\\\" OR perfil = \\\"0\\\" OR rin = \\\"15\\\") LIMIT 8 OFFSET 0\"}', '2020-09-21 20:41:43');
INSERT INTO `error` VALUES (47, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'(ancho = \\\"0\\\" OR perfil = \\\"0\\\" OR rin = \\\"15\\\") LIMIT 8 OFFSET 0\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND stock > 0 (ancho = \\\"0\\\" OR perfil = \\\"0\\\" OR rin = \\\"15\\\") LIMIT 8 OFFSET 0\"}', '2020-09-21 20:41:43');
INSERT INTO `error` VALUES (48, 'product.js', 'listarProductos', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'(ancho = \\\"0\\\" OR perfil = \\\"0\\\" OR rin = \\\"15\\\") LIMIT 8 OFFSET 0\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND stock > 0 (ancho = \\\"0\\\" OR perfil = \\\"0\\\" OR rin = \\\"15\\\") LIMIT 8 OFFSET 0\"}', '2020-09-21 20:41:43');
INSERT INTO `error` VALUES (49, 'user.js', 'iniciarSesion', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'consultar_usuario_cliente.contrasena\' in \'where clause\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"CALL gestion_autenticacion(\'mariofpalomoa@gmail.com\',\'TRyNoLk4NeIUy7989BY2sn5qTcVeIzgVuOFDRHYy5FA=\')\"}', '2020-09-24 18:11:16');
INSERT INTO `error` VALUES (50, 'user.js', 'iniciarSesion', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'consultar_usuario_cliente.contrasena\' in \'where clause\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"CALL gestion_autenticacion(\'mariofpalomoa@gmail.com\',\'TRyNoLk4NeIUy7989BY2sn5qTcVeIzgVuOFDRHYy5FA=\')\"}', '2020-09-24 18:11:16');
INSERT INTO `error` VALUES (51, 'user.js', 'iniciarSesion', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'consultar_usuario_cliente.contrasena\' in \'where clause\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"CALL gestion_autenticacion(\'mariofpalomoa@gmail.com\',\'TRyNoLk4NeIUy7989BY2sn5qTcVeIzgVuOFDRHYy5FA=\')\"}', '2020-09-24 18:11:16');
INSERT INTO `error` VALUES (52, 'user.js', 'iniciarSesion', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'consultar_usuario_cliente.contrasena\' in \'where clause\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"CALL gestion_autenticacion(\'mariofpalomoa@gmail.com\',\'TRyNoLk4NeIUy7989BY2sn5qTcVeIzgVuOFDRHYy5FA=\')\"}', '2020-09-24 18:11:16');
INSERT INTO `error` VALUES (53, 'payment.js', 'obtenerChekoutId', '{\"name\":\"RequestError\",\"message\":\"Error: getaddrinfo ENOTFOUND oppwa.comv1\",\"cause\":{\"errno\":\"ENOTFOUND\",\"code\":\"ENOTFOUND\",\"syscall\":\"getaddrinfo\",\"hostname\":\"oppwa.comv1\"},\"error\":{\"errno\":\"ENOTFOUND\",\"code\":\"ENOTFOUND\",\"syscall\":\"getaddrinfo\",\"hostname\":\"oppwa.comv1\"},\"options\":{\"method\":\"POST\",\"uri\":\"https://oppwa.comv1/checkouts\",\"headers\":{\"Authorization\":\"Bearer OGFjOWE0Yzk2OGMxYjY3MDAxNjkwYmRhYmRkMTRiMzZ8Z3NrMnBxTk5tNA==\",\"Content-Type\":\"application/x-www-form-urlencoded\"},\"body\":\"entityId=8acda4c972b905640172bda9cc0e357e&amount=220.00&currency=USD&paymentType=DB&customer.givenName=&customer.middleName=&customer.surname=MARIO PALOMO&customer.ip=200.41.81.22&customer.merchantCustomerId=101513001819&merchantTransactionId=101513001819&customer.email=mariofpalomoa@gmail.com&customer.identificationDocType=IDCARD&customer.identificationDocId=1724395536&customParameters[4200001442_BP336057]=0081003007010391000401200000000235705100817913101052012000000000000053012000000019643&cart.items[\'0\'].name=LOTE PRODUCTOS 101513&cart.items[\'0\'].description=LOTE PRODUCTOS 101513&cart.items[\'0\'].price=220.00&cart.items[\'0\'].quantity=1&testMode=EXTERNAL&risk.parameters[USER_DATA2]=EQUINOCCIALEQUIPAYMENT\",\"json\":true,\"simple\":true,\"resolveWithFullResponse\":false,\"transform2xxOnly\":false}}', '2020-09-29 22:18:19');
INSERT INTO `error` VALUES (54, 'payment.js', 'obtenerChekoutId', '{\"name\":\"RequestError\",\"message\":\"Error: getaddrinfo ENOTFOUND oppwa.comv1\",\"cause\":{\"errno\":\"ENOTFOUND\",\"code\":\"ENOTFOUND\",\"syscall\":\"getaddrinfo\",\"hostname\":\"oppwa.comv1\"},\"error\":{\"errno\":\"ENOTFOUND\",\"code\":\"ENOTFOUND\",\"syscall\":\"getaddrinfo\",\"hostname\":\"oppwa.comv1\"},\"options\":{\"method\":\"POST\",\"uri\":\"https://oppwa.comv1/checkouts\",\"headers\":{\"Authorization\":\"Bearer OGFjOWE0Yzk2OGMxYjY3MDAxNjkwYmRhYmRkMTRiMzZ8Z3NrMnBxTk5tNA==\",\"Content-Type\":\"application/x-www-form-urlencoded\"},\"body\":\"entityId=8acda4c972b905640172bda9cc0e357e&amount=220.00&currency=USD&paymentType=DB&customer.givenName=&customer.middleName=&customer.surname=MARIO PALOMO&customer.ip=200.41.81.64&customer.merchantCustomerId=101513001819&merchantTransactionId=101513001819&customer.email=mariofpalomoa@gmail.com&customer.identificationDocType=IDCARD&customer.identificationDocId=1724395536&customParameters[4200001442_BP336057]=0081003007010391000401200000000235705100817913101052012000000000000053012000000019643&cart.items[\'0\'].name=LOTE PRODUCTOS 101513&cart.items[\'0\'].description=LOTE PRODUCTOS 101513&cart.items[\'0\'].price=220.00&cart.items[\'0\'].quantity=1&testMode=EXTERNAL&risk.parameters[USER_DATA2]=EQUINOCCIALEQUIPAYMENT\",\"json\":true,\"simple\":true,\"resolveWithFullResponse\":false,\"transform2xxOnly\":false}}', '2020-09-29 22:18:19');
INSERT INTO `error` VALUES (55, 'payment.js', 'obtenerChekoutId', '{\"name\":\"RequestError\",\"message\":\"Error: getaddrinfo ENOTFOUND oppwa.comv1\",\"cause\":{\"errno\":\"ENOTFOUND\",\"code\":\"ENOTFOUND\",\"syscall\":\"getaddrinfo\",\"hostname\":\"oppwa.comv1\"},\"error\":{\"errno\":\"ENOTFOUND\",\"code\":\"ENOTFOUND\",\"syscall\":\"getaddrinfo\",\"hostname\":\"oppwa.comv1\"},\"options\":{\"method\":\"POST\",\"uri\":\"https://oppwa.comv1/checkouts\",\"headers\":{\"Authorization\":\"Bearer OGFjOWE0Yzk2OGMxYjY3MDAxNjkwYmRhYmRkMTRiMzZ8Z3NrMnBxTk5tNA==\",\"Content-Type\":\"application/x-www-form-urlencoded\"},\"body\":\"entityId=8acda4c972b905640172bda9cc0e357e&amount=220.00&currency=USD&paymentType=DB&customer.givenName=&customer.middleName=&customer.surname=MARIO PALOMO&customer.ip=190.107.79.38&customer.merchantCustomerId=101513001819&merchantTransactionId=101513001819&customer.email=mariofpalomoa@gmail.com&customer.identificationDocType=IDCARD&customer.identificationDocId=1724395536&customParameters[4200001442_BP336057]=0081003007010391000401200000000235705100817913101052012000000000000053012000000019643&cart.items[\'0\'].name=LOTE PRODUCTOS 101513&cart.items[\'0\'].description=LOTE PRODUCTOS 101513&cart.items[\'0\'].price=220.00&cart.items[\'0\'].quantity=1&testMode=EXTERNAL&risk.parameters[USER_DATA2]=EQUINOCCIALEQUIPAYMENT\",\"json\":true,\"simple\":true,\"resolveWithFullResponse\":false,\"transform2xxOnly\":false}}', '2020-09-29 22:18:19');
INSERT INTO `error` VALUES (56, 'payment.js', 'obtenerChekoutId', '{\"name\":\"RequestError\",\"message\":\"Error: getaddrinfo ENOTFOUND oppwa.comv1\",\"cause\":{\"errno\":\"ENOTFOUND\",\"code\":\"ENOTFOUND\",\"syscall\":\"getaddrinfo\",\"hostname\":\"oppwa.comv1\"},\"error\":{\"errno\":\"ENOTFOUND\",\"code\":\"ENOTFOUND\",\"syscall\":\"getaddrinfo\",\"hostname\":\"oppwa.comv1\"},\"options\":{\"method\":\"POST\",\"uri\":\"https://oppwa.comv1/checkouts\",\"headers\":{\"Authorization\":\"Bearer OGFjOWE0Yzk2OGMxYjY3MDAxNjkwYmRhYmRkMTRiMzZ8Z3NrMnBxTk5tNA==\",\"Content-Type\":\"application/x-www-form-urlencoded\"},\"body\":\"entityId=8acda4c972b905640172bda9cc0e357e&amount=220.00&currency=USD&paymentType=DB&customer.givenName=&customer.middleName=&customer.surname=MARIO PALOMO&customer.ip=190.152.255.185&customer.merchantCustomerId=101513001819&merchantTransactionId=101513001819&customer.email=mariofpalomoa@gmail.com&customer.identificationDocType=IDCARD&customer.identificationDocId=1724395536&customParameters[4200001442_BP336057]=0081003007010391000401200000000235705100817913101052012000000000000053012000000019643&cart.items[\'0\'].name=LOTE PRODUCTOS 101513&cart.items[\'0\'].description=LOTE PRODUCTOS 101513&cart.items[\'0\'].price=220.00&cart.items[\'0\'].quantity=1&testMode=EXTERNAL&risk.parameters[USER_DATA2]=EQUINOCCIALEQUIPAYMENT\",\"json\":true,\"simple\":true,\"resolveWithFullResponse\":false,\"transform2xxOnly\":false}}', '2020-09-29 22:18:20');
INSERT INTO `error` VALUES (57, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 19:02:08');
INSERT INTO `error` VALUES (58, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 19:02:08');
INSERT INTO `error` VALUES (59, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 19:02:10');
INSERT INTO `error` VALUES (60, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 19:02:11');
INSERT INTO `error` VALUES (61, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 19:03:44');
INSERT INTO `error` VALUES (62, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 19:03:44');
INSERT INTO `error` VALUES (63, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 19:03:45');
INSERT INTO `error` VALUES (64, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 19:03:46');
INSERT INTO `error` VALUES (65, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 19:04:31');
INSERT INTO `error` VALUES (66, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 19:04:32');
INSERT INTO `error` VALUES (67, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 19:04:33');
INSERT INTO `error` VALUES (68, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 19:04:34');
INSERT INTO `error` VALUES (69, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 19:05:11');
INSERT INTO `error` VALUES (70, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 19:05:11');
INSERT INTO `error` VALUES (71, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 19:05:12');
INSERT INTO `error` VALUES (72, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 19:05:13');
INSERT INTO `error` VALUES (73, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 19:25:20');
INSERT INTO `error` VALUES (74, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 19:25:21');
INSERT INTO `error` VALUES (75, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 19:25:21');
INSERT INTO `error` VALUES (76, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 19:25:22');
INSERT INTO `error` VALUES (77, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 19:28:03');
INSERT INTO `error` VALUES (78, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 19:28:03');
INSERT INTO `error` VALUES (79, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 19:28:03');
INSERT INTO `error` VALUES (80, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 19:28:04');
INSERT INTO `error` VALUES (81, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 22:24:25');
INSERT INTO `error` VALUES (82, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 22:24:26');
INSERT INTO `error` VALUES (83, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 22:24:26');
INSERT INTO `error` VALUES (84, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 22:24:26');
INSERT INTO `error` VALUES (85, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 22:24:59');
INSERT INTO `error` VALUES (86, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 22:24:59');
INSERT INTO `error` VALUES (87, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 22:25:00');
INSERT INTO `error` VALUES (88, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 22:25:00');
INSERT INTO `error` VALUES (89, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 22:26:01');
INSERT INTO `error` VALUES (90, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 22:26:02');
INSERT INTO `error` VALUES (91, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 22:26:02');
INSERT INTO `error` VALUES (92, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 22:26:02');
INSERT INTO `error` VALUES (93, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 23:18:06');
INSERT INTO `error` VALUES (94, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 23:18:06');
INSERT INTO `error` VALUES (95, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 23:18:06');
INSERT INTO `error` VALUES (96, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-17 23:18:06');
INSERT INTO `error` VALUES (97, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-19 21:59:37');
INSERT INTO `error` VALUES (98, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-19 21:59:37');
INSERT INTO `error` VALUES (99, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-19 21:59:37');
INSERT INTO `error` VALUES (100, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-19 21:59:38');
INSERT INTO `error` VALUES (101, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-20 13:33:43');
INSERT INTO `error` VALUES (102, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-20 13:33:43');
INSERT INTO `error` VALUES (103, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-20 13:33:43');
INSERT INTO `error` VALUES (104, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-20 13:33:43');
INSERT INTO `error` VALUES (105, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-20 13:42:32');
INSERT INTO `error` VALUES (106, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-20 13:42:34');
INSERT INTO `error` VALUES (107, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-20 13:42:34');
INSERT INTO `error` VALUES (108, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-20 13:42:34');
INSERT INTO `error` VALUES (109, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-20 13:44:15');
INSERT INTO `error` VALUES (110, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-20 13:44:16');
INSERT INTO `error` VALUES (111, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-20 13:44:16');
INSERT INTO `error` VALUES (112, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-20 13:44:16');
INSERT INTO `error` VALUES (113, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-20 13:45:17');
INSERT INTO `error` VALUES (114, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-20 13:45:18');
INSERT INTO `error` VALUES (115, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-20 13:45:18');
INSERT INTO `error` VALUES (116, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-20 13:45:19');
INSERT INTO `error` VALUES (117, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-20 13:48:25');
INSERT INTO `error` VALUES (118, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-20 13:48:26');
INSERT INTO `error` VALUES (119, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-20 13:48:27');
INSERT INTO `error` VALUES (120, 'workshop.js', 'listarTalleres', '{\"code\":\"ER_NO_SUCH_TABLE\",\"errno\":1146,\"sqlMessage\":\"Table \'wambu.taller\' doesn\'t exist\",\"sqlState\":\"42S02\",\"index\":0,\"sql\":\"SELECT * FROM taller\"}', '2022-02-20 13:48:27');
INSERT INTO `error` VALUES (121, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\') AS res\"}', '2022-02-20 14:06:45');
INSERT INTO `error` VALUES (122, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\') AS res\"}', '2022-02-20 14:06:45');
INSERT INTO `error` VALUES (123, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\') AS res\"}', '2022-02-20 14:06:45');
INSERT INTO `error` VALUES (124, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\') AS res\"}', '2022-02-20 14:06:45');
INSERT INTO `error` VALUES (125, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\') AS res\"}', '2022-02-20 14:08:43');
INSERT INTO `error` VALUES (126, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\') AS res\"}', '2022-02-20 14:08:43');
INSERT INTO `error` VALUES (127, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\') AS res\"}', '2022-02-20 14:08:43');
INSERT INTO `error` VALUES (128, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\') AS res\"}', '2022-02-20 14:08:43');
INSERT INTO `error` VALUES (129, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\') AS res\"}', '2022-02-20 14:30:31');
INSERT INTO `error` VALUES (130, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\') AS res\"}', '2022-02-20 14:30:31');
INSERT INTO `error` VALUES (131, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\') AS res\"}', '2022-02-20 14:30:31');
INSERT INTO `error` VALUES (132, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\') AS res\"}', '2022-02-20 14:30:31');
INSERT INTO `error` VALUES (133, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\') AS res\"}', '2022-02-20 14:39:08');
INSERT INTO `error` VALUES (134, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\') AS res\"}', '2022-02-20 14:39:08');
INSERT INTO `error` VALUES (135, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\') AS res\"}', '2022-02-20 14:39:08');
INSERT INTO `error` VALUES (136, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\') AS res\"}', '2022-02-20 14:39:08');
INSERT INTO `error` VALUES (137, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\') AS res\"}', '2022-02-20 14:42:25');
INSERT INTO `error` VALUES (138, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\') AS res\"}', '2022-02-20 14:42:25');
INSERT INTO `error` VALUES (139, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\') AS res\"}', '2022-02-20 14:42:25');
INSERT INTO `error` VALUES (140, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\') AS res\"}', '2022-02-20 14:42:25');
INSERT INTO `error` VALUES (141, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL) AS res\"}', '2022-02-20 14:46:52');
INSERT INTO `error` VALUES (142, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL) AS res\"}', '2022-02-20 14:46:52');
INSERT INTO `error` VALUES (143, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL) AS res\"}', '2022-02-20 14:46:52');
INSERT INTO `error` VALUES (144, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL) AS res\"}', '2022-02-20 14:46:52');
INSERT INTO `error` VALUES (145, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_factura does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',20.54,0,0,0,0,2.46,23,2,11,1,\'1\',\'\',1,\'EFECTIVO\') AS res\"}', '2022-02-20 14:54:35');
INSERT INTO `error` VALUES (146, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_factura does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',20.54,0,0,0,0,2.46,23,2,11,1,\'1\',\'\',1,\'EFECTIVO\') AS res\"}', '2022-02-20 14:54:35');
INSERT INTO `error` VALUES (147, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_factura does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',20.54,0,0,0,0,2.46,23,2,11,1,\'1\',\'\',1,\'EFECTIVO\') AS res\"}', '2022-02-20 14:54:35');
INSERT INTO `error` VALUES (148, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_factura does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',20.54,0,0,0,0,2.46,23,2,11,1,\'1\',\'\',1,\'EFECTIVO\') AS res\"}', '2022-02-20 14:54:35');
INSERT INTO `error` VALUES (149, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\') AS res\"}', '2022-02-20 15:04:05');
INSERT INTO `error` VALUES (150, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\') AS res\"}', '2022-02-20 15:04:05');
INSERT INTO `error` VALUES (151, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\') AS res\"}', '2022-02-20 15:04:05');
INSERT INTO `error` VALUES (152, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\') AS res\"}', '2022-02-20 15:04:05');
INSERT INTO `error` VALUES (153, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',1) AS res\"}', '2022-02-20 15:13:52');
INSERT INTO `error` VALUES (154, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',1) AS res\"}', '2022-02-20 15:13:52');
INSERT INTO `error` VALUES (155, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',1) AS res\"}', '2022-02-20 15:13:52');
INSERT INTO `error` VALUES (156, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_detalle_pago does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',1) AS res\"}', '2022-02-20 15:13:52');
INSERT INTO `error` VALUES (157, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'nombre\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\') AS res\"}', '2022-02-20 15:25:31');
INSERT INTO `error` VALUES (158, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'nombre\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\') AS res\"}', '2022-02-20 15:25:31');
INSERT INTO `error` VALUES (159, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'nombre\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\') AS res\"}', '2022-02-20 15:25:31');
INSERT INTO `error` VALUES (160, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'nombre\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\') AS res\"}', '2022-02-20 15:25:31');
INSERT INTO `error` VALUES (161, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'tipo\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\') AS res\"}', '2022-02-20 15:27:56');
INSERT INTO `error` VALUES (162, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'tipo\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\') AS res\"}', '2022-02-20 15:27:56');
INSERT INTO `error` VALUES (163, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'tipo\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\') AS res\"}', '2022-02-20 15:27:56');
INSERT INTO `error` VALUES (164, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'tipo\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\') AS res\"}', '2022-02-20 15:27:56');
INSERT INTO `error` VALUES (165, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_detalle_pago; expected 3, got 2\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0) AS res\"}', '2022-02-20 15:33:44');
INSERT INTO `error` VALUES (166, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_detalle_pago; expected 3, got 2\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0) AS res\"}', '2022-02-20 15:33:44');
INSERT INTO `error` VALUES (167, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_detalle_pago; expected 3, got 2\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0) AS res\"}', '2022-02-20 15:33:44');
INSERT INTO `error` VALUES (168, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_detalle_pago; expected 3, got 2\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0) AS res\"}', '2022-02-20 15:33:44');
INSERT INTO `error` VALUES (169, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'?) AS res\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',?) AS res\"}', '2022-02-20 15:39:18');
INSERT INTO `error` VALUES (170, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'?) AS res\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',?) AS res\"}', '2022-02-20 15:39:18');
INSERT INTO `error` VALUES (171, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'?) AS res\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',?) AS res\"}', '2022-02-20 15:39:18');
INSERT INTO `error` VALUES (172, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'?) AS res\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',?) AS res\"}', '2022-02-20 15:39:18');
INSERT INTO `error` VALUES (173, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'?) AS res\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',?) AS res\"}', '2022-02-20 15:40:33');
INSERT INTO `error` VALUES (174, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'?) AS res\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',?) AS res\"}', '2022-02-20 15:40:33');
INSERT INTO `error` VALUES (175, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'?) AS res\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',?) AS res\"}', '2022-02-20 15:40:34');
INSERT INTO `error` VALUES (176, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'?) AS res\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',?) AS res\"}', '2022-02-20 15:40:34');
INSERT INTO `error` VALUES (177, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'?) AS res\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',?) AS res\"}', '2022-02-20 15:41:49');
INSERT INTO `error` VALUES (178, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'?) AS res\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',?) AS res\"}', '2022-02-20 15:41:49');
INSERT INTO `error` VALUES (179, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'?) AS res\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',?) AS res\"}', '2022-02-20 15:41:49');
INSERT INTO `error` VALUES (180, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'?) AS res\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',?) AS res\"}', '2022-02-20 15:41:49');
INSERT INTO `error` VALUES (181, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_factura does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',20.54,0,0,0,0,2.46,23,2,11,1,\'1\',1,1,\'\') AS res\"}', '2022-02-20 15:42:27');
INSERT INTO `error` VALUES (182, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_factura does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',20.54,0,0,0,0,2.46,23,2,11,1,\'1\',1,1,\'\') AS res\"}', '2022-02-20 15:42:28');
INSERT INTO `error` VALUES (183, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_factura does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',20.54,0,0,0,0,2.46,23,2,11,1,\'1\',1,1,\'\') AS res\"}', '2022-02-20 15:42:28');
INSERT INTO `error` VALUES (184, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"FUNCTION wambu.gestion_factura does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',20.54,0,0,0,0,2.46,23,2,11,1,\'1\',1,1,\'\') AS res\"}', '2022-02-20 15:42:28');
INSERT INTO `error` VALUES (185, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'idTaller\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',20.54,0,0,0,0,2.46,23,2,11,1,\'1\',2,1) AS res\"}', '2022-02-20 16:18:55');
INSERT INTO `error` VALUES (186, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'idTaller\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',20.54,0,0,0,0,2.46,23,2,11,1,\'1\',2,1) AS res\"}', '2022-02-20 16:18:55');
INSERT INTO `error` VALUES (187, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'idTaller\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',20.54,0,0,0,0,2.46,23,2,11,1,\'1\',2,1) AS res\"}', '2022-02-20 16:18:55');
INSERT INTO `error` VALUES (188, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'idTaller\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',20.54,0,0,0,0,2.46,23,2,11,1,\'1\',2,1) AS res\"}', '2022-02-20 16:18:55');
INSERT INTO `error` VALUES (189, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_factura; expected 18, got 17\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',20.54,0,0,0,0,2.46,23,2,11,1,\'1\',3) AS res\"}', '2022-02-20 16:20:31');
INSERT INTO `error` VALUES (190, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_factura; expected 18, got 17\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',20.54,0,0,0,0,2.46,23,2,11,1,\'1\',3) AS res\"}', '2022-02-20 16:20:31');
INSERT INTO `error` VALUES (191, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_factura; expected 18, got 17\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',20.54,0,0,0,0,2.46,23,2,11,1,\'1\',3) AS res\"}', '2022-02-20 16:20:31');
INSERT INTO `error` VALUES (192, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_factura; expected 18, got 17\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',20.54,0,0,0,0,2.46,23,2,11,1,\'1\',3) AS res\"}', '2022-02-20 16:20:31');
INSERT INTO `error` VALUES (193, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_factura; expected 18, got 19\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',20.54,0,0,0,0,2.46,23,2,11,1,\'1\',4,1,\'\') AS res\"}', '2022-02-20 16:24:32');
INSERT INTO `error` VALUES (194, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_factura; expected 18, got 19\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',20.54,0,0,0,0,2.46,23,2,11,1,\'1\',4,1,\'\') AS res\"}', '2022-02-20 16:24:33');
INSERT INTO `error` VALUES (195, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_factura; expected 18, got 19\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',20.54,0,0,0,0,2.46,23,2,11,1,\'1\',4,1,\'\') AS res\"}', '2022-02-20 16:24:33');
INSERT INTO `error` VALUES (196, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_factura; expected 18, got 19\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',20.54,0,0,0,0,2.46,23,2,11,1,\'1\',4,1,\'\') AS res\"}', '2022-02-20 16:24:33');
INSERT INTO `error` VALUES (197, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_factura; expected 18, got 15\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,20.54,0,0,0,0,2.46,23,2,11,1,\'1\',5,1) AS res\"}', '2022-02-20 16:27:34');
INSERT INTO `error` VALUES (198, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_factura; expected 18, got 15\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,20.54,0,0,0,0,2.46,23,2,11,1,\'1\',5,1) AS res\"}', '2022-02-20 16:27:34');
INSERT INTO `error` VALUES (199, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_factura; expected 18, got 15\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,20.54,0,0,0,0,2.46,23,2,11,1,\'1\',5,1) AS res\"}', '2022-02-20 16:27:34');
INSERT INTO `error` VALUES (200, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_factura; expected 18, got 15\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,20.54,0,0,0,0,2.46,23,2,11,1,\'1\',5,1) AS res\"}', '2022-02-20 16:27:34');
INSERT INTO `error` VALUES (201, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'idTaller\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,20.54,0,0,0,0,2.46,23,2,11,1,\'1\',6,1) AS res\"}', '2022-02-20 16:29:31');
INSERT INTO `error` VALUES (202, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'idTaller\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,20.54,0,0,0,0,2.46,23,2,11,1,\'1\',6,1) AS res\"}', '2022-02-20 16:29:31');
INSERT INTO `error` VALUES (203, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'idTaller\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,20.54,0,0,0,0,2.46,23,2,11,1,\'1\',6,1) AS res\"}', '2022-02-20 16:29:31');
INSERT INTO `error` VALUES (204, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'idTaller\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,20.54,0,0,0,0,2.46,23,2,11,1,\'1\',6,1) AS res\"}', '2022-02-20 16:29:31');
INSERT INTO `error` VALUES (205, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'idTaller\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,20.54,0,0,0,0,2.46,23,2,11,1,\'1\',7,1) AS res\"}', '2022-02-20 16:32:09');
INSERT INTO `error` VALUES (206, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'idTaller\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,20.54,0,0,0,0,2.46,23,2,11,1,\'1\',7,1) AS res\"}', '2022-02-20 16:32:09');
INSERT INTO `error` VALUES (207, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'idTaller\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,20.54,0,0,0,0,2.46,23,2,11,1,\'1\',7,1) AS res\"}', '2022-02-20 16:32:09');
INSERT INTO `error` VALUES (208, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'idTaller\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,20.54,0,0,0,0,2.46,23,2,11,1,\'1\',7,1) AS res\"}', '2022-02-20 16:32:09');
INSERT INTO `error` VALUES (209, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_factura; expected 15, got 14\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,20.54,0,0,0,0,2.46,23,2,11,1,\'1\',8) AS res\"}', '2022-02-20 16:34:19');
INSERT INTO `error` VALUES (210, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_factura; expected 15, got 14\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,20.54,0,0,0,0,2.46,23,2,11,1,\'1\',8) AS res\"}', '2022-02-20 16:34:19');
INSERT INTO `error` VALUES (211, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_factura; expected 15, got 14\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,20.54,0,0,0,0,2.46,23,2,11,1,\'1\',8) AS res\"}', '2022-02-20 16:34:19');
INSERT INTO `error` VALUES (212, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_factura; expected 15, got 14\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,20.54,0,0,0,0,2.46,23,2,11,1,\'1\',8) AS res\"}', '2022-02-20 16:34:19');
INSERT INTO `error` VALUES (213, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_NO_REFERENCED_ROW_2\",\"errno\":1452,\"sqlMessage\":\"Cannot add or update a child row: a foreign key constraint fails (`wambu`.`factura`, CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idEmpleado`))\",\"sqlState\":\"23000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,20.54,0,0,0,0,2.46,23,2,11,1,\'1\',9) AS res\"}', '2022-02-20 16:35:32');
INSERT INTO `error` VALUES (214, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_NO_REFERENCED_ROW_2\",\"errno\":1452,\"sqlMessage\":\"Cannot add or update a child row: a foreign key constraint fails (`wambu`.`factura`, CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idEmpleado`))\",\"sqlState\":\"23000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,20.54,0,0,0,0,2.46,23,2,11,1,\'1\',9) AS res\"}', '2022-02-20 16:35:33');
INSERT INTO `error` VALUES (215, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_NO_REFERENCED_ROW_2\",\"errno\":1452,\"sqlMessage\":\"Cannot add or update a child row: a foreign key constraint fails (`wambu`.`factura`, CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idEmpleado`))\",\"sqlState\":\"23000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,20.54,0,0,0,0,2.46,23,2,11,1,\'1\',9) AS res\"}', '2022-02-20 16:35:33');
INSERT INTO `error` VALUES (216, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_NO_REFERENCED_ROW_2\",\"errno\":1452,\"sqlMessage\":\"Cannot add or update a child row: a foreign key constraint fails (`wambu`.`factura`, CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idEmpleado`))\",\"sqlState\":\"23000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,20.54,0,0,0,0,2.46,23,2,11,1,\'1\',9) AS res\"}', '2022-02-20 16:35:33');
INSERT INTO `error` VALUES (217, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,5)\')\"}', '2022-02-20 16:42:47');
INSERT INTO `error` VALUES (218, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,5)\')\"}', '2022-02-20 16:42:47');
INSERT INTO `error` VALUES (219, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,5)\')\"}', '2022-02-20 16:42:47');
INSERT INTO `error` VALUES (220, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,5)\')\"}', '2022-02-20 16:42:47');
INSERT INTO `error` VALUES (221, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,6)\')\"}', '2022-02-20 17:33:29');
INSERT INTO `error` VALUES (222, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,6)\')\"}', '2022-02-20 17:33:29');
INSERT INTO `error` VALUES (223, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,6)\')\"}', '2022-02-20 17:33:29');
INSERT INTO `error` VALUES (224, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,6)\')\"}', '2022-02-20 17:33:29');
INSERT INTO `error` VALUES (225, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,7)\')\"}', '2022-02-20 17:42:35');
INSERT INTO `error` VALUES (226, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,7)\')\"}', '2022-02-20 17:42:35');
INSERT INTO `error` VALUES (227, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,7)\')\"}', '2022-02-20 17:42:35');
INSERT INTO `error` VALUES (228, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,7)\')\"}', '2022-02-20 17:42:35');
INSERT INTO `error` VALUES (229, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,8)\')\"}', '2022-02-20 17:43:40');
INSERT INTO `error` VALUES (230, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,8)\')\"}', '2022-02-20 17:43:40');
INSERT INTO `error` VALUES (231, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,8)\')\"}', '2022-02-20 17:43:40');
INSERT INTO `error` VALUES (232, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,8)\')\"}', '2022-02-20 17:43:40');
INSERT INTO `error` VALUES (233, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,9)\')\"}', '2022-02-20 17:45:14');
INSERT INTO `error` VALUES (234, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,9)\')\"}', '2022-02-20 17:45:14');
INSERT INTO `error` VALUES (235, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,9)\')\"}', '2022-02-20 17:45:14');
INSERT INTO `error` VALUES (236, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,9)\')\"}', '2022-02-20 17:45:14');
INSERT INTO `error` VALUES (237, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,10)\')\"}', '2022-02-20 17:51:08');
INSERT INTO `error` VALUES (238, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,10)\')\"}', '2022-02-20 17:51:08');
INSERT INTO `error` VALUES (239, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,10)\')\"}', '2022-02-20 17:51:08');
INSERT INTO `error` VALUES (240, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,10)\')\"}', '2022-02-20 17:51:08');
INSERT INTO `error` VALUES (241, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,11)\')\"}', '2022-02-20 17:51:27');
INSERT INTO `error` VALUES (242, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,11)\')\"}', '2022-02-20 17:51:27');
INSERT INTO `error` VALUES (243, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,11)\')\"}', '2022-02-20 17:51:27');
INSERT INTO `error` VALUES (244, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,11)\')\"}', '2022-02-20 17:51:27');
INSERT INTO `error` VALUES (245, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_TRUNCATED_WRONG_VALUE_FOR_FIELD\",\"errno\":1366,\"sqlMessage\":\"Incorrect integer value: \'\' for column \'estado\' at row 1\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\') AS res\"}', '2022-02-20 18:16:01');
INSERT INTO `error` VALUES (246, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_TRUNCATED_WRONG_VALUE_FOR_FIELD\",\"errno\":1366,\"sqlMessage\":\"Incorrect integer value: \'\' for column \'estado\' at row 1\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\') AS res\"}', '2022-02-20 18:16:01');
INSERT INTO `error` VALUES (247, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_TRUNCATED_WRONG_VALUE_FOR_FIELD\",\"errno\":1366,\"sqlMessage\":\"Incorrect integer value: \'\' for column \'estado\' at row 1\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\') AS res\"}', '2022-02-20 18:16:01');
INSERT INTO `error` VALUES (248, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_TRUNCATED_WRONG_VALUE_FOR_FIELD\",\"errno\":1366,\"sqlMessage\":\"Incorrect integer value: \'\' for column \'estado\' at row 1\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\') AS res\"}', '2022-02-20 18:16:01');
INSERT INTO `error` VALUES (249, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'ruta\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\') AS res\"}', '2022-02-20 18:19:05');
INSERT INTO `error` VALUES (250, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'ruta\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\') AS res\"}', '2022-02-20 18:19:05');
INSERT INTO `error` VALUES (251, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'ruta\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\') AS res\"}', '2022-02-20 18:19:05');
INSERT INTO `error` VALUES (252, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'ruta\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\') AS res\"}', '2022-02-20 18:19:05');
INSERT INTO `error` VALUES (253, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'?) AS res\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',1,\'\',?) AS res\"}', '2022-02-20 18:20:41');
INSERT INTO `error` VALUES (254, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'?) AS res\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',1,\'\',?) AS res\"}', '2022-02-20 18:20:41');
INSERT INTO `error` VALUES (255, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'?) AS res\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',1,\'\',?) AS res\"}', '2022-02-20 18:20:41');
INSERT INTO `error` VALUES (256, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_PARSE_ERROR\",\"errno\":1064,\"sqlMessage\":\"You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'?) AS res\' at line 1\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',1,\'\',?) AS res\"}', '2022-02-20 18:20:41');
INSERT INTO `error` VALUES (257, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_detalle_pago; expected 6, got 5\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',1,\'\') AS res\"}', '2022-02-20 18:21:35');
INSERT INTO `error` VALUES (258, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_detalle_pago; expected 6, got 5\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',1,\'\') AS res\"}', '2022-02-20 18:21:35');
INSERT INTO `error` VALUES (259, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_detalle_pago; expected 6, got 5\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',1,\'\') AS res\"}', '2022-02-20 18:21:35');
INSERT INTO `error` VALUES (260, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_detalle_pago; expected 6, got 5\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',1,\'\') AS res\"}', '2022-02-20 18:21:35');
INSERT INTO `error` VALUES (261, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'estado\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',1,\'\') AS res\"}', '2022-02-20 18:22:30');
INSERT INTO `error` VALUES (262, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'estado\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',1,\'\') AS res\"}', '2022-02-20 18:22:30');
INSERT INTO `error` VALUES (263, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'estado\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',1,\'\') AS res\"}', '2022-02-20 18:22:30');
INSERT INTO `error` VALUES (264, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'estado\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',1,\'\') AS res\"}', '2022-02-20 18:22:30');
INSERT INTO `error` VALUES (265, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'estado\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',1,\'\') AS res\"}', '2022-02-20 18:24:06');
INSERT INTO `error` VALUES (266, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'estado\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',1,\'\') AS res\"}', '2022-02-20 18:24:06');
INSERT INTO `error` VALUES (267, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'estado\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',1,\'\') AS res\"}', '2022-02-20 18:24:06');
INSERT INTO `error` VALUES (268, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'estado\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',1,\'\') AS res\"}', '2022-02-20 18:24:06');
INSERT INTO `error` VALUES (269, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_TRUNCATED_WRONG_VALUE_FOR_FIELD\",\"errno\":1366,\"sqlMessage\":\"Incorrect integer value: \'\' for column \'estado\' at row 1\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',1,\'\') AS res\"}', '2022-02-20 18:26:18');
INSERT INTO `error` VALUES (270, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_TRUNCATED_WRONG_VALUE_FOR_FIELD\",\"errno\":1366,\"sqlMessage\":\"Incorrect integer value: \'\' for column \'estado\' at row 1\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',1,\'\') AS res\"}', '2022-02-20 18:26:18');
INSERT INTO `error` VALUES (271, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_TRUNCATED_WRONG_VALUE_FOR_FIELD\",\"errno\":1366,\"sqlMessage\":\"Incorrect integer value: \'\' for column \'estado\' at row 1\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',1,\'\') AS res\"}', '2022-02-20 18:26:18');
INSERT INTO `error` VALUES (272, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_TRUNCATED_WRONG_VALUE_FOR_FIELD\",\"errno\":1366,\"sqlMessage\":\"Incorrect integer value: \'\' for column \'estado\' at row 1\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',1,\'\') AS res\"}', '2022-02-20 18:26:18');
INSERT INTO `error` VALUES (273, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,12)\')\"}', '2022-02-20 18:27:04');
INSERT INTO `error` VALUES (274, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,12)\')\"}', '2022-02-20 18:27:04');
INSERT INTO `error` VALUES (275, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,12)\')\"}', '2022-02-20 18:27:04');
INSERT INTO `error` VALUES (276, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,12)\')\"}', '2022-02-20 18:27:04');
INSERT INTO `error` VALUES (277, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,13)\')\"}', '2022-02-20 18:33:43');
INSERT INTO `error` VALUES (278, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,13)\')\"}', '2022-02-20 18:33:43');
INSERT INTO `error` VALUES (279, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,13)\')\"}', '2022-02-20 18:33:43');
INSERT INTO `error` VALUES (280, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,13)\')\"}', '2022-02-20 18:33:43');
INSERT INTO `error` VALUES (281, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(NULL)\"}', '2022-02-20 18:36:49');
INSERT INTO `error` VALUES (282, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(NULL)\"}', '2022-02-20 18:36:49');
INSERT INTO `error` VALUES (283, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(NULL)\"}', '2022-02-20 18:36:49');
INSERT INTO `error` VALUES (284, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(NULL)\"}', '2022-02-20 18:36:49');
INSERT INTO `error` VALUES (285, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,15)\')\"}', '2022-02-20 18:41:53');
INSERT INTO `error` VALUES (286, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,15)\')\"}', '2022-02-20 18:41:53');
INSERT INTO `error` VALUES (287, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,15)\')\"}', '2022-02-20 18:41:53');
INSERT INTO `error` VALUES (288, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,15)\')\"}', '2022-02-20 18:41:53');
INSERT INTO `error` VALUES (289, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,16)\')\"}', '2022-02-20 18:44:07');
INSERT INTO `error` VALUES (290, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,16)\')\"}', '2022-02-20 18:44:07');
INSERT INTO `error` VALUES (291, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,16)\')\"}', '2022-02-20 18:44:07');
INSERT INTO `error` VALUES (292, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,16)\')\"}', '2022-02-20 18:44:07');
INSERT INTO `error` VALUES (293, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,17)\')\"}', '2022-02-20 18:49:57');
INSERT INTO `error` VALUES (294, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,17)\')\"}', '2022-02-20 18:49:57');
INSERT INTO `error` VALUES (295, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,17)\')\"}', '2022-02-20 18:49:57');
INSERT INTO `error` VALUES (296, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,17)\')\"}', '2022-02-20 18:49:57');
INSERT INTO `error` VALUES (297, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,18)\')\"}', '2022-02-20 18:51:08');
INSERT INTO `error` VALUES (298, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,18)\')\"}', '2022-02-20 18:51:08');
INSERT INTO `error` VALUES (299, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,18)\')\"}', '2022-02-20 18:51:08');
INSERT INTO `error` VALUES (300, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,18)\')\"}', '2022-02-20 18:51:08');
INSERT INTO `error` VALUES (301, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,19)\')\"}', '2022-02-20 18:51:52');
INSERT INTO `error` VALUES (302, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,19)\')\"}', '2022-02-20 18:51:52');
INSERT INTO `error` VALUES (303, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,19)\')\"}', '2022-02-20 18:51:52');
INSERT INTO `error` VALUES (304, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,19)\')\"}', '2022-02-20 18:51:52');
INSERT INTO `error` VALUES (305, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,20)\')\"}', '2022-02-20 18:59:42');
INSERT INTO `error` VALUES (306, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,20)\')\"}', '2022-02-20 18:59:42');
INSERT INTO `error` VALUES (307, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,20)\')\"}', '2022-02-20 18:59:42');
INSERT INTO `error` VALUES (308, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,20)\')\"}', '2022-02-20 18:59:42');
INSERT INTO `error` VALUES (309, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,21)\')\"}', '2022-02-20 19:18:16');
INSERT INTO `error` VALUES (310, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,21)\')\"}', '2022-02-20 19:18:16');
INSERT INTO `error` VALUES (311, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,21)\')\"}', '2022-02-20 19:18:16');
INSERT INTO `error` VALUES (312, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,21)\')\"}', '2022-02-20 19:18:16');
INSERT INTO `error` VALUES (313, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,22)\')\"}', '2022-02-20 19:33:30');
INSERT INTO `error` VALUES (314, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,22)\')\"}', '2022-02-20 19:33:30');
INSERT INTO `error` VALUES (315, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,22)\')\"}', '2022-02-20 19:33:30');
INSERT INTO `error` VALUES (316, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,22)\')\"}', '2022-02-20 19:33:30');
INSERT INTO `error` VALUES (317, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,23)\')\"}', '2022-02-20 19:44:33');
INSERT INTO `error` VALUES (318, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,23)\')\"}', '2022-02-20 19:44:33');
INSERT INTO `error` VALUES (319, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,23)\')\"}', '2022-02-20 19:44:33');
INSERT INTO `error` VALUES (320, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,23)\')\"}', '2022-02-20 19:44:33');
INSERT INTO `error` VALUES (321, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 20:02:46');
INSERT INTO `error` VALUES (322, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 20:02:46');
INSERT INTO `error` VALUES (323, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 20:02:46');
INSERT INTO `error` VALUES (324, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 20:02:46');
INSERT INTO `error` VALUES (325, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,24)\')\"}', '2022-02-20 20:09:58');
INSERT INTO `error` VALUES (326, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,24)\')\"}', '2022-02-20 20:09:58');
INSERT INTO `error` VALUES (327, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,24)\')\"}', '2022-02-20 20:09:58');
INSERT INTO `error` VALUES (328, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,24)\')\"}', '2022-02-20 20:09:58');
INSERT INTO `error` VALUES (329, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 20:11:32');
INSERT INTO `error` VALUES (330, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 20:11:32');
INSERT INTO `error` VALUES (331, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 20:11:32');
INSERT INTO `error` VALUES (332, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 20:11:32');
INSERT INTO `error` VALUES (333, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,25)\')\"}', '2022-02-20 20:13:14');
INSERT INTO `error` VALUES (334, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,25)\')\"}', '2022-02-20 20:13:14');
INSERT INTO `error` VALUES (335, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,25)\')\"}', '2022-02-20 20:13:14');
INSERT INTO `error` VALUES (336, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,25)\')\"}', '2022-02-20 20:13:14');
INSERT INTO `error` VALUES (337, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 20:16:12');
INSERT INTO `error` VALUES (338, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 20:16:12');
INSERT INTO `error` VALUES (339, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 20:16:12');
INSERT INTO `error` VALUES (340, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 20:16:12');
INSERT INTO `error` VALUES (341, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 20:20:11');
INSERT INTO `error` VALUES (342, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 20:20:11');
INSERT INTO `error` VALUES (343, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 20:20:11');
INSERT INTO `error` VALUES (344, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 20:20:11');
INSERT INTO `error` VALUES (345, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 20:21:49');
INSERT INTO `error` VALUES (346, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 20:21:49');
INSERT INTO `error` VALUES (347, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 20:21:49');
INSERT INTO `error` VALUES (348, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 20:21:49');
INSERT INTO `error` VALUES (349, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 20:24:32');
INSERT INTO `error` VALUES (350, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 20:24:32');
INSERT INTO `error` VALUES (351, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 20:24:32');
INSERT INTO `error` VALUES (352, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 20:24:32');
INSERT INTO `error` VALUES (353, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,26)\')\"}', '2022-02-20 20:24:55');
INSERT INTO `error` VALUES (354, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,26)\')\"}', '2022-02-20 20:24:55');
INSERT INTO `error` VALUES (355, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,26)\')\"}', '2022-02-20 20:24:55');
INSERT INTO `error` VALUES (356, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,26)\')\"}', '2022-02-20 20:24:55');
INSERT INTO `error` VALUES (357, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,27)\')\"}', '2022-02-20 20:27:52');
INSERT INTO `error` VALUES (358, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,27)\')\"}', '2022-02-20 20:27:52');
INSERT INTO `error` VALUES (359, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,27)\')\"}', '2022-02-20 20:27:52');
INSERT INTO `error` VALUES (360, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,27)\')\"}', '2022-02-20 20:27:52');
INSERT INTO `error` VALUES (361, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,28)\')\"}', '2022-02-20 20:33:38');
INSERT INTO `error` VALUES (362, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,28)\')\"}', '2022-02-20 20:33:38');
INSERT INTO `error` VALUES (363, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,28)\')\"}', '2022-02-20 20:33:38');
INSERT INTO `error` VALUES (364, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,28)\')\"}', '2022-02-20 20:33:38');
INSERT INTO `error` VALUES (365, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_detalle_pago; expected 5, got 6\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\') AS res\"}', '2022-02-20 20:35:17');
INSERT INTO `error` VALUES (366, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_detalle_pago; expected 5, got 6\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\') AS res\"}', '2022-02-20 20:35:17');
INSERT INTO `error` VALUES (367, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_detalle_pago; expected 5, got 6\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\') AS res\"}', '2022-02-20 20:35:17');
INSERT INTO `error` VALUES (368, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_detalle_pago; expected 5, got 6\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\') AS res\"}', '2022-02-20 20:35:17');
INSERT INTO `error` VALUES (369, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_detalle_pago; expected 5, got 4\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,NULL,1) AS res\"}', '2022-02-20 20:37:22');
INSERT INTO `error` VALUES (370, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_detalle_pago; expected 5, got 4\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,NULL,1) AS res\"}', '2022-02-20 20:37:22');
INSERT INTO `error` VALUES (371, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_detalle_pago; expected 5, got 4\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,NULL,1) AS res\"}', '2022-02-20 20:37:22');
INSERT INTO `error` VALUES (372, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_detalle_pago; expected 5, got 4\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,NULL,1) AS res\"}', '2022-02-20 20:37:22');
INSERT INTO `error` VALUES (373, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'ruta\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',NULL,1) AS res\"}', '2022-02-20 20:41:08');
INSERT INTO `error` VALUES (374, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'ruta\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',NULL,1) AS res\"}', '2022-02-20 20:41:08');
INSERT INTO `error` VALUES (375, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'ruta\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',NULL,1) AS res\"}', '2022-02-20 20:41:08');
INSERT INTO `error` VALUES (376, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'ruta\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',NULL,1) AS res\"}', '2022-02-20 20:41:08');
INSERT INTO `error` VALUES (377, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,29)\')\"}', '2022-02-20 20:43:48');
INSERT INTO `error` VALUES (378, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,29)\')\"}', '2022-02-20 20:43:48');
INSERT INTO `error` VALUES (379, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,29)\')\"}', '2022-02-20 20:43:48');
INSERT INTO `error` VALUES (380, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,29)\')\"}', '2022-02-20 20:43:48');
INSERT INTO `error` VALUES (381, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'ruta\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\') AS res\"}', '2022-02-20 20:51:05');
INSERT INTO `error` VALUES (382, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'ruta\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\') AS res\"}', '2022-02-20 20:51:05');
INSERT INTO `error` VALUES (383, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'ruta\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\') AS res\"}', '2022-02-20 20:51:05');
INSERT INTO `error` VALUES (384, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'ruta\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'EFECTIVO\',\'\',1,\'\') AS res\"}', '2022-02-20 20:51:05');
INSERT INTO `error` VALUES (385, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_DATA_TOO_LONG\",\"errno\":1406,\"sqlMessage\":\"Data too long for column \'tipo\' at row 1\",\"sqlState\":\"22001\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',NULL,1,\'\') AS res\"}', '2022-02-20 20:52:13');
INSERT INTO `error` VALUES (386, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_DATA_TOO_LONG\",\"errno\":1406,\"sqlMessage\":\"Data too long for column \'tipo\' at row 1\",\"sqlState\":\"22001\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',NULL,1,\'\') AS res\"}', '2022-02-20 20:52:13');
INSERT INTO `error` VALUES (387, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_DATA_TOO_LONG\",\"errno\":1406,\"sqlMessage\":\"Data too long for column \'tipo\' at row 1\",\"sqlState\":\"22001\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',NULL,1,\'\') AS res\"}', '2022-02-20 20:52:13');
INSERT INTO `error` VALUES (388, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_DATA_TOO_LONG\",\"errno\":1406,\"sqlMessage\":\"Data too long for column \'tipo\' at row 1\",\"sqlState\":\"22001\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',NULL,1,\'\') AS res\"}', '2022-02-20 20:52:13');
INSERT INTO `error` VALUES (389, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_DATA_TOO_LONG\",\"errno\":1406,\"sqlMessage\":\"Data too long for column \'tipo\' at row 1\",\"sqlState\":\"22001\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',NULL,1,\'\') AS res\"}', '2022-02-20 20:53:51');
INSERT INTO `error` VALUES (390, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_DATA_TOO_LONG\",\"errno\":1406,\"sqlMessage\":\"Data too long for column \'tipo\' at row 1\",\"sqlState\":\"22001\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',NULL,1,\'\') AS res\"}', '2022-02-20 20:53:51');
INSERT INTO `error` VALUES (391, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_DATA_TOO_LONG\",\"errno\":1406,\"sqlMessage\":\"Data too long for column \'tipo\' at row 1\",\"sqlState\":\"22001\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',NULL,1,\'\') AS res\"}', '2022-02-20 20:53:51');
INSERT INTO `error` VALUES (392, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_DATA_TOO_LONG\",\"errno\":1406,\"sqlMessage\":\"Data too long for column \'tipo\' at row 1\",\"sqlState\":\"22001\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',NULL,1,\'\') AS res\"}', '2022-02-20 20:53:51');
INSERT INTO `error` VALUES (393, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',NULL,1,\'\') AS res\"}', '2022-02-20 20:55:54');
INSERT INTO `error` VALUES (394, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',NULL,1,\'\') AS res\"}', '2022-02-20 20:55:54');
INSERT INTO `error` VALUES (395, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',NULL,1,\'\') AS res\"}', '2022-02-20 20:55:54');
INSERT INTO `error` VALUES (396, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',NULL,1,\'\') AS res\"}', '2022-02-20 20:55:54');
INSERT INTO `error` VALUES (397, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_TRUNCATED_WRONG_VALUE_FOR_FIELD\",\"errno\":1366,\"sqlMessage\":\"Incorrect integer value: \'TRANSFERENCIA\' for column \'tipo\' at row 1\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',NULL,1,\'\') AS res\"}', '2022-02-20 20:57:06');
INSERT INTO `error` VALUES (398, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_TRUNCATED_WRONG_VALUE_FOR_FIELD\",\"errno\":1366,\"sqlMessage\":\"Incorrect integer value: \'TRANSFERENCIA\' for column \'tipo\' at row 1\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',NULL,1,\'\') AS res\"}', '2022-02-20 20:57:06');
INSERT INTO `error` VALUES (399, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_TRUNCATED_WRONG_VALUE_FOR_FIELD\",\"errno\":1366,\"sqlMessage\":\"Incorrect integer value: \'TRANSFERENCIA\' for column \'tipo\' at row 1\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',NULL,1,\'\') AS res\"}', '2022-02-20 20:57:06');
INSERT INTO `error` VALUES (400, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_TRUNCATED_WRONG_VALUE_FOR_FIELD\",\"errno\":1366,\"sqlMessage\":\"Incorrect integer value: \'TRANSFERENCIA\' for column \'tipo\' at row 1\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',NULL,1,\'\') AS res\"}', '2022-02-20 20:57:06');
INSERT INTO `error` VALUES (401, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'ruta\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',NULL,1,\'\') AS res\"}', '2022-02-20 20:58:37');
INSERT INTO `error` VALUES (402, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'ruta\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',NULL,1,\'\') AS res\"}', '2022-02-20 20:58:37');
INSERT INTO `error` VALUES (403, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'ruta\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',NULL,1,\'\') AS res\"}', '2022-02-20 20:58:37');
INSERT INTO `error` VALUES (404, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'ruta\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',NULL,1,\'\') AS res\"}', '2022-02-20 20:58:37');
INSERT INTO `error` VALUES (405, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_detalle_pago; expected 6, got 5\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 21:00:59');
INSERT INTO `error` VALUES (406, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_detalle_pago; expected 6, got 5\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 21:00:59');
INSERT INTO `error` VALUES (407, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_detalle_pago; expected 6, got 5\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 21:00:59');
INSERT INTO `error` VALUES (408, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_detalle_pago; expected 6, got 5\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 21:00:59');
INSERT INTO `error` VALUES (409, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_DATA_TOO_LONG\",\"errno\":1406,\"sqlMessage\":\"Data too long for column \'tipo\' at row 1\",\"sqlState\":\"22001\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 21:02:11');
INSERT INTO `error` VALUES (410, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_DATA_TOO_LONG\",\"errno\":1406,\"sqlMessage\":\"Data too long for column \'tipo\' at row 1\",\"sqlState\":\"22001\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 21:02:11');
INSERT INTO `error` VALUES (411, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_DATA_TOO_LONG\",\"errno\":1406,\"sqlMessage\":\"Data too long for column \'tipo\' at row 1\",\"sqlState\":\"22001\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 21:02:11');
INSERT INTO `error` VALUES (412, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_DATA_TOO_LONG\",\"errno\":1406,\"sqlMessage\":\"Data too long for column \'tipo\' at row 1\",\"sqlState\":\"22001\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 21:02:11');
INSERT INTO `error` VALUES (413, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_DATA_TOO_LONG\",\"errno\":1406,\"sqlMessage\":\"Data too long for column \'tipo\' at row 1\",\"sqlState\":\"22001\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 21:03:56');
INSERT INTO `error` VALUES (414, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_DATA_TOO_LONG\",\"errno\":1406,\"sqlMessage\":\"Data too long for column \'tipo\' at row 1\",\"sqlState\":\"22001\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 21:03:56');
INSERT INTO `error` VALUES (415, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_DATA_TOO_LONG\",\"errno\":1406,\"sqlMessage\":\"Data too long for column \'tipo\' at row 1\",\"sqlState\":\"22001\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 21:03:56');
INSERT INTO `error` VALUES (416, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_DATA_TOO_LONG\",\"errno\":1406,\"sqlMessage\":\"Data too long for column \'tipo\' at row 1\",\"sqlState\":\"22001\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 21:03:56');
INSERT INTO `error` VALUES (417, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_DATA_TOO_LONG\",\"errno\":1406,\"sqlMessage\":\"Data too long for column \'tipo\' at row 1\",\"sqlState\":\"22001\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 21:05:33');
INSERT INTO `error` VALUES (418, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_DATA_TOO_LONG\",\"errno\":1406,\"sqlMessage\":\"Data too long for column \'tipo\' at row 1\",\"sqlState\":\"22001\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 21:05:33');
INSERT INTO `error` VALUES (419, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_DATA_TOO_LONG\",\"errno\":1406,\"sqlMessage\":\"Data too long for column \'tipo\' at row 1\",\"sqlState\":\"22001\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 21:05:33');
INSERT INTO `error` VALUES (420, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_DATA_TOO_LONG\",\"errno\":1406,\"sqlMessage\":\"Data too long for column \'tipo\' at row 1\",\"sqlState\":\"22001\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 21:05:33');
INSERT INTO `error` VALUES (421, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,30)\')\"}', '2022-02-20 21:05:46');
INSERT INTO `error` VALUES (422, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,30)\')\"}', '2022-02-20 21:05:46');
INSERT INTO `error` VALUES (423, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,30)\')\"}', '2022-02-20 21:05:46');
INSERT INTO `error` VALUES (424, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,30)\')\"}', '2022-02-20 21:05:46');
INSERT INTO `error` VALUES (425, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_DATA_TOO_LONG\",\"errno\":1406,\"sqlMessage\":\"Data too long for column \'tipo\' at row 1\",\"sqlState\":\"22001\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 21:25:36');
INSERT INTO `error` VALUES (426, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_DATA_TOO_LONG\",\"errno\":1406,\"sqlMessage\":\"Data too long for column \'tipo\' at row 1\",\"sqlState\":\"22001\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 21:25:36');
INSERT INTO `error` VALUES (427, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_DATA_TOO_LONG\",\"errno\":1406,\"sqlMessage\":\"Data too long for column \'tipo\' at row 1\",\"sqlState\":\"22001\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 21:25:36');
INSERT INTO `error` VALUES (428, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"ER_DATA_TOO_LONG\",\"errno\":1406,\"sqlMessage\":\"Data too long for column \'tipo\' at row 1\",\"sqlState\":\"22001\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 21:25:37');
INSERT INTO `error` VALUES (429, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,31)\')\"}', '2022-02-20 21:30:33');
INSERT INTO `error` VALUES (430, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,31)\')\"}', '2022-02-20 21:30:33');
INSERT INTO `error` VALUES (431, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,31)\')\"}', '2022-02-20 21:30:33');
INSERT INTO `error` VALUES (432, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,31)\')\"}', '2022-02-20 21:30:33');
INSERT INTO `error` VALUES (433, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 21:34:45');
INSERT INTO `error` VALUES (434, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 21:34:45');
INSERT INTO `error` VALUES (435, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 21:34:45');
INSERT INTO `error` VALUES (436, 'paymentDetail.js', 'gestionDetallePago', '{\"code\":\"WARN_DATA_TRUNCATED\",\"errno\":1265,\"sqlMessage\":\"Data truncated for column \'tipo\' at row 1\",\"sqlState\":\"01000\",\"index\":0,\"sql\":\"SELECT gestion_detalle_pago(1,0,\'TRANSFERENCIA\',1,\'\') AS res\"}', '2022-02-20 21:34:45');
INSERT INTO `error` VALUES (437, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,32)\')\"}', '2022-02-20 21:41:30');
INSERT INTO `error` VALUES (438, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,32)\')\"}', '2022-02-20 21:41:30');
INSERT INTO `error` VALUES (439, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,32)\')\"}', '2022-02-20 21:41:31');
INSERT INTO `error` VALUES (440, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,32)\')\"}', '2022-02-20 21:41:31');
INSERT INTO `error` VALUES (441, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,33)\')\"}', '2022-02-20 21:41:56');
INSERT INTO `error` VALUES (442, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,33)\')\"}', '2022-02-20 21:41:56');
INSERT INTO `error` VALUES (443, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,33)\')\"}', '2022-02-20 21:41:56');
INSERT INTO `error` VALUES (444, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,33)\')\"}', '2022-02-20 21:41:56');
INSERT INTO `error` VALUES (445, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,34)\')\"}', '2022-02-20 21:43:16');
INSERT INTO `error` VALUES (446, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,34)\')\"}', '2022-02-20 21:43:16');
INSERT INTO `error` VALUES (447, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,34)\')\"}', '2022-02-20 21:43:16');
INSERT INTO `error` VALUES (448, 'invoice.js', 'gestionFacturaDetalle', '{\"code\":\"ER_SP_DOES_NOT_EXIST\",\"errno\":1305,\"sqlMessage\":\"PROCEDURE wambu.gestion_factura_detalle does not exist\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"CALL gestion_factura_detalle(\'(6,3,148,34)\')\"}', '2022-02-20 21:43:16');
INSERT INTO `error` VALUES (449, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_factura; expected 13, got 19\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',6.71,0,0,0,0,\'0.81\',\'7.52\',2,13,1,\'1\',1,\'\',1) AS res\"}', '2022-03-11 17:02:23');
INSERT INTO `error` VALUES (450, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_factura; expected 13, got 19\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',6.71,0,0,0,0,\'0.81\',\'7.52\',2,13,1,\'1\',1,\'\',1) AS res\"}', '2022-03-11 17:02:23');
INSERT INTO `error` VALUES (451, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_factura; expected 13, got 19\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',6.71,0,0,0,0,\'0.81\',\'7.52\',2,13,1,\'1\',1,\'\',1) AS res\"}', '2022-03-11 17:02:23');
INSERT INTO `error` VALUES (452, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_SP_WRONG_NO_OF_ARGS\",\"errno\":1318,\"sqlMessage\":\"Incorrect number of arguments for FUNCTION wambu.gestion_factura; expected 13, got 19\",\"sqlState\":\"42000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',6.71,0,0,0,0,\'0.81\',\'7.52\',2,13,1,\'1\',1,\'\',1) AS res\"}', '2022-03-11 17:02:23');
INSERT INTO `error` VALUES (453, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'idTaller\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',6.71,0,0,0,0,\'0.81\',\'7.52\',2,13,1,\'1\',1,\'\',2) AS res\"}', '2022-03-11 17:07:41');
INSERT INTO `error` VALUES (454, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'idTaller\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',6.71,0,0,0,0,\'0.81\',\'7.52\',2,13,1,\'1\',1,\'\',2) AS res\"}', '2022-03-11 17:07:41');
INSERT INTO `error` VALUES (455, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'idTaller\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',6.71,0,0,0,0,\'0.81\',\'7.52\',2,13,1,\'1\',1,\'\',2) AS res\"}', '2022-03-11 17:07:41');
INSERT INTO `error` VALUES (456, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'idTaller\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',6.71,0,0,0,0,\'0.81\',\'7.52\',2,13,1,\'1\',1,\'\',2) AS res\"}', '2022-03-11 17:07:41');
INSERT INTO `error` VALUES (457, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'idTaller\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',6.71,0,0,0,0,\'0.81\',\'7.52\',2,13,1,\'2\',1,NULL,3) AS res\"}', '2022-03-11 17:09:43');
INSERT INTO `error` VALUES (458, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'idTaller\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',6.71,0,0,0,0,\'0.81\',\'7.52\',2,13,1,\'2\',1,NULL,3) AS res\"}', '2022-03-11 17:09:43');
INSERT INTO `error` VALUES (459, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'idTaller\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',6.71,0,0,0,0,\'0.81\',\'7.52\',2,13,1,\'2\',1,NULL,3) AS res\"}', '2022-03-11 17:09:43');
INSERT INTO `error` VALUES (460, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'idTaller\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',6.71,0,0,0,0,\'0.81\',\'7.52\',2,13,1,\'2\',1,NULL,3) AS res\"}', '2022-03-11 17:09:43');
INSERT INTO `error` VALUES (461, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'ruta\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',6.71,0,0,0,0,\'0.81\',\'7.52\',2,13,1,\'1\',1,\'\',4) AS res\"}', '2022-03-11 17:12:52');
INSERT INTO `error` VALUES (462, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'ruta\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',6.71,0,0,0,0,\'0.81\',\'7.52\',2,13,1,\'1\',1,\'\',4) AS res\"}', '2022-03-11 17:12:52');
INSERT INTO `error` VALUES (463, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'ruta\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',6.71,0,0,0,0,\'0.81\',\'7.52\',2,13,1,\'1\',1,\'\',4) AS res\"}', '2022-03-11 17:12:52');
INSERT INTO `error` VALUES (464, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_BAD_FIELD_ERROR\",\"errno\":1054,\"sqlMessage\":\"Unknown column \'ruta\' in \'field list\'\",\"sqlState\":\"42S22\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',6.71,0,0,0,0,\'0.81\',\'7.52\',2,13,1,\'1\',1,\'\',4) AS res\"}', '2022-03-11 17:12:52');
INSERT INTO `error` VALUES (465, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_NO_REFERENCED_ROW_2\",\"errno\":1452,\"sqlMessage\":\"Cannot add or update a child row: a foreign key constraint fails (`wambu`.`factura`, CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idEmpleado`))\",\"sqlState\":\"23000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',6.71,0,0,0,0,\'0.81\',\'7.52\',2,13,1,\'1\',1,\'\',5) AS res\"}', '2022-03-11 17:14:30');
INSERT INTO `error` VALUES (466, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_NO_REFERENCED_ROW_2\",\"errno\":1452,\"sqlMessage\":\"Cannot add or update a child row: a foreign key constraint fails (`wambu`.`factura`, CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idEmpleado`))\",\"sqlState\":\"23000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',6.71,0,0,0,0,\'0.81\',\'7.52\',2,13,1,\'1\',1,\'\',5) AS res\"}', '2022-03-11 17:14:30');
INSERT INTO `error` VALUES (467, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_NO_REFERENCED_ROW_2\",\"errno\":1452,\"sqlMessage\":\"Cannot add or update a child row: a foreign key constraint fails (`wambu`.`factura`, CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idEmpleado`))\",\"sqlState\":\"23000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',6.71,0,0,0,0,\'0.81\',\'7.52\',2,13,1,\'1\',1,\'\',5) AS res\"}', '2022-03-11 17:14:30');
INSERT INTO `error` VALUES (468, 'invoice.js', 'gestionFactura', '{\"code\":\"ER_NO_REFERENCED_ROW_2\",\"errno\":1452,\"sqlMessage\":\"Cannot add or update a child row: a foreign key constraint fails (`wambu`.`factura`, CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idEmpleado`))\",\"sqlState\":\"23000\",\"index\":0,\"sql\":\"SELECT gestion_factura(1,0,\'\',\'\',\'\',6.71,0,0,0,0,\'0.81\',\'7.52\',2,13,1,\'1\',1,\'\',5) AS res\"}', '2022-03-11 17:14:30');
INSERT INTO `error` VALUES (469, 'product.js', 'listarProductos', '{\"code\":\"ER_VIEW_INVALID\",\"errno\":1356,\"sqlMessage\":\"View \'wambu.consultar_producto\' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND stock > 0 AND precio != 0   AND idCategoria = 1 LIMIT 12 OFFSET 0\"}', '2022-03-12 14:22:26');
INSERT INTO `error` VALUES (470, 'product.js', 'listarProductos', '{\"code\":\"ER_VIEW_INVALID\",\"errno\":1356,\"sqlMessage\":\"View \'wambu.consultar_producto\' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND stock > 0 AND precio != 0   AND idCategoria = 1 LIMIT 12 OFFSET 0\"}', '2022-03-12 14:22:27');
INSERT INTO `error` VALUES (471, 'product.js', 'listarProductos', '{\"code\":\"ER_VIEW_INVALID\",\"errno\":1356,\"sqlMessage\":\"View \'wambu.consultar_producto\' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND stock > 0 AND precio != 0   AND idCategoria = 1 LIMIT 12 OFFSET 0\"}', '2022-03-12 14:22:28');
INSERT INTO `error` VALUES (472, 'product.js', 'listarProductos', '{\"code\":\"ER_VIEW_INVALID\",\"errno\":1356,\"sqlMessage\":\"View \'wambu.consultar_producto\' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND stock > 0 AND precio != 0   AND idCategoria = 1 LIMIT 12 OFFSET 0\"}', '2022-03-12 14:22:28');
INSERT INTO `error` VALUES (473, 'product.js', 'listarProductos', '{\"code\":\"ER_VIEW_INVALID\",\"errno\":1356,\"sqlMessage\":\"View \'wambu.consultar_producto\' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND stock > 0 AND precio != 0   AND idCategoria = 1 LIMIT 12 OFFSET 0\"}', '2022-03-12 14:22:31');
INSERT INTO `error` VALUES (474, 'product.js', 'listarProductos', '{\"code\":\"ER_VIEW_INVALID\",\"errno\":1356,\"sqlMessage\":\"View \'wambu.consultar_producto\' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND stock > 0 AND precio != 0   AND idCategoria = 1 LIMIT 12 OFFSET 0\"}', '2022-03-12 14:22:31');
INSERT INTO `error` VALUES (475, 'product.js', 'listarProductos', '{\"code\":\"ER_VIEW_INVALID\",\"errno\":1356,\"sqlMessage\":\"View \'wambu.consultar_producto\' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND stock > 0 AND precio != 0   AND idCategoria = 1 LIMIT 12 OFFSET 0\"}', '2022-03-12 14:22:31');
INSERT INTO `error` VALUES (476, 'product.js', 'listarProductos', '{\"code\":\"ER_VIEW_INVALID\",\"errno\":1356,\"sqlMessage\":\"View \'wambu.consultar_producto\' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND stock > 0 AND precio != 0   AND idCategoria = 1 LIMIT 12 OFFSET 0\"}', '2022-03-12 14:22:31');
INSERT INTO `error` VALUES (477, 'product.js', 'listarProductos', '{\"code\":\"ER_VIEW_INVALID\",\"errno\":1356,\"sqlMessage\":\"View \'wambu.consultar_producto\' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND stock > 0 AND precio != 0   AND idCategoria = 2 LIMIT 12 OFFSET 0\"}', '2022-03-12 14:22:33');
INSERT INTO `error` VALUES (478, 'product.js', 'listarProductos', '{\"code\":\"ER_VIEW_INVALID\",\"errno\":1356,\"sqlMessage\":\"View \'wambu.consultar_producto\' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND stock > 0 AND precio != 0   AND idCategoria = 2 LIMIT 12 OFFSET 0\"}', '2022-03-12 14:22:33');
INSERT INTO `error` VALUES (479, 'product.js', 'listarProductos', '{\"code\":\"ER_VIEW_INVALID\",\"errno\":1356,\"sqlMessage\":\"View \'wambu.consultar_producto\' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND stock > 0 AND precio != 0   AND idCategoria = 2 LIMIT 12 OFFSET 0\"}', '2022-03-12 14:22:33');
INSERT INTO `error` VALUES (480, 'product.js', 'listarProductos', '{\"code\":\"ER_VIEW_INVALID\",\"errno\":1356,\"sqlMessage\":\"View \'wambu.consultar_producto\' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND stock > 0 AND precio != 0   AND idCategoria = 2 LIMIT 12 OFFSET 0\"}', '2022-03-12 14:22:33');
INSERT INTO `error` VALUES (481, 'product.js', 'listarProductosDescuentos', '{\"code\":\"ER_VIEW_INVALID\",\"errno\":1356,\"sqlMessage\":\"View \'wambu.consultar_producto\' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND promocion = 1 AND promocionUnica != 1 AND stock > 0 AND precio != 0  ORDER BY precioDescuento ASC LIMIT 4\"}', '2022-03-12 14:22:37');
INSERT INTO `error` VALUES (482, 'product.js', 'listarProductoPromocionUnica', '{\"code\":\"ER_VIEW_INVALID\",\"errno\":1356,\"sqlMessage\":\"View \'wambu.consultar_producto\' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND promocionUnica = 1 LIMIT 1\"}', '2022-03-12 14:22:37');
INSERT INTO `error` VALUES (483, 'product.js', 'listarProductosUltimos', '{\"code\":\"ER_VIEW_INVALID\",\"errno\":1356,\"sqlMessage\":\"View \'wambu.consultar_producto\' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND stock > 0 AND precio != 0  ORDER BY idProducto DESC LIMIT 3\"}', '2022-03-12 14:22:37');
INSERT INTO `error` VALUES (484, 'product.js', 'listarProductosDescuentos', '{\"code\":\"ER_VIEW_INVALID\",\"errno\":1356,\"sqlMessage\":\"View \'wambu.consultar_producto\' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND promocion = 1 AND promocionUnica != 1 AND stock > 0 AND precio != 0  ORDER BY precioDescuento ASC LIMIT 4\"}', '2022-03-12 14:22:38');
INSERT INTO `error` VALUES (485, 'product.js', 'listarProductoPromocionUnica', '{\"code\":\"ER_VIEW_INVALID\",\"errno\":1356,\"sqlMessage\":\"View \'wambu.consultar_producto\' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND promocionUnica = 1 LIMIT 1\"}', '2022-03-12 14:22:38');
INSERT INTO `error` VALUES (486, 'product.js', 'listarProductosUltimos', '{\"code\":\"ER_VIEW_INVALID\",\"errno\":1356,\"sqlMessage\":\"View \'wambu.consultar_producto\' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND stock > 0 AND precio != 0  ORDER BY idProducto DESC LIMIT 3\"}', '2022-03-12 14:22:38');
INSERT INTO `error` VALUES (487, 'product.js', 'listarProductosDescuentos', '{\"code\":\"ER_VIEW_INVALID\",\"errno\":1356,\"sqlMessage\":\"View \'wambu.consultar_producto\' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND promocion = 1 AND promocionUnica != 1 AND stock > 0 AND precio != 0  ORDER BY precioDescuento ASC LIMIT 4\"}', '2022-03-12 14:22:38');
INSERT INTO `error` VALUES (488, 'product.js', 'listarProductoPromocionUnica', '{\"code\":\"ER_VIEW_INVALID\",\"errno\":1356,\"sqlMessage\":\"View \'wambu.consultar_producto\' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND promocionUnica = 1 LIMIT 1\"}', '2022-03-12 14:22:38');
INSERT INTO `error` VALUES (489, 'product.js', 'listarProductosUltimos', '{\"code\":\"ER_VIEW_INVALID\",\"errno\":1356,\"sqlMessage\":\"View \'wambu.consultar_producto\' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND stock > 0 AND precio != 0  ORDER BY idProducto DESC LIMIT 3\"}', '2022-03-12 14:22:38');
INSERT INTO `error` VALUES (490, 'product.js', 'listarProductosDescuentos', '{\"code\":\"ER_VIEW_INVALID\",\"errno\":1356,\"sqlMessage\":\"View \'wambu.consultar_producto\' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND promocion = 1 AND promocionUnica != 1 AND stock > 0 AND precio != 0  ORDER BY precioDescuento ASC LIMIT 4\"}', '2022-03-12 14:22:38');
INSERT INTO `error` VALUES (491, 'product.js', 'listarProductosUltimos', '{\"code\":\"ER_VIEW_INVALID\",\"errno\":1356,\"sqlMessage\":\"View \'wambu.consultar_producto\' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND stock > 0 AND precio != 0  ORDER BY idProducto DESC LIMIT 3\"}', '2022-03-12 14:22:38');
INSERT INTO `error` VALUES (492, 'product.js', 'listarProductoPromocionUnica', '{\"code\":\"ER_VIEW_INVALID\",\"errno\":1356,\"sqlMessage\":\"View \'wambu.consultar_producto\' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them\",\"sqlState\":\"HY000\",\"index\":0,\"sql\":\"SELECT * FROM consultar_producto WHERE estado = 1 AND promocionUnica = 1 LIMIT 1\"}', '2022-03-12 14:22:38');

-- ----------------------------
-- Table structure for factura
-- ----------------------------
DROP TABLE IF EXISTS `factura`;
CREATE TABLE `factura`  (
  `idFactura` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `autorizacion` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `fecha` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `subtotal12` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `subtotal0` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `subtotalSinImpuestos` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `descuento` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ice` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `iva` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `total` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `estado` int(11) NULL DEFAULT NULL,
  `idCliente` int(1) NULL DEFAULT NULL,
  `idEmpleado` int(1) NULL DEFAULT NULL,
  `idFormaPago` int(1) NULL DEFAULT NULL,
  `idDetallePago` int(11) NULL DEFAULT NULL,
  `idTaller` int(11) NULL DEFAULT NULL,
  `ruta` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idFactura`) USING BTREE,
  INDEX `idCliente`(`idCliente`) USING BTREE,
  INDEX `idEmpleado`(`idEmpleado`) USING BTREE,
  INDEX `idFormaPago`(`idFormaPago`) USING BTREE,
  INDEX `idDetallePago`(`idDetallePago`) USING BTREE,
  CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `factura_ibfk_3` FOREIGN KEY (`idFormaPago`) REFERENCES `forma_pago` (`idFormaPago`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `factura_ibfk_4` FOREIGN KEY (`idDetallePago`) REFERENCES `detalle_pago` (`idDetallePago`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of factura
-- ----------------------------
INSERT INTO `factura` VALUES (15, '', '', '', '6.04', '0', '0', '0', '0', '0.73', '6.77', 2, 19, 1, 1, 16, 1, '');
INSERT INTO `factura` VALUES (16, '', '', '', '5.6', '0', '0', '0', '0', '0.67', '6.27', 2, 19, 1, 2, 17, 1, NULL);
INSERT INTO `factura` VALUES (17, '', '', '', '5.6', '0', '0', '0', '0', '0.67', '6.27', 2, 19, 1, 2, 18, 1, NULL);
INSERT INTO `factura` VALUES (18, '', '', '', '3.57', '0', '0', '0', '0', '0.43', '4.00', 2, 20, 1, 1, 19, 1, '');
INSERT INTO `factura` VALUES (19, '', '', '', '2.01', '0', '0', '0', '0', '0.24', '2.25', 2, 21, 1, 2, 20, 1, NULL);
INSERT INTO `factura` VALUES (20, '', '', '', '23.97', '0', '0', '0', '0', '2.88', '26.85', 2, 21, 1, 2, 21, 1, NULL);

-- ----------------------------
-- Table structure for factura_detalle
-- ----------------------------
DROP TABLE IF EXISTS `factura_detalle`;
CREATE TABLE `factura_detalle`  (
  `idFacturaDetalle` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` double NULL DEFAULT NULL,
  `subtotal` double NULL DEFAULT NULL,
  `idFactura` int(11) NULL DEFAULT NULL,
  `idProducto` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idFacturaDetalle`) USING BTREE,
  INDEX `idFactura`(`idFactura`) USING BTREE,
  INDEX `idProducto`(`idProducto`) USING BTREE,
  CONSTRAINT `factura_detalle_ibfk_1` FOREIGN KEY (`idFactura`) REFERENCES `factura` (`idFactura`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `factura_detalle_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of factura_detalle
-- ----------------------------
INSERT INTO `factura_detalle` VALUES (16, 1, 6.27, 15, 43);
INSERT INTO `factura_detalle` VALUES (17, 1, 0.5, 15, 148);
INSERT INTO `factura_detalle` VALUES (18, 1, 6.27, 16, 43);
INSERT INTO `factura_detalle` VALUES (19, 1, 6.27, 17, 45);
INSERT INTO `factura_detalle` VALUES (20, 1, 1.5, 18, 147);
INSERT INTO `factura_detalle` VALUES (21, 1, 2.5, 18, 149);
INSERT INTO `factura_detalle` VALUES (22, 1, 1.5, 19, 147);
INSERT INTO `factura_detalle` VALUES (23, 1, 0.75, 19, 162);
INSERT INTO `factura_detalle` VALUES (24, 1, 6.27, 20, 43);
INSERT INTO `factura_detalle` VALUES (25, 1, 1.5, 20, 147);
INSERT INTO `factura_detalle` VALUES (26, 3, 8.58, 20, 104);
INSERT INTO `factura_detalle` VALUES (27, 3, 10.5, 20, 62);

-- ----------------------------
-- Table structure for favorito
-- ----------------------------
DROP TABLE IF EXISTS `favorito`;
CREATE TABLE `favorito`  (
  `idFavoritos` int(11) NOT NULL AUTO_INCREMENT,
  `idProducto` int(11) NULL DEFAULT NULL,
  `fecha` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`idFavoritos`) USING BTREE,
  INDEX `idProducto`(`idProducto`) USING BTREE,
  CONSTRAINT `favorito_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of favorito
-- ----------------------------
INSERT INTO `favorito` VALUES (1, 44, '2022-03-17 16:28:07');
INSERT INTO `favorito` VALUES (2, 641, '2022-03-12 16:28:41');
INSERT INTO `favorito` VALUES (3, 380, '2022-03-12 16:29:07');
INSERT INTO `favorito` VALUES (13, 104, '2022-03-12 18:10:31');
INSERT INTO `favorito` VALUES (14, 43, '2022-03-12 18:10:39');
INSERT INTO `favorito` VALUES (15, 148, '2022-03-12 18:10:43');

-- ----------------------------
-- Table structure for forma_pago
-- ----------------------------
DROP TABLE IF EXISTS `forma_pago`;
CREATE TABLE `forma_pago`  (
  `idFormaPago` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nombre` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `estado` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idFormaPago`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of forma_pago
-- ----------------------------
INSERT INTO `forma_pago` VALUES (1, '1', 'Efectivo', 'foto.png', 1);
INSERT INTO `forma_pago` VALUES (2, '1', 'Transferencia', 'foto.png', 1);
INSERT INTO `forma_pago` VALUES (3, '1', 'Tarjeta', 'foto.png', 1);

-- ----------------------------
-- Table structure for horario
-- ----------------------------
DROP TABLE IF EXISTS `horario`;
CREATE TABLE `horario`  (
  `idHorario` int(11) NOT NULL AUTO_INCREMENT,
  `apertura` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `cierre` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `descripcion` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idHorario`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of horario
-- ----------------------------
INSERT INTO `horario` VALUES (1, '08:30', '17:30', 'Sábado - Domingo: Cerrado');

-- ----------------------------
-- Table structure for marca
-- ----------------------------
DROP TABLE IF EXISTS `marca`;
CREATE TABLE `marca`  (
  `idMarca` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `estado` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idMarca`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of marca
-- ----------------------------
INSERT INTO `marca` VALUES (1, 'MARCA 1', 'MARCA 1.png', 1);
INSERT INTO `marca` VALUES (2, 'MARCA 2', 'MARCA 2.png', 1);
INSERT INTO `marca` VALUES (3, 'MARCA 3', 'MARCA 3.png', 1);
INSERT INTO `marca` VALUES (4, 'MARCA 4', 'MARCA 4.png', 1);
INSERT INTO `marca` VALUES (5, 'MARCA 5', 'MARCA 5.png', 1);
INSERT INTO `marca` VALUES (6, 'MARCA 6', 'MARCA 6.png', 1);
INSERT INTO `marca` VALUES (7, 'MARCA 7', 'MARCA 7.png', 1);
INSERT INTO `marca` VALUES (8, 'MARCA 8', 'MARCA 8.png', 1);
INSERT INTO `marca` VALUES (9, 'MARCA 9', 'MARCA 9.png', 1);
INSERT INTO `marca` VALUES (10, 'MARCA 10', 'MARCA 10.png', 1);
INSERT INTO `marca` VALUES (11, 'MARCA 11', 'MARCA 11.png', 1);
INSERT INTO `marca` VALUES (12, 'MARCA 12', 'MARCA 12.png', 1);
INSERT INTO `marca` VALUES (13, 'MARCA 13', 'MARCA 13.png', 1);
INSERT INTO `marca` VALUES (15, 'MARCA 14', 'MARCA 14.png', 1);
INSERT INTO `marca` VALUES (16, 'MARCA 15', 'MARCA 15.png', 1);

-- ----------------------------
-- Table structure for marca_auto
-- ----------------------------
DROP TABLE IF EXISTS `marca_auto`;
CREATE TABLE `marca_auto`  (
  `idMarcaAuto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `estado` int(11) NULL DEFAULT NULL,
  `tag` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idMarcaAuto`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of marca_auto
-- ----------------------------
INSERT INTO `marca_auto` VALUES (1, 'TEST', 1, 'TEST');

-- ----------------------------
-- Table structure for modelo
-- ----------------------------
DROP TABLE IF EXISTS `modelo`;
CREATE TABLE `modelo`  (
  `idModelo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `estado` int(11) NULL DEFAULT NULL,
  `idMarca` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idModelo`) USING BTREE,
  INDEX `idMarca`(`idMarca`) USING BTREE,
  CONSTRAINT `modelo_ibfk_1` FOREIGN KEY (`idMarca`) REFERENCES `marca` (`idMarca`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of modelo
-- ----------------------------
INSERT INTO `modelo` VALUES (1, 'MODELO 1', 'MODELO 9.png', 1, 1);
INSERT INTO `modelo` VALUES (2, 'MODELO 2', 'MODELO 10.png', 1, 2);
INSERT INTO `modelo` VALUES (3, 'MODELO 3', 'MODELO 11.png', 1, 3);
INSERT INTO `modelo` VALUES (4, 'MODELO 4', 'MODELO 12.png', 1, 4);
INSERT INTO `modelo` VALUES (5, 'MODELO 5', 'MODELO 13.png', 1, 5);
INSERT INTO `modelo` VALUES (6, 'MODELO 6', 'MODELO 14.png', 1, 6);
INSERT INTO `modelo` VALUES (7, 'MODELO 7', 'MODELO 15.png', 1, 7);
INSERT INTO `modelo` VALUES (8, 'MODELO 8', 'MODELO 16.png', 1, 8);
INSERT INTO `modelo` VALUES (9, 'MODELO 9', 'MODELO 17.png', 1, 9);
INSERT INTO `modelo` VALUES (10, 'MODELO 10', 'MODELO 18.png', 1, 10);
INSERT INTO `modelo` VALUES (11, 'MODELO 11', 'MODELO 19.png', 1, 11);
INSERT INTO `modelo` VALUES (12, 'MODELO 12', 'MODELO 20.png', 1, 12);
INSERT INTO `modelo` VALUES (13, 'MODELO 13', 'MODELO 21.png', 1, 13);
INSERT INTO `modelo` VALUES (15, 'MODELO 14', 'MODELO 22.png', 1, 15);
INSERT INTO `modelo` VALUES (16, 'MODELO 15', 'MODELO 23.png', 1, 16);

-- ----------------------------
-- Table structure for modelo_auto
-- ----------------------------
DROP TABLE IF EXISTS `modelo_auto`;
CREATE TABLE `modelo_auto`  (
  `idModeloAuto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `estado` int(11) NULL DEFAULT NULL,
  `idMarca` int(11) NULL DEFAULT NULL,
  `tag` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idModeloAuto`) USING BTREE,
  INDEX `idMarca`(`idMarca`) USING BTREE,
  CONSTRAINT `modelo_auto_ibfk_1` FOREIGN KEY (`idMarca`) REFERENCES `marca_auto` (`idMarcaAuto`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of modelo_auto
-- ----------------------------
INSERT INTO `modelo_auto` VALUES (1, 'AVEO', 1, 1, 'AVEO');

-- ----------------------------
-- Table structure for persona
-- ----------------------------
DROP TABLE IF EXISTS `persona`;
CREATE TABLE `persona`  (
  `idPersona` int(11) NOT NULL AUTO_INCREMENT,
  `tipoIdentificacion` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `identificacion` varchar(13) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nombre` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `telefono` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `direccion` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `estado` int(11) NULL DEFAULT NULL,
  `idUsuario` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idPersona`) USING BTREE,
  INDEX `idUsuario`(`idUsuario`) USING BTREE,
  CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of persona
-- ----------------------------
INSERT INTO `persona` VALUES (22, 'CÉDULA', '1714411548', 'Paul Martinez', '0985545465', 'ARTURO BORJA', 1, 28);
INSERT INTO `persona` VALUES (23, 'CÉDULA', '1714411548', 'Paul Martinez', '0985545465', 'ARTURO BORJA', 1, 29);
INSERT INTO `persona` VALUES (24, 'CÉDULA', '1714411548', 'Paul Martinez', '0985545465', 'ARTURO BORJA', 1, 30);

-- ----------------------------
-- Table structure for producto
-- ----------------------------
DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto`  (
  `idProducto` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nombre` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `descripcion` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `imagen` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `precio` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `descuento` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `promocion` int(1) NULL DEFAULT NULL,
  `promocionUnica` int(11) NULL DEFAULT NULL,
  `tiempo` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stock` int(11) NULL DEFAULT NULL,
  `tag` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `estado` int(11) NULL DEFAULT NULL,
  `idTipo` int(11) NULL DEFAULT NULL,
  `idModelo` int(11) NULL DEFAULT NULL,
  `idCategoria` int(11) NULL DEFAULT NULL,
  `ancho` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `perfil` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `rin` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `marcaAuto` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `modeloAuto` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`idProducto`) USING BTREE,
  INDEX `idTipo`(`idTipo`) USING BTREE,
  INDEX `idModelo`(`idModelo`) USING BTREE,
  INDEX `idCategoria`(`idCategoria`) USING BTREE,
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`idTipo`) REFERENCES `tipo` (`idTipo`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`idModelo`) REFERENCES `modelo` (`idModelo`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `producto_ibfk_3` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 668 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of producto
-- ----------------------------
INSERT INTO `producto` VALUES (43, '6959613706653', 'Jugo Revitalizador', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo1.jpg', '6.50', '3.5050', 1, 0, '30 00:00:00', 12, 'jugo', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (44, '6959613706752', 'Jugo Revitalizador', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo1.jpg', '6.50', '3.5050', 1, 0, '30 00:00:00', 12, 'jugo', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (45, '6959613706967', 'Jugo Revitalizador', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo1.jpg', '6.50', '3.5050', 1, 0, '30 00:00:00', 12, 'jugo', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (46, '6959613706769', 'Jugo Revitalizador', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo1.jpg', '6.50', '3.5050', 1, 0, '30 00:00:00', 12, 'jugo', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (47, '6959613706738', 'Jugo Revitalizador', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo1.jpg', '6.50', '3.5050', 0, 0, '30 00:00:00', 12, 'jugo', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (48, '6959613706714', 'Jugo Revitalizador', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo1.jpg', '6.50', '3.5050', 1, 1, '30 00:00:00', 12, 'jugo', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (49, '6959613706820', 'Jugo Revitalizador', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo1.jpg', '6.50', '3.5050', 0, 0, '30 00:00:00', 12, 'jugo', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (50, '6959613706745', 'Jugo Revitalizador', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo1.jpg', '6.50', '3.5050', 0, 0, '30 00:00:00', 12, 'jugo', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (51, '6959613706806', 'Jugo Revitalizador', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo1.jpg', '6.50', '3.5050', 0, 0, '30 00:00:00', 12, 'jugo', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (52, '6959613706837', 'Jugo Revitalizador', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo1.jpg', '6.50', '3.5050', 0, 0, '30 00:00:00', 12, 'jugo', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (53, '6959613706844', 'Jugo Revitalizador', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo1.jpg', '6.50', '3.5050', 0, 0, '30 00:00:00', 12, 'jugo', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (54, '6959613707575', 'Jugo Revitalizador', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo1.jpg', '6.50', '3.5050', 0, 0, '30 00:00:00', 12, 'jugo', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (55, '6959613707568', 'Jugo Revitalizador', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo1.jpg', '6.50', '3.5050', 0, 0, '30 00:00:00', 12, 'jugo', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (56, '6959613717505', 'Jugo Revitalizador', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo1.jpg', '6.50', '3.5050', 0, 0, '30 00:00:00', 12, 'jugo', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (57, '6959613717543', 'Jugo Revitalizador', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo1.jpg', '6.50', '3.5050', 0, 0, '30 00:00:00', 12, 'jugo', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (58, '6959613706875', 'Jugo Revitalizador', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo1.jpg', '6.50', '3.5050', 0, 0, '30 00:00:00', 12, 'jugo', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (59, '6959613707636', 'Jugo Revitalizador', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo1.jpg', '6.50', '3.5050', 0, 0, '30 00:00:00', 12, 'jugo', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (60, '6959613707209', 'Jugo Revitalizador', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo1.jpg', '6.50', '3.5050', 0, 0, '30 00:00:00', 12, 'jugo', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (61, '6959613707315', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (62, '6959613717529', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (63, '6959613717444', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (64, '6959613717468', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (65, '6959613717512', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (66, '6959613707599', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (67, '6959613707605', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (68, '6959613707612', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (69, '6959613707735', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (70, '6959613707711', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (71, '6959613707728', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (72, '6959613707834', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (73, '6959613707803', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (74, '6959613717475', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (75, '6959613707308', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (76, '6959613707810', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (77, '6959613707926', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (78, '6959613707933', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (79, '6959613707155', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (80, '6959613707261', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (81, '6959613707902', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (82, '6959613707360', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (83, '6959613707919', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (84, '6959613707520', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 1, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (85, 'NR12 155 RF08', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 1, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (86, 'NR12 165/70 209', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 1, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (87, 'NR12 175/70 209', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 1, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (88, 'NR13 165/65 209', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 1, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (89, 'NR13 165/70 209', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 1, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (90, 'NR13 175/60 209', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 1, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (91, 'NR13 175/70 209', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 1, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (92, 'NR13 185/70 109', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 1, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (93, 'NR14 165/60 209', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 1, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (94, 'NR14 165/65 209', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 1, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (95, 'NR14 165/70 209', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 1, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (96, 'NR14 185/60 209', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (97, 'NR14 185/65 209', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (98, 'NR14 185/70 209', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (99, 'NR14 195 RF09', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (100, 'NR14 195/60 F109', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (101, 'NR14 205/60 F114', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (102, 'NR15 185/55 209', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (103, 'NR15 185/60 209', 'Jugos Naturales', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '3.50', '1.7555', 0, 0, '30 00:00:00', 16, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (104, 'NR15 185/65 209', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 1, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (105, 'NR15 195/50 F209', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 1, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (106, 'NR15 195/55 F209', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 1, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (107, 'NR15 195/60 209', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 1, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (108, 'NR15 195/65 209', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 1, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (109, 'NR15 205/60 F209', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 1, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (110, 'NR15 225/70 RF09', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 1, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (111, 'NR15 235/75 ECOSPEED', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 1, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (112, 'NR16 195/45 F205', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 1, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (113, 'NR16 195/55 F209', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 1, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (114, 'NR16 205/45 F205', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 1, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (115, 'NR16 205/50 F209', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 1, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (116, 'NR16 205/55 F209', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 1, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (117, 'NR16 205/60 F209', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 1, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (118, 'NR16 215/65 ECOSPEED', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 1, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (119, 'NR16 215/65 RF09', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 0, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (120, 'NR16 215/75 RF09', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 0, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (121, 'NR16 225/55 F209', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 0, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (122, 'NR16 225/70 ECOSPEED', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 0, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (123, 'NR16 235/60 ECOSPEED', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 0, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (124, 'NR16 235/65 RF09', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 0, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (125, 'NR16 235/70 RF06', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 0, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (126, 'NR16 245/70 RF06', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 0, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (127, 'NR17 205/40 F205', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 0, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (128, 'NR17 205/45 F205', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 0, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (129, 'NR17 205/50 F205', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 0, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (130, 'NR17 215/45 F205', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 0, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (131, 'NR17 215/50 F205', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 0, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (132, 'NR17 215/55 F205', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 0, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (133, 'NR17 215/60 ECOSPEED', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 0, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (134, 'NR17 225/45 F205', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 0, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (135, 'NR17 225/50 F205', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 0, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (136, 'NR17 225/60 ECOSPEED', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 0, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (137, 'NR17 225/65 ECOSPEED', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 0, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (138, 'NR17 235/65 ECOSPEED', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 0, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (139, 'NR18 225/40 F205', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 0, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (140, 'NR18 225/45 F205', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 0, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (141, 'NR18 225/55 ECOSPEED', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 0, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (142, 'NR18 225/60 ECOSPEED', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 0, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (143, 'NR18 235/55 ECOSPEED', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 0, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (144, 'NR18 235/60 ECOSPEED', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 0, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (145, 'NR18 255/55 ECOSPEED', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 0, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (146, 'NR19 235/55 ECOSPEED', 'Jugos Saludables', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo3.jpg', '2.89', '1.1222', 0, 0, '30 00:00:00', 8, 'jugo', 1, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (147, 'NR19 255/45 F205', 'Toronja', 'Fruta saludable y exquisita', 'toronja.jpg', '1.50', '0', 0, 0, '30 00:00:00', 12, 'jugo', 1, 1, 1, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (148, 'NR19 255/50 ECOSPEED', 'Durazno', 'Fruta saludable y exquisita', 'durazno.jpg', '0.50', '0', 0, 0, '30 00:00:00', 10, 'jugo', 1, 1, 1, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (149, 'NR19 255/55 ECOSPEED', 'Coco', 'Fruta saludable y exquisita', 'coco.jpg', '2.50', '0', 0, 0, '30 00:00:00', 15, 'jugo', 1, 1, 1, 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (161, 'UCM-103B', 'Chirmoya', 'Fruta saludable y exquisita', 'chirimoya.jpg', '3.00', '0', 0, 0, '30 00:00:00', 19, 'jugo', 1, 2, 1, 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (162, 'UCM-104B', 'Pera', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'pera.jpg', '0.75', '0', 0, 0, '30 00:00:00', 9, 'jugo', 1, 2, 1, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (163, 'UCM-203B', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 0, 0, '30 00:00:00', 20, 'jugo', 1, 2, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (164, 'UCM-204B', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 0, 0, '30 00:00:00', 20, 'jugo', 1, 2, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (165, 'UCM-304B', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 0, 0, '30 00:00:00', 20, 'jugo', 1, 2, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (166, 'UCM-404B', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 0, 0, '30 00:00:00', 20, 'jugo', 1, 2, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (167, 'UCM-601BT', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 0, 0, '30 00:00:00', 20, 'jugo', 1, 2, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (168, 'UW-418H', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 0, 0, '30 00:00:00', 20, 'jugo', 1, 4, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (169, 'UW-420H', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 0, 0, '30 00:00:00', 20, 'jugo', 1, 4, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (170, 'UW-422H', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 0, 0, '30 00:00:00', 20, 'jugo', 1, 4, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (171, 'KCLS4B', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 0, 0, '30 00:00:00', 20, 'jugo', 1, 2, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (172, 'US2-H4-6K', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 0, 0, '30 00:00:00', 20, 'jugo', 1, 3, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (173, 'U1156-3528', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 0, 0, '30 00:00:00', 20, 'jugo', 1, 3, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (174, 'UDL-COB/20', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 0, 0, '30 00:00:00', 20, 'jugo', 1, 3, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (359, '0', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 0, 0, '30 00:00:00', 20, 'jugo', 1, 5, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (360, '0', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 0, 0, '30 00:00:00', 20, 'jugo', 1, 5, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (361, '0', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 0, 0, '30 00:00:00', 20, 'jugo', 1, 5, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (362, '0', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 5, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (363, '0', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 5, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (364, '0', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 5, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (365, '0', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 5, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (366, '0', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 5, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (367, '0', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 5, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (368, '0', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 5, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (369, '0', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 5, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (370, '0', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 5, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (371, '0', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 5, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (372, '0', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 5, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (373, '0', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 5, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (374, '0', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 5, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (375, '0', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 5, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (376, '0', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 5, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (377, '258411', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (378, '667397', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (379, '712798', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (380, '118941', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (381, '132247', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (382, '538764', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (383, '36642', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (384, '722565', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (385, '932033', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (386, '12255', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (387, '999843', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (388, '585707', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (389, 'SUB P-30', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (390, 'RCX-165', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (391, 'RCX-690', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (392, 'RSE-165', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (396, '09-003', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 16, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (397, '09-001KBT', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 16, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (398, '11-039', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 16, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (399, '11-180 KBT', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 16, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (400, '11-275', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 16, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (401, '11-291', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 16, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (402, '11-292', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 16, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (403, '11-355', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 16, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (404, '11-422', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 16, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (405, '11-784KBT', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 16, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (406, '11-799KBT', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 16, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (407, 'YE-CH002', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 16, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (408, 'BKCDK648', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 16, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (409, 'BKFMK526', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 16, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (410, 'BKFMK547', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 16, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (411, 'BKFMK552', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 16, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (412, 'BKGMK317', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 16, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (413, 'BKGMK418', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 16, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (414, 'BKGMK419', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 16, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (415, 'BKHY1621B', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 16, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (416, 'BKNDK714', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 16, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (417, 'BKSUZK947', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 16, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (418, 'BKTOYK960', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 16, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (419, 'BKTOYK975', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 16, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (420, 'BKUPK750', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 16, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (463, 'M1c', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (464, 'M2b', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (465, 'M3a', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (466, 'M4', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (467, 'M5', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (468, 'DM-1000', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (469, 'DMF-1600', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (470, 'MD-D4', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (471, 'MD-D5', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (472, 'EX4', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (473, 'EX5.2', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (474, 'EX6.5', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (475, 'EX5X7', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (476, 'EX6X9', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (477, 'EC6.5', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (478, 'DX6.5', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (479, 'DX6X9', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (480, 'VO-M6.5', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (481, 'VO-M6*9', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (482, 'VO-M8', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (483, 'VO-CCX8', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (484, 'VO-W8', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (485, 'VO-W10', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (486, 'VOCT45', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (487, 'VO-B2', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (488, 'VO-B3-A', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (489, 'DD506 BD4', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (490, 'LEM06-D2', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (491, 'DD108 -S4', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (492, 'DD110- S4', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (493, 'DD112- S4', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (494, 'DD210 -D2', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (495, 'DD212-D4', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (496, 'DD510-D2', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (497, 'DD510-D4', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (498, 'DD512-D2', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (499, 'DD512-D4', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (500, 'DD515-D2', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (501, 'DD515-D4', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (502, 'DD610-D2', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (503, 'DD610-D4', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (504, 'DD612-D2', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (505, 'DD612-D4', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (506, 'DD615-D2', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (507, 'DD615-D4', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (508, 'DD710- D4', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (509, 'DD712-D2', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (510, 'DD712-D4', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (511, 'DD715-D4', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (512, 'DD812-D2', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (513, 'DD815-D1', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (514, 'DD1512-D4', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (515, 'DD2512-D2', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 20, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (516, 'DD2512-D4', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 11, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (517, 'PM151', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 11, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (518, 'ABC-10', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 11, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (519, 'DXB-03', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 11, 'jugo', 1, 7, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (520, '0', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 11, 'jugo', 1, 17, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (521, '0', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 11, 'jugo', 1, 17, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (522, '0', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 0, '30 00:00:00', 11, 'jugo', 1, 17, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (525, '120105', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (526, '120059', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (527, '120053', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (528, '120519', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (529, '120051', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (530, '120052', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (531, '120096', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (532, '120050', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (533, '121449', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (534, '120049', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (535, '120056', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (536, '120521', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (537, '120351', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (538, '120528', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (539, '120100', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (540, '120099', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (541, '120061', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (542, '120062', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (543, '100469', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (544, '104172', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (545, '106845', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (546, '106769', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (547, '100313', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (548, '100314', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (549, '108111', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (550, '106843', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (551, '106690', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (552, '107901', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (553, '106846', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (554, '106643', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (555, '106856', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (556, '107683', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (557, '100316', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (558, '100374', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (559, '104514', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (560, '101479', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (561, '106855', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (562, '107846', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (563, '107664', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (564, '104512', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (565, '107845', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (566, '108711', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (567, '103905', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (568, '107240', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (569, '106735', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (570, '108656', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (571, '106689', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (572, '107614', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (573, '109647', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (574, '101130', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (575, '108871', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (576, '107446', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (577, '104605', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (578, '103916', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (579, '100799', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (580, '104209', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (581, '107685', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (582, '109423', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (583, '107242', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (584, '109291', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (585, '107198', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (586, '104016', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (587, '104011', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (588, '109432', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (589, '109440', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (590, '110051', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (591, '108356', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (592, '107199', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (593, '107475', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (594, '108612', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (595, '108870', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (596, '109166', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (597, '106959', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (598, '100542', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (599, '106998', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (600, '107243', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (601, '102940', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (602, '103385', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (603, '107473', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (604, '107472', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (605, '107474', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (606, '101674', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (607, '105744', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (608, '105737', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (609, '109425', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (610, '108574', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (611, '109454', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (612, '109441', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (613, '109431', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (614, '109376', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (615, '109378', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 11, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (616, '102512', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (617, '104030', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (618, '104148', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (619, '109407', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (620, '109409', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (621, '109403', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (622, '108583', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (623, '106945', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (624, '106953', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (625, '100589', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (626, '106962', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (627, '109360', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (628, '109079', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (633, '107449', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (634, '107510', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (635, '108461', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (636, '104315', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (637, '109379', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (638, '107499', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (639, '106399', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (640, '107495', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (641, '104534', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (642, '109433', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (643, '109218', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (644, '108586', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 15, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (645, '107552', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (646, '102495', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (647, '108515', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (648, '107904', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (649, '107556', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (650, '107534', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (651, '106972', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (652, '107109', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (653, '107521', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (654, '105789', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (655, '100443', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (656, '104123', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (657, '108364', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (658, '109405', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (659, '105394', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (660, '108550', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (661, '107550', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (662, '106710', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (663, '102600', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (664, '107537', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (665, '103203', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (666, '122196', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `producto` VALUES (667, '123032', 'Jugo Natural', 'Llena tu vida de vitaminas indispensables con estas ricas recetas de jugos nutritivos para la digestión, energía, quema grasa o para estimular el sistema inmunológico. Aprende a consumir todos los nutrientes que necesitas de manera natural.', 'jugo2.jpg', '6.50', '2.8900', 1, 1, '30 00:00:00', 10, 'jugo', 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sucursal
-- ----------------------------
DROP TABLE IF EXISTS `sucursal`;
CREATE TABLE `sucursal`  (
  `idSucursal` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `telefono` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `direccion` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `latitud` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `longitud` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `idEmpresa` int(11) NULL DEFAULT NULL,
  `provincia` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `principal` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idSucursal`) USING BTREE,
  INDEX `idEmpresa`(`idEmpresa`) USING BTREE,
  CONSTRAINT `sucursal_ibfk_1` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`idEmpresa`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sucursal
-- ----------------------------
INSERT INTO `sucursal` VALUES (1, 'WAMBÚ', '0999999999', 'Calle Wambu y Jugos Frescos al lado del Megamaxi', '-78989', '-20022', 3, 'QUITO', 1);

-- ----------------------------
-- Table structure for taller
-- ----------------------------
DROP TABLE IF EXISTS `taller`;
CREATE TABLE `taller`  (
  `idTaller` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `direccion` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `geoposicion` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `estado` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idTaller`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of taller
-- ----------------------------
INSERT INTO `taller` VALUES (1, 'Sucursal principal Calle 5 de Junio y Avenida Curitiba', 'Calle 5 de Junio y Avenida Curitiba', '-78989', 1);
INSERT INTO `taller` VALUES (2, 'Sucursal norte Avenida Central y Rumipamba 1345', 'Avenida Central y Rumipamba 1345', '-78989', 1);
INSERT INTO `taller` VALUES (3, 'Sucursal sur Martha Bucaram y calle 10', 'Martha Bucaram y calle 10', '-78989', 1);

-- ----------------------------
-- Table structure for tipo
-- ----------------------------
DROP TABLE IF EXISTS `tipo`;
CREATE TABLE `tipo`  (
  `idTipo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `estado` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idTipo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tipo
-- ----------------------------
INSERT INTO `tipo` VALUES (1, 'Tipo 1.png', 1);
INSERT INTO `tipo` VALUES (2, 'Tipo 2.png', 1);
INSERT INTO `tipo` VALUES (3, 'Tipo 3.png', 1);
INSERT INTO `tipo` VALUES (4, 'Tipo 4.png', 1);
INSERT INTO `tipo` VALUES (5, 'Tipo 5.png', 1);
INSERT INTO `tipo` VALUES (6, 'Tipo 6.png', 1);
INSERT INTO `tipo` VALUES (7, 'Tipo 7.png', 1);
INSERT INTO `tipo` VALUES (8, 'Tipo 8.png', 1);
INSERT INTO `tipo` VALUES (9, 'Tipo 9.png', 1);
INSERT INTO `tipo` VALUES (10, 'Tipo 10.png', 1);
INSERT INTO `tipo` VALUES (11, 'Tipo 11.png', 1);
INSERT INTO `tipo` VALUES (12, 'Tipo 12.png', 1);
INSERT INTO `tipo` VALUES (13, 'Tipo 13.png', 1);
INSERT INTO `tipo` VALUES (14, 'Tipo 14.png', 1);
INSERT INTO `tipo` VALUES (15, 'Tipo 15.png', 1);
INSERT INTO `tipo` VALUES (16, 'Tipo 16.png', 1);
INSERT INTO `tipo` VALUES (17, 'Tipo 17.png', 1);

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario`  (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `contrasena` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `rol` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `estado` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idUsuario`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES (28, 'paulmartinez0912@gmail.com', 'koexPFq+YIC7ZoJZ6iOq094OlRZBBZtl+i07qc54PzI=', 'CLIENTE', 1);
INSERT INTO `usuario` VALUES (29, 'paulmartinez0912@gmail.com', '8+LKESekqdfaqkqAEVjv/YNXSWRbwl5xYoufmXv/Fls=', 'CLIENTE', 1);
INSERT INTO `usuario` VALUES (30, 'paulmartinez0912@gmail.com', 'ZNtrvZ2Cfv32t8oGBKoSSXH3BfwSTnMXrunJhcwavS0=', 'CLIENTE', 1);

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `idVideo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `link` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `estado` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idVideo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES (1, 'assets/img/productos/Video1.png', 'Video1.mp4', 1);
INSERT INTO `video` VALUES (2, 'assets/img/productos/Video2.png', 'Video2.mp4', 1);
INSERT INTO `video` VALUES (3, 'assets/img/productos/Video3.png', 'Video3.mp4', 1);

-- ----------------------------
-- View structure for consultar_cliente
-- ----------------------------
DROP VIEW IF EXISTS `consultar_cliente`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `consultar_cliente` AS select `usuario`.`idUsuario` AS `idUsuario`,`usuario`.`email` AS `email`,`usuario`.`contrasena` AS `contrasena`,`usuario`.`rol` AS `rol`,`usuario`.`estado` AS `estadoUsuario`,`persona`.`idPersona` AS `idPersona`,`persona`.`tipoIdentificacion` AS `tipoIdentificacion`,`persona`.`identificacion` AS `identificacion`,`persona`.`nombre` AS `nombre`,`persona`.`telefono` AS `telefono`,`persona`.`direccion` AS `direccion`,`persona`.`estado` AS `estadoPersona`,`cliente`.`idCliente` AS `idCliente`,`cliente`.`estado` AS `estadoCliente` from ((`usuario` join `persona` on((`usuario`.`idUsuario` = `persona`.`idUsuario`))) join `cliente` on((`persona`.`idPersona` = `cliente`.`idPersona`)));

-- ----------------------------
-- View structure for consultar_empleado
-- ----------------------------
DROP VIEW IF EXISTS `consultar_empleado`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `consultar_empleado` AS select `usuario`.`idUsuario` AS `idUsuario`,`usuario`.`email` AS `email`,`usuario`.`contrasena` AS `contrasena`,`usuario`.`rol` AS `rol`,`usuario`.`estado` AS `estadoUsuario`,`persona`.`idPersona` AS `idPersona`,`persona`.`tipoIdentificacion` AS `tipoIdentificacion`,`persona`.`identificacion` AS `identificacion`,`persona`.`nombre` AS `nombre`,`persona`.`telefono` AS `telefono`,`persona`.`direccion` AS `direccion`,`persona`.`estado` AS `estadoPersona`,`empleado`.`idEmpleado` AS `idEmpleado`,`empleado`.`estado` AS `estadoEmpleado` from ((`usuario` join `persona` on((`usuario`.`idUsuario` = `persona`.`idUsuario`))) join `empleado` on((`persona`.`idPersona` = `empleado`.`idPersona`)));

-- ----------------------------
-- View structure for consultar_empresa
-- ----------------------------
DROP VIEW IF EXISTS `consultar_empresa`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `consultar_empresa` AS select `empresa`.`idEmpresa` AS `idEmpresa`,`empresa`.`tipoIdentificacion` AS `tipoIdentificacion`,`empresa`.`identificacion` AS `identificacion`,`empresa`.`nombre` AS `nombre`,`empresa`.`email` AS `email`,`empresa`.`logo` AS `logo`,`empresa`.`social` AS `social`,`empresa`.`acerca` AS `acerca`,`horario`.`idHorario` AS `idHorario`,`horario`.`apertura` AS `apertura`,`horario`.`cierre` AS `cierre`,`horario`.`descripcion` AS `descripcion`,`sucursal`.`idSucursal` AS `idSucursal`,`sucursal`.`nombre` AS `nombreSucursal`,`sucursal`.`telefono` AS `telefonoSucursal`,`sucursal`.`direccion` AS `direccionSucursal`,`sucursal`.`latitud` AS `latitudSucursal`,`sucursal`.`longitud` AS `longitudSucursal`,`sucursal`.`provincia` AS `provinciaSucursal`,`sucursal`.`principal` AS `principalSucursal` from ((`empresa` join `horario` on((`empresa`.`idHorario` = `horario`.`idHorario`))) join `sucursal` on((`empresa`.`idEmpresa` = `sucursal`.`idEmpresa`))) where (`sucursal`.`principal` = 1);

-- ----------------------------
-- View structure for consultar_marca_modelo
-- ----------------------------
DROP VIEW IF EXISTS `consultar_marca_modelo`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `consultar_marca_modelo` AS select `marca`.`idMarca` AS `idMarca`,`marca`.`nombre` AS `marcaNombre`,`marca`.`foto` AS `marcaFoto`,`marca`.`estado` AS `marcaEstado`,`modelo`.`idModelo` AS `idModelo`,`modelo`.`nombre` AS `modeloNombre`,`modelo`.`foto` AS `modeloFoto`,`modelo`.`estado` AS `modeloEstado` from (`marca` join `modelo` on((`marca`.`idMarca` = `modelo`.`idMarca`)));

-- ----------------------------
-- View structure for consultar_producto
-- ----------------------------
DROP VIEW IF EXISTS `consultar_producto`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `consultar_producto` AS select `producto`.`idProducto` AS `idProducto`,`producto`.`codigo` AS `codigo`,`producto`.`nombre` AS `nombre`,`producto`.`descripcion` AS `descripcion`,if((char_length(`producto`.`descripcion`) >= 85),concat(substr(`producto`.`descripcion`,1,84),'...'),`producto`.`descripcion`) AS `descripcionCorta`,`producto`.`imagen` AS `imagen`,cast(`producto`.`precio` as decimal(10,2)) AS `precio`,if((`producto`.`promocion` = 1),round((cast(`producto`.`precio` as decimal(10,2)) - (cast(`producto`.`precio` as decimal(10,2)) * (cast(`producto`.`descuento` as decimal(10,2)) / 100))),2),0) AS `precioDescuento`,cast(`producto`.`descuento` as decimal(10,8)) AS `descuento`,`producto`.`promocion` AS `promocion`,`producto`.`promocionUnica` AS `promocionUnica`,`producto`.`tiempo` AS `tiempo`,`producto`.`stock` AS `stock`,`producto`.`tag` AS `tag`,`producto`.`ancho` AS `ancho`,`producto`.`perfil` AS `perfil`,`producto`.`rin` AS `rin`,`producto`.`marcaAuto` AS `marcaAuto`,`producto`.`modeloAuto` AS `modeloAuto`,`producto`.`estado` AS `estado`,`modelo`.`idModelo` AS `idModelo`,`modelo`.`nombre` AS `modeloNombre`,`marca`.`idMarca` AS `idMarca`,`marca`.`nombre` AS `marcaNombre`,`tipo`.`idTipo` AS `idTipo`,`tipo`.`nombre` AS `tipoNombre`,`categoria`.`idCategoria` AS `idCategoria`,`categoria`.`nombre` AS `categoriaNombre` from ((((`producto` join `modelo` on((`producto`.`idModelo` = `modelo`.`idModelo`))) join `marca` on((`modelo`.`idMarca` = `marca`.`idMarca`))) join `tipo` on((`producto`.`idTipo` = `tipo`.`idTipo`))) join `categoria` on((`producto`.`idCategoria` = `categoria`.`idCategoria`)));

-- ----------------------------
-- View structure for consultar_producto_favorito
-- ----------------------------
DROP VIEW IF EXISTS `consultar_producto_favorito`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `consultar_producto_favorito` AS select `producto`.`idProducto` AS `idProducto`,`producto`.`imagen` AS `imagen`,`producto`.`nombre` AS `nombre`,`producto`.`promocion` AS `promocion`,`categoria`.`nombre` AS `categoriaNombre`,cast(`producto`.`precio` as decimal(10,2)) AS `precio`,if((`producto`.`promocion` = 1),round((cast(`producto`.`precio` as decimal(10,2)) - (cast(`producto`.`precio` as decimal(10,2)) * (cast(`producto`.`descuento` as decimal(10,2)) / 100))),2),0) AS `precioDescuento`,cast(`producto`.`descuento` as decimal(10,8)) AS `descuento` from ((`producto` join `categoria` on((`producto`.`idCategoria` = `categoria`.`idCategoria`))) join `favorito` on((`producto`.`idProducto` = `favorito`.`idProducto`))) order by `favorito`.`fecha` desc;

-- ----------------------------
-- View structure for consultar_usuario_cliente
-- ----------------------------
DROP VIEW IF EXISTS `consultar_usuario_cliente`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `consultar_usuario_cliente` AS select `usuario`.`idUsuario` AS `idUsuario`,`usuario`.`email` AS `email`,`usuario`.`contrasena` AS `contrasena`,`usuario`.`rol` AS `rol`,`usuario`.`estado` AS `estadoUsuario`,`persona`.`idPersona` AS `idPersona`,`persona`.`tipoIdentificacion` AS `tipoIdentificacion`,`persona`.`identificacion` AS `identificacion`,`persona`.`nombre` AS `nombre`,`persona`.`telefono` AS `telefono`,`persona`.`direccion` AS `direccion`,`persona`.`estado` AS `estadoPersona`,`cliente`.`idCliente` AS `idCliente`,`cliente`.`estado` AS `estadoCliente` from ((`usuario` join `persona` on((`usuario`.`idUsuario` = `persona`.`idUsuario`))) join `cliente` on((`persona`.`idPersona` = `cliente`.`idPersona`)));

-- ----------------------------
-- View structure for consultar_usuario_empleado
-- ----------------------------
DROP VIEW IF EXISTS `consultar_usuario_empleado`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `consultar_usuario_empleado` AS select `usuario`.`idUsuario` AS `idUsuario`,`usuario`.`email` AS `email`,`usuario`.`contrasena` AS `contrasena`,`usuario`.`rol` AS `rol`,`usuario`.`estado` AS `estadoUsuario`,`persona`.`idPersona` AS `idPersona`,`persona`.`tipoIdentificacion` AS `tipoIdentificacion`,`persona`.`identificacion` AS `identificacion`,`persona`.`nombre` AS `nombre`,`persona`.`telefono` AS `telefono`,`persona`.`direccion` AS `direccion`,`persona`.`estado` AS `estadoPersona`,`empleado`.`idEmpleado` AS `idEmpleado`,`empleado`.`estado` AS `estadoEmpleado` from ((`usuario` join `persona` on((`usuario`.`idUsuario` = `persona`.`idUsuario`))) join `empleado` on((`persona`.`idPersona` = `empleado`.`idPersona`)));

-- ----------------------------
-- Procedure structure for consultar_inicio_producto
-- ----------------------------
DROP PROCEDURE IF EXISTS `consultar_inicio_producto`;
delimiter ;;
CREATE PROCEDURE `consultar_inicio_producto`(sentencia TEXT, pagina INT)
BEGIN
	
  SET @query = 'SELECT
		@rownum:=@rownum+1 AS \'id\',
		producto.idProducto, 
		producto.codigo, 
		producto.nombre, 
		producto.descripcion, 
		
		IF(CHAR_LENGTH(producto.descripcion) >= 85 ,
		CONCAT(SUBSTRING(producto.descripcion, 1,84),\'...\'),
		producto.descripcion) AS \'descripcionCorta\',

		producto.imagen,
		ROUND(CONVERT(producto.precio, Double), 2) AS \'precio\', 
		
		IF(producto.promocion = 1,
		ROUND(CONVERT(producto.precio, Double) - (CONVERT(producto.precio, Double) * ( CONVERT(producto.descuento, Double)/100)), 2)
		,0
		) AS \'precioDescuento\',
		
		CONVERT(producto.descuento, Double) AS \'descuento\',
		
		producto.promocion, 
		producto.promocionUnica, 
		producto.tiempo, 
		producto.stock, 
		producto.tag, 
		producto.ancho, 
		producto.perfil, 
		producto.rin, 
		producto.marcaAuto, 
		producto.modeloAuto, 
		producto.estado,
		modelo.idModelo,
		modelo.nombre AS \'modeloNombre\', 
		marca.idMarca,
		marca.nombre AS \'marcaNombre\', 
		tipo.idTipo,
		tipo.nombre AS \'tipoNombre\',
		categoria.idCategoria,
		categoria.nombre AS \'categoriaNombre\'
	FROM
		(SELECT @rownum:=0) r,
		producto
		INNER JOIN
		modelo
		ON 
			producto.idModelo = modelo.idModelo
		INNER JOIN
		marca
		ON 
			modelo.idMarca = marca.idMarca
		INNER JOIN
		tipo
		ON 
			producto.idTipo = tipo.idTipo
		INNER JOIN
		categoria
		ON 
			producto.idCategoria = categoria.idCategoria WHERE producto.estado = 1 ';

  SET @query = CONCAT(@query, sentencia, ' AND idProducto >= ', ((SELECT MIN(idProducto) FROM consultar_producto) + pagina) , ' limit 10');

  PREPARE stmt1 FROM @query;

  EXECUTE stmt1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for consultar_producto_paginado
-- ----------------------------
DROP PROCEDURE IF EXISTS `consultar_producto_paginado`;
delimiter ;;
CREATE PROCEDURE `consultar_producto_paginado`(sentencia TEXT, pagina INT)
BEGIN
	
  SET @query = 'SELECT
		@rownum:=@rownum+1 AS \'id\',
		producto.idProducto, 
		producto.codigo, 
		producto.nombre, 
		producto.descripcion, 
		
		IF(CHAR_LENGTH(producto.descripcion) >= 85 ,
		CONCAT(SUBSTRING(producto.descripcion, 1,84),\'...\'),
		producto.descripcion) AS \'descripcionCorta\',

		producto.imagen,
		ROUND(CONVERT(producto.precio, Double), 2) AS \'precio\', 
		
		IF(producto.promocion = 1,
		ROUND(CONVERT(producto.precio, Double) - (CONVERT(producto.precio, Double) * ( CONVERT(producto.descuento, Double)/100)), 2)
		,0
		) AS \'precioDescuento\',
		
		CONVERT(producto.descuento, Double) AS \'descuento\',
		
		producto.promocion, 
		producto.promocionUnica, 
		producto.tiempo, 
		producto.stock, 
		producto.tag, 
		producto.ancho, 
		producto.perfil, 
		producto.rin, 
		producto.marcaAuto, 
		producto.modeloAuto, 
		producto.estado,
		modelo.idModelo,
		modelo.nombre AS \'modeloNombre\', 
		marca.idMarca,
		marca.nombre AS \'marcaNombre\', 
		tipo.idTipo,
		tipo.nombre AS \'tipoNombre\',
		categoria.idCategoria,
		categoria.nombre AS \'categoriaNombre\'
	FROM
		(SELECT @rownum:=0) r,
		producto
		INNER JOIN
		modelo
		ON 
			producto.idModelo = modelo.idModelo
		INNER JOIN
		marca
		ON 
			modelo.idMarca = marca.idMarca
		INNER JOIN
		tipo
		ON 
			producto.idTipo = tipo.idTipo
		INNER JOIN
		categoria
		ON 
			producto.idCategoria = categoria.idCategoria WHERE producto.estado = 1 ';

  SET @query = CONCAT(@query, sentencia, ' AND idProducto >= ', ((SELECT MIN(idProducto) FROM consultar_producto) + pagina) , ' limit 10');

  PREPARE stmt1 FROM @query;

  EXECUTE stmt1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for gestion_autenticacion
-- ----------------------------
DROP PROCEDURE IF EXISTS `gestion_autenticacion`;
delimiter ;;
CREATE PROCEDURE `gestion_autenticacion`(`email` TEXT,
	`contrasena` TEXT)
BEGIN
	
	IF !ISNULL((SELECT consultar_usuario_cliente.idUsuario FROM consultar_usuario_cliente WHERE consultar_usuario_cliente.email = email AND consultar_usuario_cliente.contrasena = contrasena)) THEN
		
		SELECT
			consultar_usuario_cliente.idUsuario, 
			consultar_usuario_cliente.email, 
			consultar_usuario_cliente.rol, 
			consultar_usuario_cliente.estadoUsuario, 
			consultar_usuario_cliente.idPersona, 
			consultar_usuario_cliente.tipoIdentificacion, 
			consultar_usuario_cliente.identificacion, 
			consultar_usuario_cliente.nombre, 
			consultar_usuario_cliente.telefono, 
			consultar_usuario_cliente.direccion, 
			consultar_usuario_cliente.estadoPersona, 
			consultar_usuario_cliente.idCliente, 
			consultar_usuario_cliente.estadoCliente
		FROM
			consultar_usuario_cliente
		WHERE
			consultar_usuario_cliente.email = email AND
			consultar_usuario_cliente.contrasena = contrasena AND
			consultar_usuario_cliente.estadoUsuario = 1;
			
	END IF;
	
	
	IF !ISNULL((SELECT consultar_usuario_empleado.idUsuario FROM consultar_usuario_empleado WHERE consultar_usuario_empleado.email = email AND consultar_usuario_empleado.contrasena = contrasena)) THEN
		
		SELECT
			consultar_usuario_empleado.idUsuario, 
			consultar_usuario_empleado.email, 
			consultar_usuario_empleado.rol, 
			consultar_usuario_empleado.estadoUsuario, 
			consultar_usuario_empleado.idPersona, 
			consultar_usuario_empleado.tipoIdentificacion, 
			consultar_usuario_empleado.identificacion, 
			consultar_usuario_empleado.nombre, 
			consultar_usuario_empleado.telefono, 
			consultar_usuario_empleado.direccion, 
			consultar_usuario_empleado.estadoPersona, 
			consultar_usuario_empleado.idEmpleado, 
			consultar_usuario_empleado.estadoEmpleado
		FROM
			consultar_usuario_empleado
		WHERE
			consultar_usuario_empleado.email = email AND
			consultar_usuario_empleado.contrasena = contrasena AND
			consultar_usuario_empleado.estadoUsuario = 1;
			
	END IF;

END
;;
delimiter ;

-- ----------------------------
-- Function structure for gestion_cliente
-- ----------------------------
DROP FUNCTION IF EXISTS `gestion_cliente`;
delimiter ;;
CREATE FUNCTION `gestion_cliente`(`identificador` int(11),
	`idCliente` int(11),
	
	`tipoIdentificacion` varchar(50),
	`identificacion` varchar(13),
	`nombre` varchar(100),
	`telefono` varchar(15),
	`direccion` varchar(200),
	
	`email` TEXT,
	`contrasena` TEXT)
 RETURNS int(11)
  DETERMINISTIC
BEGIN

	DECLARE id int(11);
	DECLARE idUsuario INTEGER;
	DECLARE idPersona INTEGER;

	IF identificador = 1 THEN

		INSERT INTO `usuario`(`email`, `contrasena`, `rol`, `estado`) VALUES (email, contrasena, 'CLIENTE', 1);
		SET idUsuario = last_insert_id();
			
		INSERT INTO `persona`(`tipoIdentificacion`, `identificacion`, `nombre`, `telefono`, `direccion`, `idUsuario`, `estado`) VALUES (tipoIdentificacion,identificacion,nombre,telefono,direccion,idUsuario,1);
		SET idPersona = last_insert_id();
		
		INSERT INTO `cliente`(`idPersona`, `estado`) VALUES (idPersona, 1);
		SET id = last_insert_id();
		
	ELSEIF identificador = 2 THEN
	
		SELECT persona.idPersona INTO idPersona FROM usuario
		INNER JOIN persona ON usuario.idUsuario = persona.idUsuario
		INNER JOIN cliente ON persona.idPersona = cliente.idPersona
		WHERE cliente.idCliente = idCliente;
		
		SELECT usuario.idUsuario INTO idUsuario FROM usuario
		INNER JOIN persona ON usuario.idUsuario = persona.idUsuario
		INNER JOIN cliente ON persona.idPersona = cliente.idPersona
		WHERE cliente.idCliente = idCliente;

		UPDATE `usuario` SET `email` = email WHERE `idUsuario` = idUsuario;
		UPDATE `persona` SET `tipoIdentificacion` = tipoIdentificacion, `identificacion` = identificacion, `nombre` = nombre, `telefono` = telefono, `direccion` = direccion WHERE `idPersona` = idPersona;
		SET id = idCliente;
	
	ELSEIF identificador = 3 THEN
	
		UPDATE `cliente` SET `estado` = 0 WHERE `idCliente` = idCliente;
		SET id = idCliente;

	ELSE
		SET id = 0;
	END IF;

	RETURN (id);
END
;;
delimiter ;

-- ----------------------------
-- Function structure for gestion_comentario
-- ----------------------------
DROP FUNCTION IF EXISTS `gestion_comentario`;
delimiter ;;
CREATE FUNCTION `gestion_comentario`(`identificador` int(11),
	`idComentario` int(11),
`comentario` TEXT,
	`idProducto` INT(11),
	`idUsuario` INT(11),
	`nombreUsuario` VARCHAR(100),
	`calificacion` INT(11))
 RETURNS int(11)
  DETERMINISTIC
BEGIN

	DECLARE id int(11);

	IF identificador = 1 THEN

		INSERT INTO `comentario`(`comentario`, `idProducto`, `fecha`, `idUsuario`, `nombreUsuario`, `calificacion`) VALUES (comentario, idProducto, NOW(), idUsuario, nombreUsuario, calificacion);
		SET id = last_insert_id();
		
	ELSEIF identificador = 2 THEN

		UPDATE comentario SET comentario.comentario = comentario, comentario.fecha = NOW() WHERE comentario.idComentario =idComentario;
		SET id = idComentario;
		
	ELSEIF identificador = 3 THEN

		DELETE FROM comentario WHERE comentario.idComentario =idComentario;
		SET id = idComentario;
		
	ELSE
		SET id = 0;
	END IF;

	RETURN (id);
END
;;
delimiter ;

-- ----------------------------
-- Function structure for gestion_detalle_pago
-- ----------------------------
DROP FUNCTION IF EXISTS `gestion_detalle_pago`;
delimiter ;;
CREATE FUNCTION `gestion_detalle_pago`(`identificador` int(11),
	`idDetallePago` int(11),	
	`trama` VARCHAR(10),
	`estado` VARCHAR(10))
 RETURNS int(11)
  DETERMINISTIC
BEGIN

	DECLARE id int(11);

	IF identificador = 1 THEN

		INSERT INTO `detalle_pago`(`trama`,`estado`) VALUES (trama,estado);
		SET id = last_insert_id();
		
	ELSEIF identificador = 2 THEN
	
		UPDATE `detalle_pago` SET `trama` = trama,
		`estado` = estado WHERE `idDetallePago` = idDetallePago;
		SET id = idDetallePago;
		
	ELSE
		SET id = 0;
	END IF;

	RETURN (id);
END
;;
delimiter ;

-- ----------------------------
-- Function structure for gestion_empleado
-- ----------------------------
DROP FUNCTION IF EXISTS `gestion_empleado`;
delimiter ;;
CREATE FUNCTION `gestion_empleado`(`identificador` int(11),
	`idEmpleado` int(11),	
	`tipoIdentificacion` varchar(50),
	`identificacion` varchar(13),
	`nombre` varchar(100),
	`telefono` varchar(15),
	`direccion` varchar(200),	
	`email` TEXT,
	`contrasena` TEXT)
 RETURNS int(11)
  DETERMINISTIC
BEGIN

	DECLARE id int(11);
	DECLARE idUsuario INTEGER;
	DECLARE idPersona INTEGER;

	IF identificador = 1 THEN

		INSERT INTO `usuario`(`email`, `contrasena`, `rol`, `estado`) VALUES (email, contrasena, 'ADMINISTRADOR', 1);
		SET idUsuario = last_insert_id();
			
		INSERT INTO `persona`(`tipoIdentificacion`, `identificacion`, `nombre`, `telefono`, `direccion`, `idUsuario`, `estado`) VALUES (tipoIdentificacion,identificacion,nombre,telefono,direccion,idUsuario,1);
		SET idPersona = last_insert_id();
		
		INSERT INTO `empleado`(`idPersona`, `estado`) VALUES (idPersona, 1);
		SET id = last_insert_id();
		
	ELSEIF identificador = 2 THEN
	
		SELECT persona.idPersona INTO idPersona FROM usuario
		INNER JOIN persona ON usuario.idUsuario = persona.idUsuario
		INNER JOIN empleado ON persona.idPersona = empleado.idPersona
		WHERE empleado.idEmpleado = idEmpleado;
		
		SELECT usuario.idUsuario INTO idUsuario FROM usuario
		INNER JOIN persona ON usuario.idUsuario = persona.idUsuario
		INNER JOIN empleado ON persona.idPersona = empleado.idPersona
		WHERE empleado.idEmpleado = idEmpleado;

		UPDATE `usuario` SET `email` = email WHERE `idUsuario` = idUsuario;
		UPDATE `persona` SET `tipoIdentificacion` = tipoIdentificacion, `identificacion` = identificacion, `nombre` = nombre, `telefono` = telefono, `direccion` = direccion WHERE `idPersona` = idPersona;
		SET id = idEmpleado;
	
	ELSEIF identificador = 3 THEN
	
		UPDATE `empleado` SET `estado` = 0 WHERE `idEmpleado` = idEmpleado;
		SET id = idEmpleado;

	ELSE
		SET id = 0;
	END IF;

	RETURN (id);
END
;;
delimiter ;

-- ----------------------------
-- Function structure for gestion_empresa
-- ----------------------------
DROP FUNCTION IF EXISTS `gestion_empresa`;
delimiter ;;
CREATE FUNCTION `gestion_empresa`(`identificador` int(11),
	`idEmpresa` int(11),
	`tipoIdentificacion` VARCHAR(50),
	`identificacion` VARCHAR(13),
	`nombre` VARCHAR(255),
	`email` TEXT,
	`logo` TEXT,
	`idHorario` int(11))
 RETURNS int(11)
  DETERMINISTIC
BEGIN

	DECLARE id int(11);

	IF identificador = 1 THEN

		INSERT INTO `empresa`(`tipoIdentificacion`, `identificacion`, `nombre`, `email`, `logo`, `idHorario`) VALUES (tipoIdentificacion, identificacion, nombre, email, logo, idHorario);
		SET id = last_insert_id();
		
	ELSEIF identificador = 2 THEN

		UPDATE `empresa` SET `tipoIdentificacion` = tipoIdentificacion, `identificacion` = identificacion, `nombre` = nombre, `email` = email, `logo` = logo, `idHorario` = idHorario WHERE `idEmpresa` = idEmpresa;
		SET id = idEmpresa;

	ELSE
		SET id = 0;
	END IF;

	RETURN (id);
END
;;
delimiter ;

-- ----------------------------
-- Function structure for gestion_error
-- ----------------------------
DROP FUNCTION IF EXISTS `gestion_error`;
delimiter ;;
CREATE FUNCTION `gestion_error`(`clase` TEXT,
	`metodo` TEXT,
	`error` TEXT)
 RETURNS int(11)
  DETERMINISTIC
BEGIN

	DECLARE id INTEGER;

	INSERT INTO `error`(`clase`, `metodo`, `error`, `fecha`) VALUES (clase, metodo, error, NOW());
  SET id = last_insert_id();

	RETURN (id);
END
;;
delimiter ;

-- ----------------------------
-- Function structure for gestion_factura
-- ----------------------------
DROP FUNCTION IF EXISTS `gestion_factura`;
delimiter ;;
CREATE FUNCTION `gestion_factura`(`identificador` int(11),
	`idFactura` int(11),
	`codigo` VARCHAR(255),
  `autorizacion` VARCHAR(255),
  `fecha` VARCHAR(25),	
	`subtotal12` VARCHAR(10),
	`subtotal0` VARCHAR(10),
	`subtotalSinImpuestos` VARCHAR(10),	
	`descuento` VARCHAR(10),
	`ice` VARCHAR(10),
	`iva` VARCHAR(10),	
	`total` VARCHAR(10),
	`estado` int(11),
	`idCliente` int(11),
	`idEmpleado` int(11),
	`idFormaPago` int(11),		
	`idTaller` int(11),	
	`ruta` VARCHAR(10),	
	`idDetallePago` int(11))
 RETURNS int(11)
  DETERMINISTIC
BEGIN

		DECLARE id int(11);

	IF identificador = 1 THEN

		INSERT INTO `factura`(`codigo`, `autorizacion`, `fecha`, `subtotal12`, `subtotal0`, `subtotalSinImpuestos`,
		`descuento`, `ice`, `iva`, `total`, `estado`, `idCliente`, `idEmpleado`,`idFormaPago`,`idTaller`,`ruta`, `idDetallePago`) VALUES
		 (codigo, autorizacion, fecha,subtotal12, subtotal0, subtotalSinImpuestos, descuento, ice, iva, total,
		  estado, idCliente,  idEmpleado, idFormaPago, idTaller, ruta, idDetallePago);
		SET id = last_insert_id();
		
	ELSEIF identificador = 2 THEN

		UPDATE `factura` SET `subtotal12` = subtotal12, `subtotal0` = subtotal0, `subtotalSinImpuestos` = subtotalSinImpuestos,
		`descuento` = descuento, `ice` = ice, `iva` = iva, `total` = total, `estado` = estado, `idCliente` = idCliente,
		`idFormaPago` = idFormaPago, `idDetallePago` = idDetallePago WHERE `idFactura` = idFactura;
		SET id = idFactura;

	ELSE
		SET id = 0;
	END IF;

	RETURN (id);
END
;;
delimiter ;

-- ----------------------------
-- Function structure for gestion_factura_detalle
-- ----------------------------
DROP FUNCTION IF EXISTS `gestion_factura_detalle`;
delimiter ;;
CREATE FUNCTION `gestion_factura_detalle`(`identificador` int(11),
	`idFacturaDetalle` int(11),
	`tipo` DOUBLE,
	`trama` VARCHAR(10))
 RETURNS int(11)
  DETERMINISTIC
BEGIN

	DECLARE id int(11);

	IF identificador = 1 THEN

		INSERT INTO `factura_detalle`(`tipo`,`trama`) VALUES (tipo, trama);
		SET id = last_insert_id();
		
	ELSEIF identificador = 2 THEN
	
		UPDATE `factura_detalle` SET `tipo` = tipo, `trama` = trama  WHERE `idFacturaDetalle` = idFacturaDetalle;
		SET id = idFacturaDetalle;
		
	ELSE
		SET id = 0;
	END IF;

	RETURN (id);
END
;;
delimiter ;

-- ----------------------------
-- Function structure for gestion_favorito
-- ----------------------------
DROP FUNCTION IF EXISTS `gestion_favorito`;
delimiter ;;
CREATE FUNCTION `gestion_favorito`(`identificador` int(11),

	`idProducto` INT(11))
 RETURNS int(11)
  DETERMINISTIC
BEGIN

	DECLARE id int(11);
	DECLARE numero int(11);
	SET numero = 0;

	IF identificador = 1 THEN
	
		SELECT COUNT(*) INTO numero FROM favorito WHERE favorito.idProducto = idProducto;
		
		IF numero = 0 THEN
		
			INSERT INTO `favorito`(`idProducto`, `fecha`) VALUES (idProducto, NOW());
			SET id = last_insert_id();
			
		END IF;
		
	ELSE
		SET id = 0;
	END IF;

	RETURN (id);
END
;;
delimiter ;

-- ----------------------------
-- Function structure for gestion_forma_pago
-- ----------------------------
DROP FUNCTION IF EXISTS `gestion_forma_pago`;
delimiter ;;
CREATE FUNCTION `gestion_forma_pago`(`identificador` int(11),
	`idFormaPago` int(11),
	`tipo` VARCHAR(100),
	`nombre` VARCHAR(100),
	`foto` TEXT)
 RETURNS int(11)
  DETERMINISTIC
BEGIN

	DECLARE id int(11);

	IF identificador = 1 THEN

		INSERT INTO `forma_pago`(`tipo`, `nombre`, `foto`) VALUES (tipo, nombre, foto);
		SET id = last_insert_id();
		
	ELSEIF identificador = 2 THEN

		UPDATE forma_pago SET forma_pago.tipo = tipo, forma_pago.nombre = nombre, forma_pago.foto = foto WHERE forma_pago.idFormaPago =idFormaPago;
		SET id = idFormaPago;
		
	ELSEIF identificador = 3 THEN

		UPDATE forma_pago SET forma_pago.estado = 0 WHERE forma_pago.idFormaPago =idFormaPago;
		SET id = idFormaPago;

	ELSE
		SET id = 0;
	END IF;

	RETURN (id);
END
;;
delimiter ;

-- ----------------------------
-- Function structure for gestion_horario
-- ----------------------------
DROP FUNCTION IF EXISTS `gestion_horario`;
delimiter ;;
CREATE FUNCTION `gestion_horario`(`identificador` int(11),
	`idHorario` int(11),
	`apertura` VARCHAR(50),
	`cierre` VARCHAR(50),
	`descripcion` VARCHAR(50))
 RETURNS int(11)
  DETERMINISTIC
BEGIN

	DECLARE id int(11);

	IF identificador = 1 THEN

		INSERT INTO `horario`(`apertura`, `cierre`, `descripcion`) VALUES (apertura, cierre, descripcion);
		SET id = last_insert_id();
		
	ELSEIF identificador = 2 THEN

		UPDATE horario SET horario.apertura = apertura, horario.cierre = cierre, horario.descripcion = descripcion WHERE horario.idHorario =idHorario;
		SET id = idHorario;

	ELSE
		SET id = 0;
	END IF;

	RETURN (id);
END
;;
delimiter ;

-- ----------------------------
-- Function structure for gestion_registro_usuario
-- ----------------------------
DROP FUNCTION IF EXISTS `gestion_registro_usuario`;
delimiter ;;
CREATE FUNCTION `gestion_registro_usuario`(`email` TEXT,
	`contrasena` TEXT,
	`rol` INTEGER,
	`tipoIdentificacion` varchar(50),
	`identificacion` varchar(13),
	`nombre` varchar(100),
	`telefono` varchar(15),
	`direccion` varchar(200),
	`tipo` INTEGER)
 RETURNS int(11)
  DETERMINISTIC
BEGIN

		DECLARE valEmail TEXT;
    DECLARE rol_ VARCHAR(50);
		DECLARE idUsuario INTEGER;
		DECLARE idPersona INTEGER;
		DECLARE id INTEGER;
		
		SELECT usuario.email INTO valEmail FROM usuario WHERE usuario.email = email;
		
		IF ISNULL(valEmail) THEN
			
			IF rol = 1 THEN
		    SET rol_ = 'CLIENTE';
			ELSE
					SET rol_ = 'ADMINISTRADOR';
			END IF;
			
			INSERT INTO `usuario`(`email`, `contrasena`, `rol`, `estado`) VALUES (email, contrasena, rol_, 1);
			SET idUsuario = last_insert_id();
			
			INSERT INTO `persona`(`tipoIdentificacion`, `identificacion`, `nombre`, `telefono`, `direccion`, `idUsuario`, `estado`) VALUES (tipoIdentificacion,identificacion,nombre,telefono,direccion,idUsuario,1);
			SET idPersona = last_insert_id();
			
			IF tipo = 1 THEN
				 INSERT INTO `cliente`(`idPersona`, `estado`) VALUES (idPersona,1);
				 SET id = last_insert_id();
			ELSE
				 INSERT INTO `empleado`(`idPersona`, `estado`) VALUES (idPersona,1);
				 SET id = last_insert_id();
			END IF;
			
		ELSE
			SET id = 0;
		END IF;

	RETURN (id);
END
;;
delimiter ;

-- ----------------------------
-- Function structure for gestion_sucursal
-- ----------------------------
DROP FUNCTION IF EXISTS `gestion_sucursal`;
delimiter ;;
CREATE FUNCTION `gestion_sucursal`(`identificador` int(11),
	`idSucursal` int(11),
	`nombre` VARCHAR(100),
	`telefono` VARCHAR(15),
	`direccion` TEXT,
	`latitud` VARCHAR(50),
	`longitud` VARCHAR(50),
	`idEmpresa` int(11))
 RETURNS int(11)
  DETERMINISTIC
BEGIN

	DECLARE id int(11);

	IF identificador = 1 THEN

		INSERT INTO `sucursal`(`nombre`, `telefono`, `direccion`, `latitud`, `longitud`, `idEmpresa`) VALUES (nombre, telefono, direccion, latitud, longitud, idEmpresa);
		SET id = last_insert_id();
		
	ELSEIF identificador = 2 THEN

		UPDATE `sucursal` SET `nombre` = nombre, `telefono` = telefono, `direccion` = direccion, `latitud` = latitud, `longitud` = longitud, `idEmpresa` = idEmpresa WHERE `idSucursal` = idSucursal;
		SET id = idSucursal;

	ELSE
		SET id = 0;
	END IF;

	RETURN (id);
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
