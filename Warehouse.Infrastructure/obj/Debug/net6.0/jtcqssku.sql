BEGIN TRANSACTION;
GO

CREATE TABLE [Categories] (
    [Id] uniqueidentifier NOT NULL,
    [Label] nvarchar(100) NOT NULL,
    [Description] nvarchar(500) NULL,
    [DateFrom] date NOT NULL,
    [DateTo] date NULL,
    CONSTRAINT [PK_Categories] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [Items] (
    [Id] uniqueidentifier NOT NULL,
    [Label] nvarchar(100) NOT NULL,
    [Description] nvarchar(500) NULL,
    [DateFrom] date NOT NULL,
    [DateTo] date NULL,
    [CategoryID] uniqueidentifier NOT NULL,
    CONSTRAINT [PK_Items] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Items_Categories_CategoryID] FOREIGN KEY ([CategoryID]) REFERENCES [Categories] ([Id]) ON DELETE CASCADE
);
GO

CREATE INDEX [IX_Items_CategoryID] ON [Items] ([CategoryID]);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20230124104852_ItemsAndCategories', N'6.0.12');
GO

COMMIT;
GO

