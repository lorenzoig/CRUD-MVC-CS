
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/19/2021 15:29:37
-- Generated from EDMX file: C:\Lorenzo\Git\CRUD-MVC-CS\CRUD MVC CS\Models\BDPasajes.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [BDPasaje];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Asiento'
CREATE TABLE [dbo].[Asiento] (
    [IIDASIENTO] int IDENTITY(1,1) NOT NULL,
    [IIDVIAJE] int  NULL,
    [INDICEFILA] int  NULL,
    [INDICECOLUMNA] int  NULL,
    [BHABILITADO] int  NULL
);
GO

-- Creating table 'Bus'
CREATE TABLE [dbo].[Bus] (
    [IIDBUS] int IDENTITY(1,1) NOT NULL,
    [IIDSUCURSAL] int  NULL,
    [IIDTIPOBUS] int  NULL,
    [PLACA] varchar(100)  NULL,
    [FECHACOMPRA] datetime  NULL,
    [IIDMODELO] int  NULL,
    [NUMEROFILAS] int  NULL,
    [NUMEROCOLUMNAS] int  NULL,
    [BHABILITADO] int  NULL,
    [DESCRIPCION] varchar(200)  NULL,
    [OBSERVACION] varchar(200)  NULL,
    [IIDMARCA] int  NULL
);
GO

-- Creating table 'Cliente'
CREATE TABLE [dbo].[Cliente] (
    [IIDCLIENTE] int IDENTITY(1,1) NOT NULL,
    [NOMBRE] varchar(100)  NULL,
    [APPATERNO] varchar(150)  NULL,
    [APMATERNO] varchar(150)  NULL,
    [EMAIL] varchar(200)  NULL,
    [DIRECCION] varchar(200)  NULL,
    [IIDSEXO] int  NULL,
    [TELEFONOFIJO] varchar(10)  NULL,
    [TELEFONOCELULAR] varchar(10)  NULL,
    [BHABILITADO] int  NULL,
    [bTieneUsuario] int  NULL,
    [TIPOUSUARIO] char(1)  NULL
);
GO

-- Creating table 'DETALLEVENTA'
CREATE TABLE [dbo].[DETALLEVENTA] (
    [IIDETALLEVENTA] int IDENTITY(1,1) NOT NULL,
    [IIDVENTA] int  NULL,
    [IIDVIAJE] int  NULL,
    [IIDBUS] int  NULL,
    [PRECIO] decimal(18,2)  NULL,
    [BHABILITADO] int  NULL
);
GO

-- Creating table 'Empleado'
CREATE TABLE [dbo].[Empleado] (
    [IIDEMPLEADO] int IDENTITY(1,1) NOT NULL,
    [NOMBRE] varchar(100)  NULL,
    [APPATERNO] varchar(200)  NULL,
    [APMATERNO] varchar(200)  NULL,
    [FECHACONTRATO] datetime  NULL,
    [SUELDO] decimal(18,2)  NULL,
    [IIDTIPOUSUARIO] int  NULL,
    [IIDTIPOCONTRATO] int  NULL,
    [IIDSEXO] int  NULL,
    [BHABILITADO] int  NULL,
    [bTieneUsuario] int  NULL,
    [TIPOUSUARIO] char(1)  NULL
);
GO

-- Creating table 'Lugar'
CREATE TABLE [dbo].[Lugar] (
    [IIDLUGAR] int IDENTITY(1,1) NOT NULL,
    [NOMBRE] varchar(50)  NULL,
    [DESCRIPCION] varchar(200)  NULL,
    [BHABILITADO] int  NULL
);
GO

-- Creating table 'Marca'
CREATE TABLE [dbo].[Marca] (
    [IIDMARCA] int IDENTITY(1,1) NOT NULL,
    [NOMBRE] varchar(100)  NULL,
    [DESCRIPCION] varchar(200)  NULL,
    [BHABILITADO] int  NULL
);
GO

-- Creating table 'Modelo'
CREATE TABLE [dbo].[Modelo] (
    [IIDMODELO] int IDENTITY(1,1) NOT NULL,
    [NOMBRE] varchar(100)  NULL,
    [DESCRIPCION] varchar(200)  NULL,
    [BHABILITADO] int  NULL
);
GO

-- Creating table 'Pagina'
CREATE TABLE [dbo].[Pagina] (
    [IIDPAGINA] int IDENTITY(1,1) NOT NULL,
    [MENSAJE] varchar(50)  NULL,
    [ACCION] varchar(50)  NULL,
    [CONTROLADOR] varchar(100)  NULL,
    [BHABILITADO] int  NULL
);
GO

-- Creating table 'Rol'
CREATE TABLE [dbo].[Rol] (
    [IIDROL] int IDENTITY(1,1) NOT NULL,
    [NOMBRE] varchar(100)  NULL,
    [DESCRIPCION] varchar(100)  NULL,
    [BHABILITADO] int  NULL
);
GO

-- Creating table 'RolPagina'
CREATE TABLE [dbo].[RolPagina] (
    [IIDROLPAGINA] int IDENTITY(1,1) NOT NULL,
    [IIDROL] int  NULL,
    [IIDPAGINA] int  NULL,
    [BHABILITADO] int  NULL
);
GO

-- Creating table 'Sexo'
CREATE TABLE [dbo].[Sexo] (
    [IIDSEXO] int IDENTITY(1,1) NOT NULL,
    [NOMBRE] varchar(50)  NULL,
    [BHABILITADO] int  NULL
);
GO

-- Creating table 'Sucursal'
CREATE TABLE [dbo].[Sucursal] (
    [IIDSUCURSAL] int IDENTITY(1,1) NOT NULL,
    [NOMBRE] varchar(100)  NULL,
    [DIRECCION] varchar(200)  NULL,
    [TELEFONO] varchar(10)  NULL,
    [EMAIL] varchar(100)  NULL,
    [FECHAAPERTURA] datetime  NULL,
    [BHABILITADO] int  NULL
);
GO

-- Creating table 'TipoBus'
CREATE TABLE [dbo].[TipoBus] (
    [IIDTIPOBUS] int IDENTITY(1,1) NOT NULL,
    [NOMBRE] varchar(100)  NULL,
    [DESCRIPCION] varchar(200)  NULL,
    [BHABILITADO] int  NULL
);
GO

-- Creating table 'TipoContrato'
CREATE TABLE [dbo].[TipoContrato] (
    [IIDTIPOCONTRATO] int IDENTITY(1,1) NOT NULL,
    [NOMBRE] varchar(150)  NULL,
    [BHABILITADO] int  NULL
);
GO

-- Creating table 'TipoUsuario'
CREATE TABLE [dbo].[TipoUsuario] (
    [IIDTIPOUSUARIO] int IDENTITY(1,1) NOT NULL,
    [NOMBRE] varchar(150)  NULL,
    [BHABILITADO] int  NULL,
    [DESCRIPCION] varchar(250)  NULL
);
GO

-- Creating table 'TIPOUSUARIOREGISTRO'
CREATE TABLE [dbo].[TIPOUSUARIOREGISTRO] (
    [TIPOUSUARIO] char(1)  NOT NULL,
    [NOMBRE] varchar(100)  NULL
);
GO

-- Creating table 'Usuario'
CREATE TABLE [dbo].[Usuario] (
    [IIDUSUARIO] int IDENTITY(1,1) NOT NULL,
    [NOMBREUSUARIO] varchar(100)  NULL,
    [CONTRA] varchar(100)  NULL,
    [TIPOUSUARIO] char(1)  NULL,
    [IID] int  NULL,
    [IIDROL] int  NULL,
    [bhabilitado] int  NULL
);
GO

-- Creating table 'VENTA'
CREATE TABLE [dbo].[VENTA] (
    [IIDVENTA] int IDENTITY(1,1) NOT NULL,
    [IIDCLIENTE] int  NULL,
    [TOTAL] decimal(18,2)  NULL,
    [FECHAVENTA] datetime  NULL,
    [BHABILITADO] int  NULL
);
GO

-- Creating table 'Viaje'
CREATE TABLE [dbo].[Viaje] (
    [IIDVIAJE] int IDENTITY(1,1) NOT NULL,
    [IIDLUGARORIGEN] int  NULL,
    [IIDLUGARDESTINO] int  NULL,
    [PRECIO] decimal(18,2)  NULL,
    [FECHAVIAJE] datetime  NULL,
    [IIDBUS] int  NULL,
    [NUMEROASIENTOSDISPONIBLES] int  NULL,
    [BHABILITADO] int  NULL,
    [FOTO] varbinary(max)  NULL,
    [nombrefoto] varchar(100)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [IIDASIENTO] in table 'Asiento'
ALTER TABLE [dbo].[Asiento]
ADD CONSTRAINT [PK_Asiento]
    PRIMARY KEY CLUSTERED ([IIDASIENTO] ASC);
GO

-- Creating primary key on [IIDBUS] in table 'Bus'
ALTER TABLE [dbo].[Bus]
ADD CONSTRAINT [PK_Bus]
    PRIMARY KEY CLUSTERED ([IIDBUS] ASC);
GO

-- Creating primary key on [IIDCLIENTE] in table 'Cliente'
ALTER TABLE [dbo].[Cliente]
ADD CONSTRAINT [PK_Cliente]
    PRIMARY KEY CLUSTERED ([IIDCLIENTE] ASC);
GO

-- Creating primary key on [IIDETALLEVENTA] in table 'DETALLEVENTA'
ALTER TABLE [dbo].[DETALLEVENTA]
ADD CONSTRAINT [PK_DETALLEVENTA]
    PRIMARY KEY CLUSTERED ([IIDETALLEVENTA] ASC);
GO

-- Creating primary key on [IIDEMPLEADO] in table 'Empleado'
ALTER TABLE [dbo].[Empleado]
ADD CONSTRAINT [PK_Empleado]
    PRIMARY KEY CLUSTERED ([IIDEMPLEADO] ASC);
GO

-- Creating primary key on [IIDLUGAR] in table 'Lugar'
ALTER TABLE [dbo].[Lugar]
ADD CONSTRAINT [PK_Lugar]
    PRIMARY KEY CLUSTERED ([IIDLUGAR] ASC);
GO

-- Creating primary key on [IIDMARCA] in table 'Marca'
ALTER TABLE [dbo].[Marca]
ADD CONSTRAINT [PK_Marca]
    PRIMARY KEY CLUSTERED ([IIDMARCA] ASC);
GO

-- Creating primary key on [IIDMODELO] in table 'Modelo'
ALTER TABLE [dbo].[Modelo]
ADD CONSTRAINT [PK_Modelo]
    PRIMARY KEY CLUSTERED ([IIDMODELO] ASC);
GO

-- Creating primary key on [IIDPAGINA] in table 'Pagina'
ALTER TABLE [dbo].[Pagina]
ADD CONSTRAINT [PK_Pagina]
    PRIMARY KEY CLUSTERED ([IIDPAGINA] ASC);
GO

-- Creating primary key on [IIDROL] in table 'Rol'
ALTER TABLE [dbo].[Rol]
ADD CONSTRAINT [PK_Rol]
    PRIMARY KEY CLUSTERED ([IIDROL] ASC);
GO

-- Creating primary key on [IIDROLPAGINA] in table 'RolPagina'
ALTER TABLE [dbo].[RolPagina]
ADD CONSTRAINT [PK_RolPagina]
    PRIMARY KEY CLUSTERED ([IIDROLPAGINA] ASC);
GO

-- Creating primary key on [IIDSEXO] in table 'Sexo'
ALTER TABLE [dbo].[Sexo]
ADD CONSTRAINT [PK_Sexo]
    PRIMARY KEY CLUSTERED ([IIDSEXO] ASC);
GO

-- Creating primary key on [IIDSUCURSAL] in table 'Sucursal'
ALTER TABLE [dbo].[Sucursal]
ADD CONSTRAINT [PK_Sucursal]
    PRIMARY KEY CLUSTERED ([IIDSUCURSAL] ASC);
GO

-- Creating primary key on [IIDTIPOBUS] in table 'TipoBus'
ALTER TABLE [dbo].[TipoBus]
ADD CONSTRAINT [PK_TipoBus]
    PRIMARY KEY CLUSTERED ([IIDTIPOBUS] ASC);
GO

-- Creating primary key on [IIDTIPOCONTRATO] in table 'TipoContrato'
ALTER TABLE [dbo].[TipoContrato]
ADD CONSTRAINT [PK_TipoContrato]
    PRIMARY KEY CLUSTERED ([IIDTIPOCONTRATO] ASC);
GO

-- Creating primary key on [IIDTIPOUSUARIO] in table 'TipoUsuario'
ALTER TABLE [dbo].[TipoUsuario]
ADD CONSTRAINT [PK_TipoUsuario]
    PRIMARY KEY CLUSTERED ([IIDTIPOUSUARIO] ASC);
GO

-- Creating primary key on [TIPOUSUARIO] in table 'TIPOUSUARIOREGISTRO'
ALTER TABLE [dbo].[TIPOUSUARIOREGISTRO]
ADD CONSTRAINT [PK_TIPOUSUARIOREGISTRO]
    PRIMARY KEY CLUSTERED ([TIPOUSUARIO] ASC);
GO

-- Creating primary key on [IIDUSUARIO] in table 'Usuario'
ALTER TABLE [dbo].[Usuario]
ADD CONSTRAINT [PK_Usuario]
    PRIMARY KEY CLUSTERED ([IIDUSUARIO] ASC);
GO

-- Creating primary key on [IIDVENTA] in table 'VENTA'
ALTER TABLE [dbo].[VENTA]
ADD CONSTRAINT [PK_VENTA]
    PRIMARY KEY CLUSTERED ([IIDVENTA] ASC);
GO

-- Creating primary key on [IIDVIAJE] in table 'Viaje'
ALTER TABLE [dbo].[Viaje]
ADD CONSTRAINT [PK_Viaje]
    PRIMARY KEY CLUSTERED ([IIDVIAJE] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [IIDVIAJE] in table 'Asiento'
ALTER TABLE [dbo].[Asiento]
ADD CONSTRAINT [FK__Asiento__IIDVIAJ__412EB0B6]
    FOREIGN KEY ([IIDVIAJE])
    REFERENCES [dbo].[Viaje]
        ([IIDVIAJE])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Asiento__IIDVIAJ__412EB0B6'
CREATE INDEX [IX_FK__Asiento__IIDVIAJ__412EB0B6]
ON [dbo].[Asiento]
    ([IIDVIAJE]);
GO

-- Creating foreign key on [IIDMARCA] in table 'Bus'
ALTER TABLE [dbo].[Bus]
ADD CONSTRAINT [FK__Bus__IIDMARCA__36B12243]
    FOREIGN KEY ([IIDMARCA])
    REFERENCES [dbo].[Marca]
        ([IIDMARCA])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Bus__IIDMARCA__36B12243'
CREATE INDEX [IX_FK__Bus__IIDMARCA__36B12243]
ON [dbo].[Bus]
    ([IIDMARCA]);
GO

-- Creating foreign key on [IIDMODELO] in table 'Bus'
ALTER TABLE [dbo].[Bus]
ADD CONSTRAINT [FK__Bus__IIDMODELO__276EDEB3]
    FOREIGN KEY ([IIDMODELO])
    REFERENCES [dbo].[Modelo]
        ([IIDMODELO])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Bus__IIDMODELO__276EDEB3'
CREATE INDEX [IX_FK__Bus__IIDMODELO__276EDEB3]
ON [dbo].[Bus]
    ([IIDMODELO]);
GO

-- Creating foreign key on [IIDSUCURSAL] in table 'Bus'
ALTER TABLE [dbo].[Bus]
ADD CONSTRAINT [FK__Bus__IIDSUCURSAL__25869641]
    FOREIGN KEY ([IIDSUCURSAL])
    REFERENCES [dbo].[Sucursal]
        ([IIDSUCURSAL])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Bus__IIDSUCURSAL__25869641'
CREATE INDEX [IX_FK__Bus__IIDSUCURSAL__25869641]
ON [dbo].[Bus]
    ([IIDSUCURSAL]);
GO

-- Creating foreign key on [IIDTIPOBUS] in table 'Bus'
ALTER TABLE [dbo].[Bus]
ADD CONSTRAINT [FK__Bus__IIDTIPOBUS__267ABA7A]
    FOREIGN KEY ([IIDTIPOBUS])
    REFERENCES [dbo].[TipoBus]
        ([IIDTIPOBUS])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Bus__IIDTIPOBUS__267ABA7A'
CREATE INDEX [IX_FK__Bus__IIDTIPOBUS__267ABA7A]
ON [dbo].[Bus]
    ([IIDTIPOBUS]);
GO

-- Creating foreign key on [IIDBUS] in table 'DETALLEVENTA'
ALTER TABLE [dbo].[DETALLEVENTA]
ADD CONSTRAINT [FK__DETALLEVE__IIDBU__6C190EBB]
    FOREIGN KEY ([IIDBUS])
    REFERENCES [dbo].[Bus]
        ([IIDBUS])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__DETALLEVE__IIDBU__6C190EBB'
CREATE INDEX [IX_FK__DETALLEVE__IIDBU__6C190EBB]
ON [dbo].[DETALLEVENTA]
    ([IIDBUS]);
GO

-- Creating foreign key on [IIDBUS] in table 'Viaje'
ALTER TABLE [dbo].[Viaje]
ADD CONSTRAINT [FK__Viaje__IIDBUS__3C69FB99]
    FOREIGN KEY ([IIDBUS])
    REFERENCES [dbo].[Bus]
        ([IIDBUS])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Viaje__IIDBUS__3C69FB99'
CREATE INDEX [IX_FK__Viaje__IIDBUS__3C69FB99]
ON [dbo].[Viaje]
    ([IIDBUS]);
GO

-- Creating foreign key on [IIDSEXO] in table 'Cliente'
ALTER TABLE [dbo].[Cliente]
ADD CONSTRAINT [FK__Cliente__IIDSEXO__286302EC]
    FOREIGN KEY ([IIDSEXO])
    REFERENCES [dbo].[Sexo]
        ([IIDSEXO])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Cliente__IIDSEXO__286302EC'
CREATE INDEX [IX_FK__Cliente__IIDSEXO__286302EC]
ON [dbo].[Cliente]
    ([IIDSEXO]);
GO

-- Creating foreign key on [TIPOUSUARIO] in table 'Cliente'
ALTER TABLE [dbo].[Cliente]
ADD CONSTRAINT [FK__Cliente__TIPOUSU__04E4BC85]
    FOREIGN KEY ([TIPOUSUARIO])
    REFERENCES [dbo].[TIPOUSUARIOREGISTRO]
        ([TIPOUSUARIO])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Cliente__TIPOUSU__04E4BC85'
CREATE INDEX [IX_FK__Cliente__TIPOUSU__04E4BC85]
ON [dbo].[Cliente]
    ([TIPOUSUARIO]);
GO

-- Creating foreign key on [IIDCLIENTE] in table 'VENTA'
ALTER TABLE [dbo].[VENTA]
ADD CONSTRAINT [FK__VENTA__IIDCLIENT__6754599E]
    FOREIGN KEY ([IIDCLIENTE])
    REFERENCES [dbo].[Cliente]
        ([IIDCLIENTE])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__VENTA__IIDCLIENT__6754599E'
CREATE INDEX [IX_FK__VENTA__IIDCLIENT__6754599E]
ON [dbo].[VENTA]
    ([IIDCLIENTE]);
GO

-- Creating foreign key on [IIDVENTA] in table 'DETALLEVENTA'
ALTER TABLE [dbo].[DETALLEVENTA]
ADD CONSTRAINT [FK__DETALLEVE__IIDVE__6A30C649]
    FOREIGN KEY ([IIDVENTA])
    REFERENCES [dbo].[VENTA]
        ([IIDVENTA])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__DETALLEVE__IIDVE__6A30C649'
CREATE INDEX [IX_FK__DETALLEVE__IIDVE__6A30C649]
ON [dbo].[DETALLEVENTA]
    ([IIDVENTA]);
GO

-- Creating foreign key on [IIDVIAJE] in table 'DETALLEVENTA'
ALTER TABLE [dbo].[DETALLEVENTA]
ADD CONSTRAINT [FK__DETALLEVE__IIDVI__6B24EA82]
    FOREIGN KEY ([IIDVIAJE])
    REFERENCES [dbo].[Viaje]
        ([IIDVIAJE])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__DETALLEVE__IIDVI__6B24EA82'
CREATE INDEX [IX_FK__DETALLEVE__IIDVI__6B24EA82]
ON [dbo].[DETALLEVENTA]
    ([IIDVIAJE]);
GO

-- Creating foreign key on [IIDSEXO] in table 'Empleado'
ALTER TABLE [dbo].[Empleado]
ADD CONSTRAINT [FK__Empleado__IIDSEX__2B3F6F97]
    FOREIGN KEY ([IIDSEXO])
    REFERENCES [dbo].[Sexo]
        ([IIDSEXO])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Empleado__IIDSEX__2B3F6F97'
CREATE INDEX [IX_FK__Empleado__IIDSEX__2B3F6F97]
ON [dbo].[Empleado]
    ([IIDSEXO]);
GO

-- Creating foreign key on [IIDTIPOUSUARIO] in table 'Empleado'
ALTER TABLE [dbo].[Empleado]
ADD CONSTRAINT [FK__Empleado__IIDTIP__29572725]
    FOREIGN KEY ([IIDTIPOUSUARIO])
    REFERENCES [dbo].[TipoUsuario]
        ([IIDTIPOUSUARIO])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Empleado__IIDTIP__29572725'
CREATE INDEX [IX_FK__Empleado__IIDTIP__29572725]
ON [dbo].[Empleado]
    ([IIDTIPOUSUARIO]);
GO

-- Creating foreign key on [IIDTIPOCONTRATO] in table 'Empleado'
ALTER TABLE [dbo].[Empleado]
ADD CONSTRAINT [FK__Empleado__IIDTIP__2A4B4B5E]
    FOREIGN KEY ([IIDTIPOCONTRATO])
    REFERENCES [dbo].[TipoContrato]
        ([IIDTIPOCONTRATO])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Empleado__IIDTIP__2A4B4B5E'
CREATE INDEX [IX_FK__Empleado__IIDTIP__2A4B4B5E]
ON [dbo].[Empleado]
    ([IIDTIPOCONTRATO]);
GO

-- Creating foreign key on [TIPOUSUARIO] in table 'Empleado'
ALTER TABLE [dbo].[Empleado]
ADD CONSTRAINT [FK__Empleado__TIPOUS__05D8E0BE]
    FOREIGN KEY ([TIPOUSUARIO])
    REFERENCES [dbo].[TIPOUSUARIOREGISTRO]
        ([TIPOUSUARIO])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Empleado__TIPOUS__05D8E0BE'
CREATE INDEX [IX_FK__Empleado__TIPOUS__05D8E0BE]
ON [dbo].[Empleado]
    ([TIPOUSUARIO]);
GO

-- Creating foreign key on [IIDLUGARDESTINO] in table 'Viaje'
ALTER TABLE [dbo].[Viaje]
ADD CONSTRAINT [FK__Viaje__IIDLUGARD__3A81B327]
    FOREIGN KEY ([IIDLUGARDESTINO])
    REFERENCES [dbo].[Lugar]
        ([IIDLUGAR])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Viaje__IIDLUGARD__3A81B327'
CREATE INDEX [IX_FK__Viaje__IIDLUGARD__3A81B327]
ON [dbo].[Viaje]
    ([IIDLUGARDESTINO]);
GO

-- Creating foreign key on [IIDLUGARORIGEN] in table 'Viaje'
ALTER TABLE [dbo].[Viaje]
ADD CONSTRAINT [FK__Viaje__IIDLUGARO__398D8EEE]
    FOREIGN KEY ([IIDLUGARORIGEN])
    REFERENCES [dbo].[Lugar]
        ([IIDLUGAR])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Viaje__IIDLUGARO__398D8EEE'
CREATE INDEX [IX_FK__Viaje__IIDLUGARO__398D8EEE]
ON [dbo].[Viaje]
    ([IIDLUGARORIGEN]);
GO

-- Creating foreign key on [IIDPAGINA] in table 'RolPagina'
ALTER TABLE [dbo].[RolPagina]
ADD CONSTRAINT [FK__RolPagina__IIDPA__6477ECF3]
    FOREIGN KEY ([IIDPAGINA])
    REFERENCES [dbo].[Pagina]
        ([IIDPAGINA])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__RolPagina__IIDPA__6477ECF3'
CREATE INDEX [IX_FK__RolPagina__IIDPA__6477ECF3]
ON [dbo].[RolPagina]
    ([IIDPAGINA]);
GO

-- Creating foreign key on [IIDROL] in table 'RolPagina'
ALTER TABLE [dbo].[RolPagina]
ADD CONSTRAINT [FK__RolPagina__IIDRO__6383C8BA]
    FOREIGN KEY ([IIDROL])
    REFERENCES [dbo].[Rol]
        ([IIDROL])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__RolPagina__IIDRO__6383C8BA'
CREATE INDEX [IX_FK__RolPagina__IIDRO__6383C8BA]
ON [dbo].[RolPagina]
    ([IIDROL]);
GO

-- Creating foreign key on [IIDROL] in table 'Usuario'
ALTER TABLE [dbo].[Usuario]
ADD CONSTRAINT [FK__Usuario__IIDROL__5EBF139D]
    FOREIGN KEY ([IIDROL])
    REFERENCES [dbo].[Rol]
        ([IIDROL])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Usuario__IIDROL__5EBF139D'
CREATE INDEX [IX_FK__Usuario__IIDROL__5EBF139D]
ON [dbo].[Usuario]
    ([IIDROL]);
GO

-- Creating foreign key on [TIPOUSUARIO] in table 'Usuario'
ALTER TABLE [dbo].[Usuario]
ADD CONSTRAINT [FK__Usuario__TIPOUSU__02084FDA]
    FOREIGN KEY ([TIPOUSUARIO])
    REFERENCES [dbo].[TIPOUSUARIOREGISTRO]
        ([TIPOUSUARIO])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Usuario__TIPOUSU__02084FDA'
CREATE INDEX [IX_FK__Usuario__TIPOUSU__02084FDA]
ON [dbo].[Usuario]
    ([TIPOUSUARIO]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------