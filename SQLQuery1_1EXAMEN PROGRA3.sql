CREATE DATABASE SistemaGestionReciclaje;

-- para usar la base de datos
USE SistemaGestionReciclaje;
GO

-- tabla Usuario
CREATE TABLE Usuario (
    id INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL,
    puntos INT DEFAULT 0
);
GO

-- tabla MaterialReciclable
CREATE TABLE MaterialReciclable (
    id INT PRIMARY KEY IDENTITY(1,1),
    tipo VARCHAR(50) NOT NULL,
    descripcion TEXT
);
GO

-- tabla RegistroReciclaje
CREATE TABLE RegistroReciclaje (
    id INT PRIMARY KEY IDENTITY(1,1),
    usuario_id INT,
    material_id INT,
    cantidad FLOAT NOT NULL,
    fecha DATE NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES Usuario(id),
    FOREIGN KEY (material_id) REFERENCES MaterialReciclable(id)
);