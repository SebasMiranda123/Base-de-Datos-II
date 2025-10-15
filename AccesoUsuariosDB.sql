-- Crear la base de datos
CREATE DATABASE AccesoUsuariosDB;
GO

USE AccesoUsuariosDB;
GO

-- Crear tabla de usuarios
CREATE TABLE Usuarios (
    UsuarioID INT PRIMARY KEY IDENTITY(1,1),
    NombreUsuario NVARCHAR(50) NOT NULL UNIQUE,
    Contraseña NVARCHAR(255) NOT NULL,
    Rol NVARCHAR(20) NOT NULL CHECK (Rol IN ('administrador', 'visitante'))
);
GO

-- Insertar usuarios
INSERT INTO Usuarios (NombreUsuario, Contraseña, Rol)
VALUES 
('Admin', 'admin1234', 'administrador'),
('Visitante', 'visitante1234', 'visitante');
GO
