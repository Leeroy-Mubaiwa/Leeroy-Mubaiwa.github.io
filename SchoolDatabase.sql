/****** Object:  Table [dbo].[additions]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[additions](
        [value] [float] NOT NULL,
        [description] [text] NULL,
        [_id] [varchar](45) NOT NULL,
        [int ] [int] NOT NULL,
        PRIMARY KEY CLUSTERED ([int ] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    )
    /****** Object:  Table [dbo].[archievements_table]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[archievements_table](
        [idarchievements_table] [int] NOT NULL,
        [title] [text] NULL,
        [staff_id] [varchar](45) NOT NULL,
        PRIMARY KEY CLUSTERED (
            [idarchievements_table] ASC,
            [staff_id] ASC
        )
    )
GO
    CREATE TABLE [dbo].[biography](
        [id] [int] NOT NULL,
        [text] [nvarchar](max) NULL,
        [date] [date] NULL,
        [_id] [varchar](45) NULL,
        [staff_id] [varchar](45) NULL,
        [school_id] [varchar](45) NULL,
        PRIMARY KEY CLUSTERED ([id] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    )
    /* Object:  Table [dbo].
     [Books]    Script Date: 19/6/2020 6:09:33 PM */
GO
    CREATE TABLE [dbo].[Books](
        [BookID] [int] IDENTITY(1, 1) NOT NULL,
        [Subject] [nvarchar](255) NOT NULL,
        [Title] [nvarchar](255) NOT NULL,
        [Author] [nvarchar](255) NOT NULL,
        [Publisher] [nvarchar](255) NOT NULL,
        [Copyright] [int] NOT NULL,
        [Edition] [int] NOT NULL,
        [Pages] [int] NOT NULL,
        [ISBN] [nvarchar](50) NOT NULL,
        [NumberOfBooks] [int] NOT NULL,
        [NumberOfAvailbleBooks] [int] NULL,
        [NumberOfBorrowedBooks] [int] NULL,
        [Library_id] [int] NOT NULL,
        [Availble] [bit] NOT NULL,
        [ShelfNo] [int] NULL,
        [school_id] [varchar](45) NULL,
        CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED ([BookID] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    ) ON [PRIMARY]
    /****** Object:  Table [dbo].[Borrow]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[Borrow](
        [counters] [int] NOT NULL,
        [book_id] [int] NOT NULL,
        [book_ISBN] [nvarchar](50) NULL,
        [_id] [varchar](45) NULL,
        [Day_Borrowed] [datetime] NULL,
        [Day_Return] [datetime] NULL,
        [due] [int] NULL,
        [days_to_borrow] [int] NULL,
        [day_to_return] [datetime] NULL,
        [school_id] [varchar](45) NULL,
        PRIMARY KEY CLUSTERED ([counters] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    ) ON [PRIMARY]
    /****** Object:  Table [dbo].[classes]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[classes](
        [id] [int] NOT NULL,
        [school_id] [varchar](45) NULL,
        [name] [varchar](45) NULL,
        [description] [text] NULL,
        [history] [text] NULL,
        [level_id] [int] NULL,
        PRIMARY KEY CLUSTERED ([id] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    )
    /****** Object:  Table [dbo].[contact_details]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[contact_details](
        [phone1] [nvarchar](max) NULL,
        [emailaddress1] [text] NULL,
        [staff_id] [varchar](45) NULL,
        [school_id] [varchar](45) NULL,
        [_id] [varchar](45) NULL,
        [counter] [int] NOT NULL,
        [emailaddress2] [text] NULL,
        [emailaddress3] [text] NULL,
        [phone2] [nvarchar](max) NULL,
        [phone3] [nvarchar](max) NULL,
        [tel1] [nvarchar](max) NULL,
        [tel2] [nvarchar](max) NULL,
        [tel3] [nvarchar](max) NULL,
        [fax] [nvarchar](max) NULL,
        PRIMARY KEY CLUSTERED ([counter] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    )
    /****** Object:  Table [dbo].[country]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[country](
        [country_id] [int] NOT NULL,
        [country] [varchar](50) NOT NULL,
        [last_update] [timestamp] NOT NULL,
        PRIMARY KEY CLUSTERED ([country_id] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    ) ON [PRIMARY]
    /****** Object:  Table [dbo].[criminal_offenses_table]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[criminal_offenses_table](
        [idcriminal_offenses_table] [int] NOT NULL,
        [title] [text] NULL,
        [section_violated] [varchar](max) NULL,
        [teachers_associated] [varchar](max) NULL,
        [_id] [varchar](45) NOT NULL,
        [school_id] [varchar](45) NOT NULL,
        [staff_id] [varchar](45) NULL,
        [description] [text] NULL,
        CONSTRAINT [PK_criminal_offenses_table] PRIMARY KEY CLUSTERED ([idcriminal_offenses_table] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    )
    /****** Object:  Table [dbo].[deductions]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[deductions](
        [value] [float] NOT NULL,
        [description] [text] NULL,
        [_id] [varchar](45) NOT NULL,
        PRIMARY KEY CLUSTERED ([_id] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    )
    /****** Object:  Table [dbo].[deletedstuff]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[deletedstuff](
        [deletecount] [int] NOT NULL,
        [studentcountid] [int] NOT NULL,
        [delete_status] [varchar](45) NULL,
        PRIMARY KEY CLUSTERED ([deletecount] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    ) ON [PRIMARY]
    /****** Object:  Table [dbo].[exam_type_table]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[exam_type_table](
        [id] [int] NOT NULL,
        [title] [text] NULL,
        [date_introduced] [date] NULL,
        [school_id] [varchar](45) NOT NULL,
        [abbreviation] [varchar](45) NULL,
        PRIMARY KEY CLUSTERED ([id] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    )
    /****** Object:  Table [dbo].[fees]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[fees](
        [fees] [float] NULL,
        [levy] [float] NULL,
        [uniforms] [float] NULL,
        [sports] [float] NULL,
        [clubs] [float] NULL,
        [date] [date] NULL,
        [class_id] [int] NOT NULL,
        [school_id] [varchar](45) NULL,
        [counter] [int] NOT NULL,
        PRIMARY KEY CLUSTERED ([counter] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    ) ON [PRIMARY]
    /****** Object:  Table [dbo].[finances]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[finances](
        [date] [datetime] NULL,
        [income] [float] NULL,
        [expense] [float] NULL,
        [details_income] [text] NULL,
        [creditor_details] [text] NULL,
        [debtor_details] [text] NULL,
        [bank_income] [float] NULL,
        [expense_details] [text] NULL,
        [bank_income_details] [text] NULL,
        [bank_debit] [float] NULL,
        [bank_debit_details] [text] NULL,
        [school_id] [varchar](45) NOT NULL,
        PRIMARY KEY CLUSTERED ([school_id] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    )
    /****** Object:  Table [dbo].[financial_processes]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[financial_processes](
        [date] [datetime] NULL,
        [income] [float] NULL,
        [expense] [float] NULL,
        [details_income] [text] NULL,
        [creditor_details] [text] NULL,
        [debtor_details] [text] NULL,
        [bank_income] [float] NULL,
        [expense_details] [text] NULL,
        [bank_income_details] [text] NULL,
        [bank_debit] [float] NULL,
        [bank_debit_details] [text] NULL,
        [school_id] [varchar](45) NOT NULL,
        PRIMARY KEY CLUSTERED ([school_id] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    )
    /****** Object:  Table [dbo].[gallery]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[gallery](
        [date] [datetime] NOT NULL,
        [numberofmediacollected] [int] NULL,
        [event_hosted] [text] NULL,
        [videos] [nvarchar](max) NULL,
        [pictures] [image] NULL,
        [journalist] [varchar](45) NULL,
        [narration] [text] NULL,
        [school_id] [varchar](45) NOT NULL,
        [id] [int] NOT NULL,
        CONSTRAINT [PK_gallery] PRIMARY KEY CLUSTERED ([id] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    )
    /****** Object:  Table [dbo].[home_details]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[home_details](
        [count] [int] NOT NULL,
        [h_country] [text] NULL,
        [h_city] [text] NULL,
        [h_town] [text] NULL,
        [h_district] [text] NULL,
        [h_zone] [text] NULL,
        [h_state] [text] NULL,
        [h_province] [text] NULL,
        [h_streetname] [text] NULL,
        [h_streettype] [text] NULL,
        [h_housenumber] [text] NULL,
        [h_postal_code] [varchar](45) NULL,
        [h_affordability] [int] NULL,
        [h_spouse] [text] NULL,
        [h_spouse_two] [text] NULL,
        [h_denomination] [text] NULL,
        [h_religion] [text] NULL,
        [h_numberofchildren] [int] NULL,
        [_id] [varchar](45) NULL,
        [school_id] [varchar](45) NULL,
        [staff_id] [varchar](45) NULL,
        PRIMARY KEY CLUSTERED ([count] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    )
    /****** Object:  Table [dbo].[image]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[image](
        [school_id] [varchar](45) NULL,
        [image_id] [int] NOT NULL,
        [image] [image] NULL,
        [description] [text] NULL,
        [imagename] [text] NULL,
        [path] [text] NULL,
        [_id] [varchar](45) NULL,
        [staff_id] [varchar](45) NULL,
        PRIMARY KEY CLUSTERED ([image_id] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    )
    /****** Object:  Table [dbo].[ipadresses]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[ipadresses](
        [ip] [varchar](45) NOT NULL,
        [lognumber] [int] NOT NULL,
        [school_id] [varchar](45) NOT NULL,
        PRIMARY KEY CLUSTERED ([lognumber] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    ) ON [PRIMARY]
    /****** Object:  Table [dbo].[lessons]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[lessons](
        [id] [int] NOT NULL,
        [date] [date] NULL,
        [timestart] [datetime] NULL,
        [timefinish] [datetime] NULL,
        [description] [text] NULL,
        [expectations] [text] NULL,
        [testnameforlesson] [text] NULL,
        [class] [int] NOT NULL,
        [school_id] [varchar](45) NULL,
        [title] [text] NULL,
        [subject] [text] NOT NULL,
        [average_pass] [decimal](10, 0) NULL,
        [highest_mark] [decimal](10, 0) NULL,
        [lowest_mark] [decimal](10, 0) NULL,
        [pdf_copy_location] [text] NULL,
        [pdf] [nvarchar](max) NULL,
        CONSTRAINT [PK_lessons] PRIMARY KEY CLUSTERED ([id] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    )
GO
    CREATE TABLE [dbo].[level_table](
        [id] [int] NOT NULL,
        [title] [varchar](90) NOT NULL,
        [duration] [float] NULL,
        [description] [text] NULL,
        [school_id] [varchar](45) NULL,
        [abbreviation] [varchar](45) NULL,
        CONSTRAINT [PK_level_table] PRIMARY KEY CLUSTERED ([id] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    )
    /****** Object:  Table [dbo].[Library]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[Library](
        [library_id] [int] NOT NULL,
        [Library_Name] [text] NULL,
        [school_id] [varchar](45) NULL,
        PRIMARY KEY CLUSTERED ([library_id] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    )
    /****** Object:  Table [dbo].[messages]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[messages](
        [message_id] [int] NOT NULL,
        [route] [varchar](45) NULL,
        [contents_text] [text] NULL,
        [contents_image] [varchar](45) NULL,
        [contents_videos] [varchar](45) NULL,
        [contents_pdf] [varchar](45) NULL,
        [contents_word] [varchar](45) NULL,
        [contents_ppt] [varchar](45) NULL,
        [contents_frame] [varchar](45) NULL,
        [date] [date] NULL,
        [time] [date] NULL,
        [urgency] [varchar](45) NULL,
        [type] [varchar](45) NULL,
        [schoolid] [varchar](45) NOT NULL,
        [_id] [varchar](45) NOT NULL,
        [staff_id] [varchar](45) NOT NULL,
        PRIMARY KEY CLUSTERED (
            [schoolid] ASC,
            [message_id] ASC,
            [_id] ASC,
            [staff_id] ASC
        ) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    )
    /****** Object:  Table [dbo].[mischief_table]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[mischief_table](
        [idmischief_table] [int] NOT NULL,
        [title] [varchar](45) NULL,
        [_id] [varchar](45) NULL,
        [school_id] [varchar](45) NULL,
        PRIMARY KEY CLUSTERED ([idmischief_table] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    ) ON [PRIMARY]
    /****** Object:  Table [dbo].[Other_Fees]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[Other_Fees](
        [Id] [int] NOT NULL,
        [fee_id] [int] NULL,
        [school_id] [varchar](45) NULL,
        [description] [text] NULL,
        [value] [float] NULL,
        PRIMARY KEY CLUSTERED ([Id] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    )
    /****** Object:  Table [dbo].[past_results_table]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[past_results_table](
        [date] [datetime] NOT NULL,
        [period] [varchar](45) NULL,
        [grouplevel] [varchar](45) NULL,
        [class_size] [varchar](45) NULL,
        [pass_rate] [int] NULL,
        [comparisonwithpreviousyear] [text] NULL,
        [detailedpreview] [text] NULL,
        [record_met] [varchar](45) NULL,
        [school_id] [varchar](45) NOT NULL,
        PRIMARY KEY CLUSTERED ([date] ASC, [school_id] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    )
    /****** Object:  Table [dbo].[payroll]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[payroll](
        [id] [int] NOT NULL,
        [base_pay] [float] NULL,
        [nationwide_retirement] [float] NULL,
        [flexiblespeningaccount] [float] NULL,
        [healthhighemployeeonly] [float] NULL,
        [healthclub_deductions] [float] NULL,
        [aflac] [float] NULL,
        [ficamedicare] [float] NULL,
        [ficasocialsecurity] [float] NULL,
        [vawithholding] [float] NULL,
        [annual_leave] [float] NULL,
        [sick_leave] [float] NULL,
        [grosswages] [float] NULL,
        [start_period] [datetime] NULL,
        [endperiod] [datetime] NOT NULL,
        [un orms] [float] NULL,
        [branch_deposit_tax] [float] NULL,
        [capital_gains_tx] [float] NULL,
        [federal_tax] [float] NULL,
        [company_tax] [float] NULL,
        [fringe_benefit_tax] [float] NULL,
        [stamp_duty_tax] [float] NULL,
        [personal_tax] [float] NULL,
        [staff_id] [varchar](45) NOT NULL,
        [school_id] [varchar](45) NOT NULL,
        PRIMARY KEY CLUSTERED (
            [id] ASC,
            [staff_id] ASC,
            [school_id] ASC
        ) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    ) ON [PRIMARY]
    /****** Object:  Table [dbo].[PDF_Storage]    Script Date: 19/6/2020 6:09:33 PM ******/
    /****** Object:  Table [dbo].[possessions_table]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[possessions_table](
        [id] [int] NOT NULL,
        [title] [text] NULL,
        [make] [text] NULL,
        [date_manufactures] [date] NULL,
        [date_released] [date] NULL,
        [model] [text] NULL,
        [numberinstock] [int] NULL,
        [_id] [varchar](45) NULL,
        [school_id] [varchar](45) NULL,
        [staff_id] [varchar](45) NULL,
        [image] [image] NULL,
        [serialnumber] [varchar](255) NULL,
        [price] [decimal](10, 0) NULL,
        PRIMARY KEY CLUSTERED ([id] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    )
GO
    CREATE TABLE [dbo].[problems](
        [date] [datetime] NOT NULL,
        [worktype] [varchar](45) NULL,
        [tutorresponsible] [text] NULL,
        [total expected] [int] NULL,
        [averagemark] [int] NULL,
        [description] [text] NULL,
        [pdfcopywork] [varchar](45) NULL,
        [worktitle] [varchar](45) NULL,
        [workcode] [varchar](45) NOT NULL,
        [school_id] [varchar](45) NULL,
        [class_id] [int] NULL,
        [level_id] [int] NULL,
        PRIMARY KEY CLUSTERED ([workcode] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    )
    /****** Object:  Table [dbo].[recommendations]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[recommendations](
        [id] [int] NOT NULL,
        [body] [image] NULL,
        [dateprepared] [timestamp] NULL,
        [_id] [varchar](45) NULL,
        [staff_id] [varchar](45) NULL,
        [school_id] [varchar](45) NULL,
        PRIMARY KEY CLUSTERED ([id] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    )
    /****** Object:  Table [dbo].[school_details]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[school_details](
        [count] [int] NOT NULL,
        [school_id] [varchar](45) NOT NULL,
        [Name] [text] NULL,
        [Type] [text] NULL,
        [ZipCode] [text] NULL,
        [StreetAddress] [text] NULL,
        [Zone] [text] NULL,
        [District] [text] NULL,
        [Province] [text] NULL,
        [City] [text] NULL,
        [Town] [text] NULL,
        [State] [text] NULL,
        [Country] [text] NULL,
        [Continent] [text] NULL,
        [Region] [text] NULL,
        [website] [text] NULL,
        [emailaddress] [text] NULL,
        PRIMARY KEY CLUSTERED ([school_id] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    )
    /****** Object:  Table [dbo].[Students]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[Students](
        [_count] [int] NOT NULL,
        [_id] [varchar](45) NOT NULL,
        [_birthentry_number] [varchar](45) NULL,
        [_national_id_number] [varchar](45) NULL,
        [_class] [varchar](45) NULL,
        [_position] [int] NULL,
        [_memorable_tag] [text] NULL,
        [_height] [int] NULL,
        [_weight] [int] NULL,
        [_eyecolor] [varchar](45) NULL,
        [_haircolor] [varchar](45) NULL,
        [_skincolor] [varchar](45) NULL,
        [_ethnicity] [varchar](45) NULL,
        [_gender] [varchar](45) NULL,
        [_relationshipstatus] [int] NULL,
        [_classparticipation] [int] NULL,
        [date_of_birth] [date] NULL,
        [date_joined_frame] [date] NULL,
        [date_joined_school] [date] NULL,
        [level_id] [int] NULL,
        [authority] [varchar](45) NULL,
        [school_id] [varchar](45) NOT NULL,
        [_school_id_given] [varchar](45) NOT NULL,
        [delete_status] [varchar](45) NULL,
        [class_id] [int] NULL,
        [firstname] [nvarchar](max) NULL,
        [lastname] [nvarchar](max) NULL,
        [middlename] [nvarchar](max) NULL,
        [othernames] [nvarchar](max) NULL,
        CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED ([_id] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    )
   
GO
    CREATE TABLE [dbo].[school_history](
        [count] [int] NOT NULL,
        [school_id] [varchar](45) NOT NULL,
        [history] [text] NULL,
        PRIMARY KEY CLUSTERED ([count] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    )
    /****** Object:  Table [dbo].[school_shop_table]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[school_shop_table](
        [item_id] [int] NOT NULL,
        [item_type] [varchar](45) NULL,
        [quantity] [int] NULL,
        [quality] [varchar](45) NULL,
        [unit_price] [varchar](45) NULL,
        [total_bought] [int] NULL,
        [total_price] [int] NULL,
        [date_recievedintostock] [datetime] NULL,
        [item_catery] [varchar](45) NULL,
        [payment_method] [varchar](45) NULL,
        [school_id] [varchar](45) NOT NULL,
        CONSTRAINT [PK_school_shop_table] PRIMARY KEY CLUSTERED ([item_id] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    ) ON [PRIMARY]
    /****** Object:  Table [dbo].[school_shop_table_has_Students]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[security_details](
        [userID] [int] NOT NULL,
        [password] [text] NOT NULL,
        [hint1] [text] NOT NULL,
        [hint2] [text] NULL,
        [hint3] [text] NULL,
        [school_id] [varchar](45) NOT NULL,
        PRIMARY KEY CLUSTERED ([school_id] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    )
    /****** Object:  Table [dbo].[social_networks]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[social_networks](
        [idsocial_networks] [int] NOT NULL,
        [website] [varchar](100) NULL,
        [username/link] [varchar](100) NULL,
        [_id] [varchar](45) NOT NULL,
        [school_id] [varchar](45) NOT NULL,
        [staff_id] [varchar](45) NOT NULL,
        PRIMARY KEY CLUSTERED (
            [idsocial_networks] ASC,
            [_id] ASC,
            [school_id] ASC,
            [staff_id] ASC
        ) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    ) ON [PRIMARY]
    /****** Object:  Table [dbo].[staff]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[staff](
        [staff_count] [int] NOT NULL,
        [staff_id] [varchar](45) NOT NULL,
        [staff_nationa_id] [varchar](45) NOT NULL,
        [staff_name_first] [text] NULL,
        [staff_name_second] [text] NULL,
        [staff_name_others] [text] NULL,
        [staff_surname] [text] NULL,
        [staff_sex] [text] NULL,
        [staff_class_focus] [varchar](45) NULL,
        [staff_type] [varchar](45) NULL,
        [staff_qualifications] [nvarchar](max) NULL,
        [staff_paycheck_vlaue] [int] NULL,
        [staff_incentives] [int] NULL,
        [staff_schoolbenefits] [int] NULL,
        [staff_authorityposition] [text] NULL,
        [type(employed_or_not)] [varchar](45) NULL,
        [school_id] [varchar](45) NULL,
        [salutation] [varchar](45) NULL,
        CONSTRAINT [PK_staff] PRIMARY KEY CLUSTERED ([staff_id] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    )
GO
    CREATE TABLE [dbo].[subjects](
        [Subject_ID] [int] NOT NULL,
        [Title] [text] NULL,
        [description] [text] NULL,
        [dateintroduced] [date] NULL,
        [school_id] [varchar](45) NULL,
        PRIMARY KEY CLUSTERED ([Subject_ID] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    )
    /****** Object:  Table [dbo].[teacher's children]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[teacher's children](
        [id] [int] NOT NULL,
        [name_first] [text] NULL,
        [surname] [text] NULL,
        [class] [varchar](45) NULL,
        [staff_id] [varchar](45) NULL,
        [_id] [varchar](45) NULL,
        [school_id] [varchar](45) NULL,
        PRIMARY KEY CLUSTERED ([id] ASC) WITH (
            PAD_INDEX = OFF,
            STATISTICS_NORECOMPUTE = OFF,
            IGNORE_DUP_KEY = OFF,
            ALLOW_ROW_LOCKS = ON,
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    )
    /****** Object:  Table [dbo].[Total_fees]    Script Date: 19/6/2020 6:09:33 PM ******/
GO
    CREATE TABLE [dbo].[Total_fees](
        [Id] [int] NOT NULL,
        [class_id] [int] NULL,
        [school_id] [varchar](45) NULL,
        [fee_id] [int] NULL,
        [total] [float] NULL,
        PRIMARY KEY CLUSTERED ([Id] ASC)
    )