-- 1. INSERT: Categorías
INSERT INTO categorias (nombre_categoria) VALUES 
('Electrónica'),
('Ropa'),
('Hogar'),
('Jardín'); -- Categoría sin productos para probar RIGHT JOIN
-- 2. INSERT: Productos
INSERT INTO productos (nombre_producto, precio, stock, categoria_id) VALUES 
('Laptop Gamer', 1200.00, 10, 1),
('Smartphone', 800.00, 15, 1),
('Camiseta Algodón', 25.00, 50, 2),
('Lámpara de Mesa', 45.00, 20, 3),
('Mouse Inalámbrico', 30.00, 5, NULL); -- Producto sin categoría para probar LEFT JOIN
-- 3. INSERT: Clientes
INSERT INTO clientes (nombre, apellido, email, telefono) VALUES 
('Carlos', 'Mendoza', 'carlos@email.com', '555-0101'),
('Ana', 'García', 'ana@email.com', '555-0102'),
('Luis', 'Torres', 'luis@email.com', '555-0103'),
('María', 'Reyes', 'maria@email.com', '555-0104'); -- Cliente sin pedidos para probar LEFT JOIN
-- 4. INSERT: Pedidos y Detalles de Compra
INSERT INTO pedidos (cliente_id, estado) VALUES 
(1, 'Completado'),
(1, 'En Proceso'),
(2, 'Pendiente');
INSERT INTO detalle_pedidos (pedido_id, producto_id, cantidad, precio_unitario) VALUES 
(1, 1, 1, 1200.00),
(1, 3, 2, 25.00),
(2, 2, 1, 800.00),
(3, 4, 1, 45.00);


-- 5. UPDATE: Modificar datos de productos
UPDATE productos 
SET stock = stock + 10, precio = 28.00 
WHERE producto_id = 3;

-- Seccion 1
-- 1.1 Clientes especiales

INSERT INTO clientes (nombre, apellido, email, telefono) VALUES 
('Laura', 'Gomez', 'laura.gomez@techstore.com', '555-0199');

--1.2 Productos En Lanzamiento

INSERT INTO productos (nombre_producto, precio, stock, categoria_id) VALUES 
('Teclado Mecánico RGB', 110.00, 0, 1),
('Monitor Gaming 27"', 350.00, 0, 1);

-- 1.3 Venta Combinada

INSERT INTO pedidos (cliente_id, estado) VALUES 
(5, 'Completado');

INSERT INTO detalle_pedidos (pedido_id, producto_id, cantidad, precio_unitario) VALUES 
(4, 1, 1, 1200.00),
(4, 3, 2, 25.00);

