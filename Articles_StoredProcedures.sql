USE [KAB]
GO
/****** Object:  StoredProcedure [dbo].[CreateArticle]    Script Date: 2017-03-24 16:44:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateArticle]

@ArticleName nvarchar(50),
@ArticlePrice money,
@ArticleCategory nvarchar(50),
@ArticleDescription nvarchar(max),
@IsActive bit,
@IsInStock bit,	
@ArticleID int output

AS

INSERT INTO Article (ArticleName, ArticlePrice, ArticleCategory, ArticleDescription, IsActive, IsInStock) VALUES (@ArticleName, @ArticlePrice, @ArticleCategory, @ArticleDescription, @IsActive, @IsInStock)

SET @ArticleID = SCOPE_IDENTITY()


GO
/****** Object:  StoredProcedure [dbo].[UpdateArticle]    Script Date: 2017-03-24 16:44:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateArticle]

@ArticleID int,
@ArticleName nvarchar(50),
@ArticlePrice money,
@ArticleCategory nvarchar(50),
@ArticleDescription nvarchar(max),
@IsActive bit,
@IsInStock bit

AS

UPDATE Article

set 
ArticleName = @ArticleName, 
ArticlePrice =  @ArticlePrice, 
ArticleCategory =  @ArticleCategory, 
ArticleDescription =  @ArticleDescription, 
IsActive = @IsActive, 
IsInStock = @IsInStock

where ArticleID = @ArticleID;


GO
