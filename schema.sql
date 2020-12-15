--Create in thor database

CREATE TABLE thor_wwii_aircraft (
    "aircraft" varchar(50)   NOT NULL,
    "name" varchar(100)   NULL,
    "full_name" varchar(100)  NULL,
    "aircraft_type" varchar(100)   NULL,
    "hyperlink" varchar(100)   NULL,
    CONSTRAINT "pk_THOR_WWII_AIRCRAFT" PRIMARY KEY (
        "aircraft"
     )
);

CREATE TABLE thor_wwii_master (
    "id" SERIAL,
    "msndate" date   NOT NULL,
    "theater" varchar(25)   NULL,
    "naf" varchar(10)   NULL,
    "country_flying_mission" varchar(25)   NULL,
    "source_latitude" varchar(50)   NULL,
    "source_longitude" varchar(50)   NULL,
    "latitude" float   NULL,
    "longitude" float   NULL,
    "aircraft" varchar(50)   NULL,
    "tgt_id" int   NULL,
    "tgt_industry_code" int   NULL,
    "tgt_location" text   NULL,
    "tgt_type" varchar(100)   NULL,
    "tgt_industry" text   NULL,
    "tgt_country" varchar(50)   NULL,
    "tgt_priority" varchar(4)   NULL,
    "ac_attacking" int   NULL,
    "altitude" float   NULL,
    "number_of_he" float   NULL,
    "type_of_he" varchar(100)  NULL,
    "lbs_he" int   NULL,
    "tons_of_he" float   NULL,
    "number_of_ic" int   NULL,
    "type_of_ic" varchar(50)   NULL,
    "lbs_ic" float   NULL,
    "tons_of_ic" float   NULL,
    "number_of_frag" float   NULL,
    "type_of_frag" varchar(50)   NULL,
    "lbs_frag" float   NULL,
    "tons_of_frag" float   NULL,
    "total_lbs" float   NULL,
    "total_tons" float  NULL,
    "takeoff_base" varchar(50)   NULL,
    "takeoff_country" varchar(50)   NULL,
    "takeoff_latitude" float   NULL,
    "takeoff_longitude" float   NULL,
    "ac_lost" int   NULL,
    "ac_damaged" int   NULL,
    "ac_airborne" float  NULL,
    "ac_dropping" int   NULL,
    "time_over_target" varchar(10)   NULL,
    "bda" text   NULL,
    "callsign" varchar(20)   NULL,
    "spares_return_ac" int   NULL,
    "wx_fail_ac" int   NULL,
    "mech_fail_ac" int   NULL,
    "misc_fail_ac" int  NULL,
    "target_comment" text  NULL,
    "mission_comments" text   NULL,
    CONSTRAINT "pk_THOR_WWII_MASTER" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE thor_wwii_weather (
    "id" SERIAL,
    "sta" int   NULL,
    "date" date   NULL,
    "prcp" varchar(20)  NULL,
    "dr" float   NULL,
    "spd" float   NULL,
    "max" float    NULL,
    "min" float    NULL,
    "mea" float   NULL,
    "snf" varchar(20)   NULL,
    CONSTRAINT "pk_THOR_WWII_WEATHER" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE thor_wwii_station_location (
    "wban" int   NOT NULL,
    "name" varchar(100)   NULL,
    "state_country" varchar(2)   NULL,
    "elev" int   NULL,
    "latitude" float   NULL,
    "longitude" float   NULL,
    CONSTRAINT "pk_THOR_WWII_STATION_LOCATION" PRIMARY KEY (
        "wban"
     )
);

ALTER TABLE thor_wwii_master ADD CONSTRAINT "fk_THOR_WWII_MASTER_mds" FOREIGN KEY("aircraft")
REFERENCES thor_wwii_aircraft ("aircraft");

ALTER TABLE thor_wwii_weather ADD CONSTRAINT "fk_THOR_WWII_WEATHER_STA" FOREIGN KEY("sta")
REFERENCES thor_wwii_station_location ("wban");

