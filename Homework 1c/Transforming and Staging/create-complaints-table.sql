-- =============================================
-- Table: dbo.Complaints
-- Source: NHTSA Complaints Flat File
-- =============================================
-- CMPLID         : NHTSA Internal Unique Sequence Number
-- ODINO          : NHTSA Internal Reference Number (may repeat for multiple components)
-- MFR_NAME       : Manufacturer Name
-- MAKETXT        : Vehicle/Equipment Make
-- MODELTXT       : Vehicle/Equipment Model
-- YEARTXT        : Model Year (9999 if unknown or N/A)
-- CRASH          : Was vehicle involved in a crash (Y/N)
-- FAILDATE       : Date of incident (YYYYMMDD)
-- FIRE           : Was vehicle involved in a fire (Y/N)
-- INJURED        : Number of persons injured
-- DEATHS         : Number of fatalities
-- COMPDESC       : Specific component description
-- CITY           : Consumer city
-- STATE          : Consumer state code
-- VIN            : Vehicle VIN number
-- DATEA          : Date added to file (YYYYMMDD)
-- LDATE          : Date complaint received by NHTSA (YYYYMMDD)
-- MILES          : Vehicle mileage at failure
-- OCCURENCES     : Number of occurrences
-- CDESCR         : Description of the complaint
-- CMPL_TYPE      : Source of complaint code (CAG/CON/DP/EVOQ/EWR/INS/IVOQ/LETR/MAVQ/MIVQ/MVOQ/RC/RP/SVOQ/VOQ)
-- POLICE_RPT_YN  : Was incident reported to police (Y/N)
-- PURCH_DT       : Date purchased (YYYYMMDD)
-- ORIG_OWNER_YN  : Was original owner (Y/N)
-- ANTI_BRAKES_YN : Anti-lock brakes (Y/N)
-- CRUISE_CONT_YN : Cruise control (Y/N)
-- NUM_CYLS       : Number of cylinders
-- DRIVE_TRAIN    : Drive train type (AWD/4WD/FWD/RWD)
-- FUEL_SYS       : Fuel system code (FI=Fuel Injection, TB=Turbo)
-- FUEL_TYPE      : Fuel type code (BF/CN/DS/GS/HE)
-- TRANS_TYPE     : Transmission type (AUTO/MAN)
-- VEH_SPEED      : Vehicle speed
-- DOT            : Department of Transportation tire identifier
-- TIRE_SIZE      : Tire size
-- LOC_OF_TIRE    : Location of tire code (FSW/DSR/FTR/PSR/SPR)
-- TIRE_FAIL_TYPE : Type of tire failure code (BST/BLW/TTL/OFR/TSW/TTR/TSP)
-- ORIG_EQUIP_YN  : Was part original equipment (Y/N)
-- MANUF_DT       : Date of manufacture (YYYYMMDD)
-- SEAT_TYPE      : Type of child seat code (B/C/I/IN/TD)
-- RESTRAINT_TYPE : Installation system code (A=Vehicle Safety Belt, B=LATCH System)
-- DEALER_NAME    : Dealer name
-- DEALER_TEL     : Dealer telephone number
-- DEALER_CITY    : Dealer city
-- DEALER_STATE   : Dealer state code
-- DEALER_ZIP     : Dealer zipcode
-- PROD_TYPE      : Product type code (V=Vehicle, T=Tires, E=Equipment, C=Child Restraint)
-- REPAIRED_YN    : Was defective tire repaired (Y/N)
-- MEDICAL_ATTN   : Was medical attention required (Y/N)
-- =============================================

CREATE TABLE dbo.Complaints (
    CMPLID         NVARCHAR(9),
    ODINO          NVARCHAR(9),
    MFR_NAME       NVARCHAR(40),
    MAKETXT        NVARCHAR(25),
    MODELTXT       NVARCHAR(256),
    YEARTXT        NVARCHAR(4),
    CRASH          NVARCHAR(1),
    FAILDATE       NVARCHAR(8),
    FIRE           NVARCHAR(1),
    INJURED        SMALLINT,
    DEATHS         SMALLINT,
    COMPDESC       NVARCHAR(128),
    CITY           NVARCHAR(30),
    STATE          NVARCHAR(2),
    VIN            NVARCHAR(11),
    DATEA          NVARCHAR(8),
    LDATE          NVARCHAR(8),
    MILES          INT,
    OCCURENCES     SMALLINT,
    CDESCR         NVARCHAR(2048),
    CMPL_TYPE      NVARCHAR(4),
    POLICE_RPT_YN  NVARCHAR(1),
    PURCH_DT       NVARCHAR(8),
    ORIG_OWNER_YN  NVARCHAR(1),
    ANTI_BRAKES_YN NVARCHAR(1),
    CRUISE_CONT_YN NVARCHAR(1),
    NUM_CYLS       SMALLINT,
    DRIVE_TRAIN    NVARCHAR(4),
    FUEL_SYS       NVARCHAR(4),
    FUEL_TYPE      NVARCHAR(4),
    TRANS_TYPE     NVARCHAR(4),
    VEH_SPEED      SMALLINT,
    DOT            NVARCHAR(20),
    TIRE_SIZE      NVARCHAR(30),
    LOC_OF_TIRE    NVARCHAR(4),
    TIRE_FAIL_TYPE NVARCHAR(4),
    ORIG_EQUIP_YN  NVARCHAR(1),
    MANUF_DT       NVARCHAR(8),
    SEAT_TYPE      NVARCHAR(4),
    RESTRAINT_TYPE NVARCHAR(4),
    DEALER_NAME    NVARCHAR(40),
    DEALER_TEL     NVARCHAR(20),
    DEALER_CITY    NVARCHAR(30),
    DEALER_STATE   NVARCHAR(2),
    DEALER_ZIP     NVARCHAR(10),
    PROD_TYPE      NVARCHAR(4),
    REPAIRED_YN    NVARCHAR(1),
    MEDICAL_ATTN   NVARCHAR(1)
);
