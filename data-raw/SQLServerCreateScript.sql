USE [nvcs]
GO
/****** Object:  Table [dbo].[d_classif_confidence]    Script Date: 2/17/2016 10:50:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[d_classif_confidence](
	[D_CLASSIF_CONFIDENCE_ID] [int] NOT NULL,
	[CLASSIF_CONFIDENCE_DESC] [varchar](25) NOT NULL,
	[DISPLAY_ORDER] [int] NOT NULL,
	[STATUS] [varchar](25) NOT NULL,
 CONSTRAINT [d_classif_confidence_pk] PRIMARY KEY CLUSTERED 
(
	[D_CLASSIF_CONFIDENCE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[d_classification_level]    Script Date: 2/17/2016 10:50:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[d_classification_level](
	[D_CLASSIFICATION_LEVEL_ID] [int] NOT NULL,
	[CLASSIFICATION_LEVEL_NAME] [varchar](25) NOT NULL,
	[DISPLAY_ORDER] [int] NOT NULL,
	[parent_level_id] [int] NULL,
 CONSTRAINT [d_classification_level_pk] PRIMARY KEY CLUSTERED 
(
	[D_CLASSIFICATION_LEVEL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[d_curr_presence_absence]    Script Date: 2/17/2016 10:50:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[d_curr_presence_absence](
	[D_CURR_PRESENCE_ABSENCE_ID] [smallint] NOT NULL,
	[CURR_PRESENCE_ABSENCE_DESC] [varchar](50) NULL,
	[CURR_PRESENCE_ABSENCE_CD] [varchar](10) NULL,
 CONSTRAINT [d_curr_presence_absence_pk] PRIMARY KEY CLUSTERED 
(
	[D_CURR_PRESENCE_ABSENCE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[d_dist_confidence]    Script Date: 2/17/2016 10:50:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[d_dist_confidence](
	[D_DIST_CONFIDENCE_ID] [smallint] NOT NULL,
	[DIST_CONFIDENCE_CD] [varchar](10) NULL,
	[DIST_CONFIDENCE_DESC] [varchar](40) NULL,
 CONSTRAINT [d_dist_confidence_pk] PRIMARY KEY CLUSTERED 
(
	[D_DIST_CONFIDENCE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[d_occurrence_status]    Script Date: 2/17/2016 10:50:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[d_occurrence_status](
	[D_OCCURRENCE_STATUS_ID] [smallint] NOT NULL,
	[OCCURRENCE_STATUS_CD] [varchar](10) NULL,
	[OCCURRENCE_STATUS_DESC] [varchar](50) NULL,
 CONSTRAINT [d_occurrence_status_pk] PRIMARY KEY CLUSTERED 
(
	[D_OCCURRENCE_STATUS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[d_subnation]    Script Date: 2/17/2016 10:50:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[d_subnation](
	[SUBNATION_ID] [smallint] NOT NULL,
	[ISO_NATION_CD] [varchar](10) NULL,
	[SUBNATION_CODE] [varchar](10) NULL,
	[SUBNATION_NAME] [varchar](50) NULL,
 CONSTRAINT [d_subnation_pk] PRIMARY KEY CLUSTERED 
(
	[SUBNATION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[d_usfs_ecoregion]    Script Date: 2/17/2016 10:50:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[d_usfs_ecoregion](
	[USFS_ECOREGION_ID] [smallint] NOT NULL,
	[PARENT_USFS_ECOREGION_ID] [smallint] NULL,
	[D_USFS_ECOREGION_LEVEL_ID] [smallint] NULL,
	[USFS_ECOREGION_NAME] [varchar](150) NULL,
	[USFS_ECOREGION_CLASS_CD] [varchar](10) NULL,
	[USFS_ECOREGION_CONCAT_CD] [varchar](10) NULL,
 CONSTRAINT [d_usfs_ecoregion_pk] PRIMARY KEY CLUSTERED 
(
	[USFS_ECOREGION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[d_usfs_ecoregion_level]    Script Date: 2/17/2016 10:50:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[d_usfs_ecoregion_level](
	[D_USFS_ECOREGION_LEVEL_ID] [smallint] NOT NULL,
	[USFS_ECOREGION_LEVEL_DESC] [varchar](20) NULL,
	[PARENT_LEVEL_ID] [smallint] NULL,
 CONSTRAINT [d_usfs_ecoregion_level_pk] PRIMARY KEY CLUSTERED 
(
	[D_USFS_ECOREGION_LEVEL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[d_usfs_ecoregion2007]    Script Date: 2/17/2016 10:50:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[d_usfs_ecoregion2007](
	[USFS_ECOREGION_ID] [smallint] NOT NULL,
	[PARENT_USFS_ECOREGION_ID] [smallint] NULL,
	[D_USFS_ECOREGION_LEVEL_ID] [smallint] NULL,
	[USFS_ECOREGION_NAME] [varchar](150) NULL,
	[USFS_ECOREGION_CONCAT_CD] [varchar](10) NULL,
 CONSTRAINT [d_usfs_ecoregion2007_pk] PRIMARY KEY CLUSTERED 
(
	[USFS_ECOREGION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Reference]    Script Date: 2/17/2016 10:50:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Reference](
	[REFERENCE_ID] [int] NOT NULL,
	[SHORTCITATION] [varchar](100) NULL,
	[FULLCITATION] [varchar](1000) NULL,
 CONSTRAINT [reference_pk] PRIMARY KEY CLUSTERED 
(
	[REFERENCE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 2/17/2016 10:50:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Unit](
	[ELEMENT_GLOBAL_ID] [int] NOT NULL,
	[PARENT_ID] [int] NULL,
	[D_CLASSIFICATION_LEVEL_ID] [int] NULL,
	[elementUID] [real] NULL,
	[classificationCode] [varchar](20) NULL,
	[databaseCode] [varchar](20) NULL,
	[Status] [varchar](25) NULL,
	[colloquialName] [varchar](200) NULL,
	[scientificName] [varchar](300) NULL,
	[formattedScientificName] [varchar](300) NULL,
	[translatedName] [varchar](200) NULL,
	[hierarchyLevel] [varchar](40) NULL,
	[unitSort] [varchar](300) NULL,
	[USstatus] [varchar](10) NULL,
	[sortHierarchy] [varchar](300) NULL,
 CONSTRAINT [unit_pk] PRIMARY KEY CLUSTERED 
(
	[ELEMENT_GLOBAL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UnitDescription]    Script Date: 2/17/2016 10:50:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UnitDescription](
	[ELEMENT_GLOBAL_ID] [int] NOT NULL,
	[parentKey] [varchar](10) NULL,
	[parentName] [varchar](150) NULL,
	[typeConceptSentence] [varchar](1500) NULL,
	[typeConcept] [varchar](8000) NULL,
	[classificationComments] [varchar](8000) NULL,
	[similarNVCtypesComments] [varchar](2000) NULL,
	[diagnosticCharacteristics] [varchar](2500) NULL,
	[Rationale] [varchar](2000) NULL,
	[Physiognomy] [varchar](3000) NULL,
	[Floristics] [varchar](8000) NULL,
	[Dynamics] [text] NULL,
	[Environment] [varchar](8000) NULL,
	[Analysis] [varchar](1500) NULL,
	[Range] [varchar](2500) NULL,
	[spatialPattern] [varchar](50) NULL,
	[Nations] [varchar](200) NULL,
	[Subnations] [varchar](300) NULL,
	[federalLands] [varchar](1500) NULL,
	[tncEcoregions] [varchar](400) NULL,
	[usfsEcoregions] [varchar](3500) NULL,
	[omernikEcoregions] [varchar](1000) NULL,
	[classif_confidence_id] [int] NULL,
	[confidenceComments] [varchar](3000) NULL,
	[Synonymy] [varchar](8000) NULL,
	[primaryConceptSource] [varchar](200) NULL,
	[descriptionAuthor] [varchar](150) NULL,
	[Acknowledgements] [varchar](400) NULL,
	[versionDate] [datetime] NULL,
 CONSTRAINT [UnitDescription_pk] PRIMARY KEY CLUSTERED 
(
	[ELEMENT_GLOBAL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UnitXEcoregionEPA]    Script Date: 2/17/2016 10:50:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UnitXEcoregionEPA](
	[US_L4CODE] [varchar](50) NULL,
	[MG_Code] [varchar](50) NULL,
	[DataConfidence] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UnitXEcoregionUsfs]    Script Date: 2/17/2016 10:50:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnitXEcoregionUsfs](
	[ELEMENT_GLOBAL_ID] [int] NOT NULL,
	[USFS_ECOREGION_ID] [smallint] NOT NULL,
	[D_OCCURRENCE_STATUS_ID] [smallint] NULL,
 CONSTRAINT [UnitXEcoregionUsfs_pk] PRIMARY KEY CLUSTERED 
(
	[ELEMENT_GLOBAL_ID] ASC,
	[USFS_ECOREGION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UnitXEcoregionUsfs2007]    Script Date: 2/17/2016 10:50:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnitXEcoregionUsfs2007](
	[ELEMENT_GLOBAL_ID] [int] NOT NULL,
	[USFS_ECOREGION_ID] [smallint] NOT NULL,
	[D_OCCURRENCE_STATUS_ID] [smallint] NULL,
 CONSTRAINT [UnitXEcoregionUsfs2007_pk] PRIMARY KEY CLUSTERED 
(
	[ELEMENT_GLOBAL_ID] ASC,
	[USFS_ECOREGION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UnitXReference]    Script Date: 2/17/2016 10:50:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnitXReference](
	[ELEMENT_GLOBAL_ID] [int] NOT NULL,
	[REFERENCE_ID] [int] NOT NULL,
 CONSTRAINT [UnitXReference_pk] PRIMARY KEY CLUSTERED 
(
	[ELEMENT_GLOBAL_ID] ASC,
	[REFERENCE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UnitXSimilarUnit]    Script Date: 2/17/2016 10:50:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UnitXSimilarUnit](
	[ELEMENT_GLOBAL_ID] [int] NOT NULL,
	[SIMGLOBAL_ID] [int] NOT NULL,
	[SIMNOTE] [varchar](2000) NULL,
 CONSTRAINT [UnitXSimilarUnit_pk] PRIMARY KEY CLUSTERED 
(
	[ELEMENT_GLOBAL_ID] ASC,
	[SIMGLOBAL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UnitXSubnation]    Script Date: 2/17/2016 10:50:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnitXSubnation](
	[ELEMENT_GLOBAL_ID] [int] NOT NULL,
	[SUBNATION_ID] [smallint] NOT NULL,
	[D_CURR_PRESENCE_ABSENCE_ID] [smallint] NULL,
	[D_DIST_CONFIDENCE_ID] [smallint] NULL,
 CONSTRAINT [UnitXSubnation_pk] PRIMARY KEY CLUSTERED 
(
	[ELEMENT_GLOBAL_ID] ASC,
	[SUBNATION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[d_classification_level]  WITH CHECK ADD  CONSTRAINT [d_classification_level_parent_fk] FOREIGN KEY([parent_level_id])
REFERENCES [dbo].[d_classification_level] ([D_CLASSIFICATION_LEVEL_ID])
GO
ALTER TABLE [dbo].[d_classification_level] CHECK CONSTRAINT [d_classification_level_parent_fk]
GO
ALTER TABLE [dbo].[d_usfs_ecoregion]  WITH CHECK ADD  CONSTRAINT [d_usfs_ecoregion_level_fk] FOREIGN KEY([D_USFS_ECOREGION_LEVEL_ID])
REFERENCES [dbo].[d_usfs_ecoregion_level] ([D_USFS_ECOREGION_LEVEL_ID])
GO
ALTER TABLE [dbo].[d_usfs_ecoregion] CHECK CONSTRAINT [d_usfs_ecoregion_level_fk]
GO
ALTER TABLE [dbo].[d_usfs_ecoregion]  WITH CHECK ADD  CONSTRAINT [d_usfs_ecoregion_parent_fk] FOREIGN KEY([PARENT_USFS_ECOREGION_ID])
REFERENCES [dbo].[d_usfs_ecoregion] ([USFS_ECOREGION_ID])
GO
ALTER TABLE [dbo].[d_usfs_ecoregion] CHECK CONSTRAINT [d_usfs_ecoregion_parent_fk]
GO
ALTER TABLE [dbo].[Unit]  WITH NOCHECK ADD  CONSTRAINT [unit_classification_level_fk] FOREIGN KEY([D_CLASSIFICATION_LEVEL_ID])
REFERENCES [dbo].[d_classification_level] ([D_CLASSIFICATION_LEVEL_ID])
GO
ALTER TABLE [dbo].[Unit] CHECK CONSTRAINT [unit_classification_level_fk]
GO
ALTER TABLE [dbo].[Unit]  WITH NOCHECK ADD  CONSTRAINT [unit_parent_fk] FOREIGN KEY([PARENT_ID])
REFERENCES [dbo].[Unit] ([ELEMENT_GLOBAL_ID])
GO
ALTER TABLE [dbo].[Unit] CHECK CONSTRAINT [unit_parent_fk]
GO
ALTER TABLE [dbo].[UnitDescription]  WITH NOCHECK ADD  CONSTRAINT [UnitDescription_classif_confidence_fk] FOREIGN KEY([classif_confidence_id])
REFERENCES [dbo].[d_classif_confidence] ([D_CLASSIF_CONFIDENCE_ID])
GO
ALTER TABLE [dbo].[UnitDescription] CHECK CONSTRAINT [UnitDescription_classif_confidence_fk]
GO
ALTER TABLE [dbo].[UnitDescription]  WITH NOCHECK ADD  CONSTRAINT [UnitDescription_id_fk] FOREIGN KEY([ELEMENT_GLOBAL_ID])
REFERENCES [dbo].[Unit] ([ELEMENT_GLOBAL_ID])
GO
ALTER TABLE [dbo].[UnitDescription] CHECK CONSTRAINT [UnitDescription_id_fk]
GO
ALTER TABLE [dbo].[UnitXEcoregionUsfs]  WITH NOCHECK ADD  CONSTRAINT [UnitXEcoregionUsfs_ecoregion_fk] FOREIGN KEY([USFS_ECOREGION_ID])
REFERENCES [dbo].[d_usfs_ecoregion] ([USFS_ECOREGION_ID])
GO
ALTER TABLE [dbo].[UnitXEcoregionUsfs] CHECK CONSTRAINT [UnitXEcoregionUsfs_ecoregion_fk]
GO
ALTER TABLE [dbo].[UnitXEcoregionUsfs]  WITH NOCHECK ADD  CONSTRAINT [UnitXEcoregionUsfs_id_fk] FOREIGN KEY([ELEMENT_GLOBAL_ID])
REFERENCES [dbo].[Unit] ([ELEMENT_GLOBAL_ID])
GO
ALTER TABLE [dbo].[UnitXEcoregionUsfs] CHECK CONSTRAINT [UnitXEcoregionUsfs_id_fk]
GO
ALTER TABLE [dbo].[UnitXEcoregionUsfs]  WITH NOCHECK ADD  CONSTRAINT [UnitXEcoregionUsfs_occ_status_fk] FOREIGN KEY([D_OCCURRENCE_STATUS_ID])
REFERENCES [dbo].[d_occurrence_status] ([D_OCCURRENCE_STATUS_ID])
GO
ALTER TABLE [dbo].[UnitXEcoregionUsfs] CHECK CONSTRAINT [UnitXEcoregionUsfs_occ_status_fk]
GO
ALTER TABLE [dbo].[UnitXReference]  WITH NOCHECK ADD  CONSTRAINT [UnitXReference_id_fk] FOREIGN KEY([ELEMENT_GLOBAL_ID])
REFERENCES [dbo].[Unit] ([ELEMENT_GLOBAL_ID])
GO
ALTER TABLE [dbo].[UnitXReference] CHECK CONSTRAINT [UnitXReference_id_fk]
GO
ALTER TABLE [dbo].[UnitXReference]  WITH NOCHECK ADD  CONSTRAINT [UnitXReference_ref_id_fk] FOREIGN KEY([REFERENCE_ID])
REFERENCES [dbo].[Reference] ([REFERENCE_ID])
GO
ALTER TABLE [dbo].[UnitXReference] CHECK CONSTRAINT [UnitXReference_ref_id_fk]
GO
ALTER TABLE [dbo].[UnitXSimilarUnit]  WITH NOCHECK ADD  CONSTRAINT [UnitXSimilarUnit_id_fk] FOREIGN KEY([ELEMENT_GLOBAL_ID])
REFERENCES [dbo].[Unit] ([ELEMENT_GLOBAL_ID])
GO
ALTER TABLE [dbo].[UnitXSimilarUnit] CHECK CONSTRAINT [UnitXSimilarUnit_id_fk]
GO
ALTER TABLE [dbo].[UnitXSubnation]  WITH NOCHECK ADD  CONSTRAINT [UnitXSubnation_conf_id_fk] FOREIGN KEY([D_DIST_CONFIDENCE_ID])
REFERENCES [dbo].[d_dist_confidence] ([D_DIST_CONFIDENCE_ID])
GO
ALTER TABLE [dbo].[UnitXSubnation] CHECK CONSTRAINT [UnitXSubnation_conf_id_fk]
GO
ALTER TABLE [dbo].[UnitXSubnation]  WITH NOCHECK ADD  CONSTRAINT [UnitXSubnation_id_fk] FOREIGN KEY([ELEMENT_GLOBAL_ID])
REFERENCES [dbo].[Unit] ([ELEMENT_GLOBAL_ID])
GO
ALTER TABLE [dbo].[UnitXSubnation] CHECK CONSTRAINT [UnitXSubnation_id_fk]
GO
ALTER TABLE [dbo].[UnitXSubnation]  WITH NOCHECK ADD  CONSTRAINT [UnitXSubnation_pres_id_fk] FOREIGN KEY([D_CURR_PRESENCE_ABSENCE_ID])
REFERENCES [dbo].[d_curr_presence_absence] ([D_CURR_PRESENCE_ABSENCE_ID])
GO
ALTER TABLE [dbo].[UnitXSubnation] CHECK CONSTRAINT [UnitXSubnation_pres_id_fk]
GO
ALTER TABLE [dbo].[UnitXSubnation]  WITH NOCHECK ADD  CONSTRAINT [UnitXSubnation_sub_id_fk] FOREIGN KEY([SUBNATION_ID])
REFERENCES [dbo].[d_subnation] ([SUBNATION_ID])
GO
ALTER TABLE [dbo].[UnitXSubnation] CHECK CONSTRAINT [UnitXSubnation_sub_id_fk]
GO
