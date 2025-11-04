USE sdabg2;
GO

DECLARE @sql NVARCHAR(MAX) = N'';

SELECT @sql = @sql + 
    'PRINT ''===== ' + TABLE_NAME + ' ====='';' + CHAR(13) +
    'SELECT * FROM [' + TABLE_NAME + '];' + CHAR(13) + CHAR(13)
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE'
ORDER BY TABLE_NAME;

EXEC sp_executesql @sql;