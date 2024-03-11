/*Se crea la base de datos */
DROP SCHEMA IF EXISTS urbanFashion; 
DROP USER IF EXISTS usuario_prueba; 
CREATE SCHEMA urbanFashion;

/*Se crea un usuario para la base de datos llamado "usuario_prueba" y tiene la contraseña "fidelitas" */
CREATE USER 'usuario_prueba'@'%' IDENTIFIED BY 'fidelitas';

/*Se asignan los privilegios sobre la base de datos urbanFashion al usuario creado */
GRANT ALL PRIVILEGES ON urbanFashion.* TO 'usuario_prueba'@'%'; 
FLUSH PRIVILEGES;

/*Se crea la tabla roles */
CREATE TABLE urbanFashion.roles (
id_rol INT NOT NULL AUTO_INCREMENT,
nombre_rol VARCHAR(30) NOT NULL,
PRIMARY KEY (id_rol))
ENGINE = InnoDB 
DEFAULT CHARACTER SET = utf8mb4;

/*Se insertan los roles */
INSERT INTO urbanFashion.roles (nombre_rol)
VALUES ('administrador');
INSERT INTO urbanFashion.roles (nombre_rol)
VALUES ('cliente');

SELECT * FROM urbanFashion.roles;

/*Se crea la tabla usuarios */
CREATE TABLE urbanFashion.usuarios (
id_usuario INT NOT NULL AUTO_INCREMENT,
nombre_usuario VARCHAR(30) NOT NULL,
apellido1_usuario VARCHAR(30) NOT NULL,
apellido2_usuario VARCHAR(30) NOT NULL,
telefono_usuario VARCHAR(10) NOT NULL,
correo_usuario VARCHAR(50) NOT NULL,
contrasena_usuario VARCHAR(30) NOT NULL,
rol_usuario INT NOT NULL,
activo_usuario BOOLEAN NOT NULL,
PRIMARY KEY (id_usuario),
FOREIGN KEY (rol_usuario) REFERENCES roles (id_rol))
ENGINE = InnoDB 
DEFAULT CHARACTER SET = utf8mb4;

/*Se insertan los usuarios */
INSERT INTO urbanFashion.usuarios (nombre_usuario, apellido1_usuario, apellido2_usuario, telefono_usuario, correo_usuario, contrasena_usuario, rol_usuario, activo_usuario)
VALUES ('MANUEL', 'MIRANDA', 'GARCIA', '78001234', 'mmiranda@urbanfashion.cr', 'fidelitas', 1, true);
INSERT INTO urbanFashion.usuarios (nombre_usuario, apellido1_usuario, apellido2_usuario, telefono_usuario, correo_usuario, contrasena_usuario, rol_usuario, activo_usuario)
VALUES ('ROSA', 'SANCHEZ', 'MEJIA', '67004567', 'rsanchez@gmail.com', 'fidelitas', 2, true);

SELECT * FROM urbanFashion.usuarios;

/*Se crea la tabla categorias */
CREATE TABLE urbanFashion.categorias (
id_categoria INT NOT NULL AUTO_INCREMENT,
nombre_categoria VARCHAR(30) NOT NULL,
PRIMARY KEY (id_categoria))
ENGINE = InnoDB 
DEFAULT CHARACTER SET = utf8mb4;

/*Se insertan las categorías */
INSERT INTO urbanFashion.categorias (nombre_categoria)
VALUES ('Camisas');
INSERT INTO urbanFashion.categorias (nombre_categoria)
VALUES ('Camisetas');
INSERT INTO urbanFashion.categorias (nombre_categoria)
VALUES ('Blusas');
INSERT INTO urbanFashion.categorias (nombre_categoria)
VALUES ('Suéteres');
INSERT INTO urbanFashion.categorias (nombre_categoria)
VALUES ('Chaquetas');
INSERT INTO urbanFashion.categorias (nombre_categoria)
VALUES ('Pantalones');
INSERT INTO urbanFashion.categorias (nombre_categoria)
VALUES ('Faldas');
INSERT INTO urbanFashion.categorias (nombre_categoria)
VALUES ('Vestidos');
INSERT INTO urbanFashion.categorias (nombre_categoria)
VALUES ('Ropa deportiva');
INSERT INTO urbanFashion.categorias (nombre_categoria)
VALUES ('Ropa interior');
INSERT INTO urbanFashion.categorias (nombre_categoria)
VALUES ('Pijamas');
INSERT INTO urbanFashion.categorias (nombre_categoria)
VALUES ('Ropa de baño');
INSERT INTO urbanFashion.categorias (nombre_categoria)
VALUES ('Zapatos');
INSERT INTO urbanFashion.categorias (nombre_categoria)
VALUES ('Accesorios');

SELECT * FROM urbanFashion.categorias;

/*Se crea la tabla generos */
CREATE TABLE urbanFashion.generos (
id_genero INT NOT NULL AUTO_INCREMENT,
nombre_genero VARCHAR(30) NOT NULL,
PRIMARY KEY (id_genero))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

/*Se insertan los generos */
INSERT INTO urbanFashion.generos (nombre_genero)
VALUES ('Hombre');
INSERT INTO urbanFashion.generos (nombre_genero)
VALUES ('Mujer');
INSERT INTO urbanFashion.generos (nombre_genero)
VALUES ('Infantil');
INSERT INTO urbanFashion.generos (nombre_genero)
VALUES ('Bebé');
INSERT INTO urbanFashion.generos (nombre_genero)
VALUES ('Unisex');

SELECT * FROM urbanFashion.generos;

/*Se crea la tabla tallas */
CREATE TABLE urbanFashion.tallas (
id_talla INT NOT NULL AUTO_INCREMENT,
nombre_talla VARCHAR(30) NOT NULL,
PRIMARY KEY (id_talla))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

/*Se insertan las tallas */
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('Recién nacido');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('0-3 meses');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('3-6 meses');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('6-9 meses');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('9-12 meses');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('18 meses');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('24 meses');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('2');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('4');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('6');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('8');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('10');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('12');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('14');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('16');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('XS');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('S');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('M');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('L');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('XL');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('XXL');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('XXXL');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU15');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU16');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU17');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU18');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU19');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU20');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU21');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU22');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU23');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU24');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU25');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU26');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU27');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU28');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU29');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU30');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU31');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU32');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU33');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU34');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU35');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU36');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU37');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU38');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU39');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU40');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU41');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU42');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU43');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU44');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('EU45');
INSERT INTO urbanFashion.tallas (nombre_talla)
VALUES ('N/A');

SELECT * FROM urbanFashion.tallas;

/*Se crea la tabla marcas */
CREATE TABLE urbanFashion.marcas (
id_marca INT NOT NULL AUTO_INCREMENT,
nombre_marca VARCHAR(30) NOT NULL,
PRIMARY KEY (id_marca))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

/*Se insertan las marcas */
INSERT INTO urbanFashion.marcas (nombre_marca)
VALUES ('U.S. Polo');
INSERT INTO urbanFashion.marcas (nombre_marca)
VALUES ('Forever 21');
INSERT INTO urbanFashion.marcas (nombre_marca)
VALUES ('Levis');
INSERT INTO urbanFashion.marcas (nombre_marca)
VALUES ('Gap');
INSERT INTO urbanFashion.marcas (nombre_marca)
VALUES ('Old Navy');
INSERT INTO urbanFashion.marcas (nombre_marca)
VALUES ('Hollister');
INSERT INTO urbanFashion.marcas (nombre_marca)
VALUES ('Tommy Hilfiger');
INSERT INTO urbanFashion.marcas (nombre_marca) 
VALUES ('ONeill');
INSERT INTO urbanFashion.marcas (nombre_marca) 
VALUES ('Carter');
INSERT INTO urbanFashion.marcas (nombre_marca) 
VALUES ('St. Jacks');
INSERT INTO urbanFashion.marcas (nombre_marca)
VALUES ('Hi-Tec');
INSERT INTO urbanFashion.marcas (nombre_marca)
VALUES ('Adidas');
INSERT INTO urbanFashion.marcas (nombre_marca)
VALUES ('Puma');
INSERT INTO urbanFashion.marcas (nombre_marca)
VALUES ('Nike');
INSERT INTO urbanFashion.marcas (nombre_marca)
VALUES ('Calvin Klein');
INSERT INTO urbanFashion.marcas (nombre_marca)
VALUES ('Victorias Secret');

SELECT * FROM urbanFashion.marcas;

/*Se crea la tabla productos */
CREATE TABLE urbanFashion.productos (
id_producto INT NOT NULL AUTO_INCREMENT,
categoria_producto INT NOT NULL,
descripcion_producto VARCHAR(50) NOT NULL,
genero_producto INT NOT NULL,
marca_producto INT NOT NULL,
talla_producto INT NOT NULL,
cantidad_producto INT NOT NULL,
precio_producto DECIMAL(8, 2) NOT NULL,
descuento_producto BOOLEAN NOT NULL,
activo_producto BOOLEAN NOT NULL,
imagen_producto VARCHAR(1024),
PRIMARY KEY (id_producto),
FOREIGN KEY (categoria_producto) REFERENCES categorias (id_categoria),
FOREIGN KEY (genero_producto) REFERENCES generos (id_genero),
FOREIGN KEY (marca_producto) REFERENCES marcas (id_marca),
FOREIGN KEY (talla_producto) REFERENCES tallas (id_talla))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

/*Se insertan los productos */
INSERT INTO urbanFashion.productos (categoria_producto, descripcion_producto, genero_producto, marca_producto, talla_producto, cantidad_producto, precio_producto, descuento_producto, activo_producto, imagen_producto)
VALUES (1, 'Camisa de algodón a rayas', 1, 1, 15, 50, 35000, false, true, NULL);
INSERT INTO urbanFashion.productos (categoria_producto, descripcion_producto, genero_producto, marca_producto, talla_producto, cantidad_producto, precio_producto, descuento_producto, activo_producto, imagen_producto)
VALUES (2, 'Camiseta estampada de manga corta', 2, 2, 16, 80, 25000, true, true, NULL);
INSERT INTO urbanFashion.productos (categoria_producto, descripcion_producto, genero_producto, marca_producto, talla_producto, cantidad_producto, precio_producto, descuento_producto, activo_producto, imagen_producto)
VALUES (3, 'Blusa de seda con lazo', 2, 3, 17, 40, 45000, false, true, NULL);
INSERT INTO urbanFashion.productos (categoria_producto, descripcion_producto, genero_producto, marca_producto, talla_producto, cantidad_producto, precio_producto, descuento_producto, activo_producto, imagen_producto)
VALUES (4, 'Jersey de punto cuello alto', 2, 4, 18, 25, 55000, false, true, NULL);
INSERT INTO urbanFashion.productos (categoria_producto, descripcion_producto, genero_producto, marca_producto, talla_producto, cantidad_producto, precio_producto, descuento_producto, activo_producto, imagen_producto)
VALUES (5, 'Chaqueta de cuero sintético', 1, 5, 19, 20, 85000, true, true, NULL);
INSERT INTO urbanFashion.productos (categoria_producto, descripcion_producto, genero_producto, marca_producto, talla_producto, cantidad_producto, precio_producto, descuento_producto, activo_producto, imagen_producto)
VALUES (6, 'Pantalones vaqueros rectos', 1, 6, 20, 70, 50000, false, true, NULL);
INSERT INTO urbanFashion.productos (categoria_producto, descripcion_producto, genero_producto, marca_producto, talla_producto, cantidad_producto, precio_producto, descuento_producto, activo_producto, imagen_producto)
VALUES (7, 'Falda plisada de cuadros', 2, 7, 21, 35, 40000, false, true, NULL);
INSERT INTO urbanFashion.productos (categoria_producto, descripcion_producto, genero_producto, marca_producto, talla_producto, cantidad_producto, precio_producto, descuento_producto, activo_producto, imagen_producto)
VALUES (8, 'Vestido de fiesta corto', 2, 8, 22, 15, 120000, false, true, NULL);
INSERT INTO urbanFashion.productos (categoria_producto, descripcion_producto, genero_producto, marca_producto, talla_producto, cantidad_producto, precio_producto, descuento_producto, activo_producto, imagen_producto)
VALUES (9, 'Camiseta deportiva sin mangas', 1, 10, 19, 80, 35000, false, true, NULL);
INSERT INTO urbanFashion.productos (categoria_producto, descripcion_producto, genero_producto, marca_producto, talla_producto, cantidad_producto, precio_producto, descuento_producto, activo_producto, imagen_producto)
VALUES (10, 'Pack de 3 braguitas de algodón', 2, 16, 17, 150, 18000, false, true, NULL);
INSERT INTO urbanFashion.productos (categoria_producto, descripcion_producto, genero_producto, marca_producto, talla_producto, cantidad_producto, precio_producto, descuento_producto, activo_producto, imagen_producto)
VALUES (11, 'Pijama de algodón estampado', 5, 12, 20, 30, 30000, true, true, NULL);
INSERT INTO urbanFashion.productos (categoria_producto, descripcion_producto, genero_producto, marca_producto, talla_producto, cantidad_producto, precio_producto, descuento_producto, activo_producto, imagen_producto)
VALUES (12, 'Bikini de rayas', 2, 16, 17, 18, 65000, true, true, NULL);
INSERT INTO urbanFashion.productos (categoria_producto, descripcion_producto, genero_producto, marca_producto, talla_producto, cantidad_producto, precio_producto, descuento_producto, activo_producto, imagen_producto)
VALUES (13, 'Tenis deportivos para correr', 1, 13, 40, 60, 80000, false, true, NULL);
INSERT INTO urbanFashion.productos (categoria_producto, descripcion_producto, genero_producto, marca_producto, talla_producto, cantidad_producto, precio_producto, descuento_producto, activo_producto, imagen_producto)
VALUES (14, 'Billetera', 1, 3, 54, 100, 15000, false, true, NULL);

SELECT p.id_producto as ID_Producto, c.nombre_categoria as Categoría, p.descripcion_producto as Descripción, g.nombre_genero as Género, m.nombre_marca as Marca, t.nombre_talla as Talla, p.cantidad_producto as Cantidad, p.precio_producto as Precio, p.descuento_producto as Descuento, p.activo_producto as Activo, p.imagen_producto as Imagen
FROM urbanFashion.productos p
JOIN urbanFashion.categorias c ON p.categoria_producto = c.id_categoria
JOIN urbanFashion.generos g ON p.genero_producto = g.id_genero
JOIN urbanFashion.marcas m ON p.marca_producto = m.id_marca
JOIN urbanFashion.tallas t ON p.talla_producto = t.id_talla;

/*Se crea la tabla estados */
CREATE TABLE urbanFashion.estados (
id_estado INT NOT NULL AUTO_INCREMENT,
nombre_estado VARCHAR(30) NOT NULL,
PRIMARY KEY (id_estado))
ENGINE = InnoDB 
DEFAULT CHARACTER SET = utf8mb4;

/*Se insertan los estados de pedido */
INSERT INTO urbanFashion.estados (nombre_estado)
VALUES ('Facturado');
INSERT INTO urbanFashion.estados (nombre_estado)
VALUES ('Pagado');
INSERT INTO urbanFashion.estados (nombre_estado)
VALUES ('Despachado');
INSERT INTO urbanFashion.estados (nombre_estado)
VALUES ('Entregado');
INSERT INTO urbanFashion.estados (nombre_estado)
VALUES ('Anulado');

SELECT * FROM urbanFashion.estados;

/*Se crea la tabla pedidos */
CREATE TABLE urbanFashion.pedidos (
id_pedido INT NOT NULL AUTO_INCREMENT,
fecha_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
cliente_pedido INT NOT NULL,
total_pedido DECIMAL(9, 2) NOT NULL,
pago_pedido VARCHAR(30),
provincia_entrega VARCHAR(30) NOT NULL,
canton_entrega VARCHAR(30) NOT NULL,
distrito_entrega VARCHAR(30) NOT NULL,
direccion_entrega VARCHAR(60) NOT NULL,
tracking_entrega VARCHAR(30),
estado_pedido INT NOT NULL,
PRIMARY KEY (id_pedido),
FOREIGN KEY (cliente_pedido) REFERENCES usuarios (id_usuario),
FOREIGN KEY (estado_pedido) REFERENCES estados (id_estado))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

SELECT * FROM urbanFashion.pedidos;

/*Se crea la tabla lineas_pedido */
CREATE TABLE urbanFashion.lineas_pedido (
id_linea INT NOT NULL AUTO_INCREMENT,
id_pedido INT NOT NULL,
id_producto INT NOT NULL,
cantidad_producto INT NOT NULL,
precio_unitario_producto DECIMAL(8, 2) NOT NULL,
subtotal_linea DECIMAL(9, 2) AS (cantidad_producto * precio_unitario_producto) NOT NULL,
PRIMARY KEY (id_linea),
FOREIGN KEY (id_pedido) REFERENCES pedidos (id_pedido),
FOREIGN KEY (id_producto) REFERENCES productos (id_producto))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

SELECT * FROM urbanFashion.lineas_pedido;