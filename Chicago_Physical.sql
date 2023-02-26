/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      Chicago-FI_Dimensional-Model.DM1
 *
 * Date Created : Sunday, February 26, 2023 16:12:08
 * Target DBMS : Microsoft SQL Server 2019
 */

/* 
 * TABLE: Dim_BusinessLicenses 
 */
GO
CREATE DATABASE CHICAGO_DIM
GO
USE CHICAGO_DIM
GO
CREATE TABLE Dim_BusinessLicenses(
    LicenseSK                            int              IDENTITY(1,1),
    ID                                   char(16)         NULL,
    LICENSE_ID                           int              NULL,
    ACCOUNT_NUMBER                       int              NULL,
    LEGAL_NAME                           varchar(120)     NULL,
    SITE_NUMBER                          int              NULL,
    DOING_BUSINESS_AS_NAME               varchar(128)     NULL,
    ADDRESS                              varchar(80)      NULL,
    CITY                                 varchar(30)      NULL,
    STATE                                char(2)          NULL,
    ZIP_CODE                             char(5)          NULL,
    WARD                                 int              NULL,
    PRECINCT                             int              NULL,
    WARD_PRECINCT                        char(6)          NULL,
    POLICE_DISTRICT                      int              NULL,
    LICENSE_CODE                         int              NULL,
    LICENSE_DESCRIPTION                  varchar(60)      NULL,
    BUSINESS_ACTIVITY_ID                 varchar(81)      NULL,
    BUSINESS_ACTIVITY                    varchar(max)     NULL,
    APPLICATION_TYPE                     char(6)          NULL,
    LICENSE_NUMBER                       int              NULL,
    APPLICATION_CREATED_DATE             varchar(10)      NULL,
    APPLICATION_REQUIREMENTS_COMPLETE    char(10)         NULL,
    PAYMENT_DATE                         char(10)         NULL,
    CONDITIONAL_APPROVAL                 char(1)          NULL,
    LICENSE_TERM_START_DATE              char(10)         NULL,
    LICENSE_TERM_EXPIRATION_DATE         char(10)         NULL,
    LICENSE_APPROVED_FOR_ISSUANCE        char(10)         NULL,
    DATE_ISSUED                          char(10)         NULL,
    LICENSE_STATUS                       char(3)          NULL,
    LICENSE_STATUS_CHANGE_DATE           varchar(10)      NULL,
    SSA                                  int              NULL,
    LATITUDE                             float            NULL,
    LONGITUDE                            float            NULL,
    LOCATION                             char(40)         NULL,
    DI_CreateDate                        datetime         NULL,
    DI_WorkflowDirectory                 nvarchar(256)    NULL,
    DI_WorkflowFileName                  nvarchar(256)    NULL,
    CONSTRAINT PK__Dim_Chic__72D63F647261CEEE PRIMARY KEY NONCLUSTERED (LicenseSK)
)

go


IF OBJECT_ID('Dim_BusinessLicenses') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_BusinessLicenses >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_BusinessLicenses >>>'
go

/* 
 * TABLE: Dim_FacilityType 
 */

CREATE TABLE Dim_FacilityType(
    FacilitySK              int              IDENTITY(1,1),
    FacilityType            varchar(47)      NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkflowDirectory    nvarchar(256)    NULL,
    DI_WorkflowFileName     nvarchar(256)    NULL,
    CONSTRAINT pk_Dim_Chicago_FacilityType_FacilitySK PRIMARY KEY NONCLUSTERED (FacilitySK)
)

go


IF OBJECT_ID('Dim_FacilityType') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_FacilityType >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_FacilityType >>>'
go

/* 
 * TABLE: Dim_Geo 
 */

CREATE TABLE Dim_Geo(
    GeoSK                   int              IDENTITY(1,1),
    Address                 varchar(51)      NULL,
    City                    varchar(20)      NULL,
    State                   char(2)          NULL,
    Zip                     int              NULL,
    Latitude                char(18)         NULL,
    Longitude               char(18)         NULL,
    Location                char(40)         NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkflowDirectory    nvarchar(256)    NULL,
    DI_WorkflowFileName     nvarchar(256)    NULL,
    CONSTRAINT PK__Dim_Chic__EC407CA9AA5B1CF6 PRIMARY KEY NONCLUSTERED (GeoSK)
)

go


IF OBJECT_ID('Dim_Geo') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Geo >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Geo >>>'
go

/* 
 * TABLE: Dim_InspectionType 
 */

CREATE TABLE Dim_InspectionType(
    InspectionTypeSK        int              IDENTITY(1,1),
    InspectionType          varchar(41)      NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkflowDirectory    nvarchar(256)    NULL,
    DI_WorkflowFileName     nvarchar(256)    NULL,
    CONSTRAINT pk_Dim_Chicago_FoodInspectionType_InspectionTypeSK PRIMARY KEY NONCLUSTERED (InspectionTypeSK)
)

go


IF OBJECT_ID('Dim_InspectionType') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_InspectionType >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_InspectionType >>>'
go

/* 
 * TABLE: Dim_Restaurants 
 */

CREATE TABLE Dim_Restaurants(
    RestaurantSK            int              IDENTITY(1,1),
    License                 bigint           NULL,
    DBA_Name                varchar(79)      NULL,
    AKA_Name                varchar(79)      NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkflowDirectory    nvarchar(256)    NULL,
    DI_WorkflowFileName     nvarchar(256)    NULL,
    CONSTRAINT PK__Dim_Chic__8744FDC203509B49 PRIMARY KEY NONCLUSTERED (RestaurantSK)
)

go


IF OBJECT_ID('Dim_Restaurants') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Restaurants >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Restaurants >>>'
go

/* 
 * TABLE: Dim_Results 
 */

CREATE TABLE Dim_Results(
    ResultsSK               int              IDENTITY(1,1),
    Results                 varchar(20)      NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkflowDirectory    nvarchar(256)    NULL,
    DI_WorkflowFileName     nvarchar(256)    NULL,
    CONSTRAINT PK__Dim_Chic__45CACBD6740A3622 PRIMARY KEY NONCLUSTERED (ResultsSK)
)

go


IF OBJECT_ID('Dim_Results') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Results >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Results >>>'
go

/* 
 * TABLE: Dim_Risk 
 */

CREATE TABLE Dim_Risk(
    RiskSK                  int              IDENTITY(1,1),
    Risk                    char(15)         NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkflowDirectory    nvarchar(256)    NULL,
    DI_WorkflowFileName     nvarchar(256)    NULL,
    CONSTRAINT PK__Dim_Chic__4352D18682610EB7 PRIMARY KEY NONCLUSTERED (RiskSK)
)

go


IF OBJECT_ID('Dim_Risk') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Risk >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Risk >>>'
go

/* 
 * TABLE: Dim_ViolationCodes 
 */

CREATE TABLE Dim_ViolationCodes(
    ViolationCodeSK         int             IDENTITY(1,1),
    ViolationCode           int             NULL,
    ViolationDescription    varchar(256)    NULL,
    DI_CreateDate           datetime        NULL,
    DI_WorkflowDirectory    nvarchar(10)    NULL,
    DI_WorkflowFileName     nvarchar(10)    NULL,
    CONSTRAINT PK__Dim_Chic__18B68DE7EC8D0E1E PRIMARY KEY NONCLUSTERED (ViolationCodeSK)
)

go


IF OBJECT_ID('Dim_ViolationCodes') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_ViolationCodes >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_ViolationCodes >>>'
go

/* 
 * TABLE: Fact_Inspections 
 */

CREATE TABLE Fact_Inspections(
    InspectionSK            char(10)         NOT NULL,
    RestaurantSK            int              NOT NULL,
    LicenseSK               int              NOT NULL,
    GeoSK                   int              NOT NULL,
    FacilitySK              int              NOT NULL,
    InspectionTypeSK        int              NOT NULL,
    RiskSK                  int              NOT NULL,
    ResultsSK               int              NOT NULL,
    InspectionDate          date             NULL,
    InspectionID            int              NOT NULL,
    License_Number          int              NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkflowDirectory    nvarchar(256)    NULL,
    DI_WorkflowFileName     nvarchar(256)    NULL,
    CONSTRAINT PK9 PRIMARY KEY NONCLUSTERED (InspectionSK)
)

go


IF OBJECT_ID('Fact_Inspections') IS NOT NULL
    PRINT '<<< CREATED TABLE Fact_Inspections >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Fact_Inspections >>>'
go

/* 
 * TABLE: Fact_Violations 
 */

CREATE TABLE Fact_Violations(
    ViolationSK             bigint           NOT NULL,
    InspectionSK            char(10)         NOT NULL,
    ViolationCodeSK         int              NOT NULL,
    ViolationComment        varchar(max)     NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkflowFileName     nvarchar(10)     NULL,
    DI_WorkflowDirectory    nvarchar(256)    NULL,
    CONSTRAINT PK10 PRIMARY KEY NONCLUSTERED (ViolationSK)
)

go


IF OBJECT_ID('Fact_Violations') IS NOT NULL
    PRINT '<<< CREATED TABLE Fact_Violations >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Fact_Violations >>>'
go

/* 
 * TABLE: Fact_Inspections 
 */

ALTER TABLE Fact_Inspections ADD CONSTRAINT RefDim_Risk10 
    FOREIGN KEY (RiskSK)
    REFERENCES Dim_Risk(RiskSK)
go

ALTER TABLE Fact_Inspections ADD CONSTRAINT fk_Dim_Chicago_BusinessLicenses_FCT_Chicago_FoodInspections 
    FOREIGN KEY (LicenseSK)
    REFERENCES Dim_BusinessLicenses(LicenseSK)
go

ALTER TABLE Fact_Inspections ADD CONSTRAINT fk_Dim_Chicago_FacilityType_FCT_Chicago_FoodInspections 
    FOREIGN KEY (FacilitySK)
    REFERENCES Dim_FacilityType(FacilitySK)
go

ALTER TABLE Fact_Inspections ADD CONSTRAINT fk_Dim_Chicago_FoodInspectionResults_FCT_Chicago_FoodInspections 
    FOREIGN KEY (ResultsSK)
    REFERENCES Dim_Results(ResultsSK)
go

ALTER TABLE Fact_Inspections ADD CONSTRAINT fk_Dim_Chicago_FoodInspectionType_FCT_Chicago_FoodInspections 
    FOREIGN KEY (InspectionTypeSK)
    REFERENCES Dim_InspectionType(InspectionTypeSK)
go

ALTER TABLE Fact_Inspections ADD CONSTRAINT fk_Dim_Chicago_Geo_FCT_Chicago_FoodInspections 
    FOREIGN KEY (GeoSK)
    REFERENCES Dim_Geo(GeoSK)
go

ALTER TABLE Fact_Inspections ADD CONSTRAINT fk_Dim_Chicago_Restaurants_FCT_Chicago_FoodInspections 
    FOREIGN KEY (RestaurantSK)
    REFERENCES Dim_Restaurants(RestaurantSK)
go


/* 
 * TABLE: Fact_Violations 
 */

ALTER TABLE Fact_Violations ADD CONSTRAINT RefFact_Inspections9 
    FOREIGN KEY (InspectionSK)
    REFERENCES Fact_Inspections(InspectionSK)
go

ALTER TABLE Fact_Violations ADD CONSTRAINT RefDim_ViolationCodes11 
    FOREIGN KEY (ViolationCodeSK)
    REFERENCES Dim_ViolationCodes(ViolationCodeSK)
go


