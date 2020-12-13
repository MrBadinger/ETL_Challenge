--Create in thor database

CREATE TABLE "THOR_WWII_AIRCRAFT" (
    "aircraft" varchar(50)   NOT NULL,
    "name" varchar(100)   NOT NULL,
    "full_name" varchar(100)   NOT NULL,
    "aircraft_type" varchar(100)   NOT NULL,
    "hyperlink" varchar(100)   NOT NULL,
    CONSTRAINT "pk_THOR_WWII_AIRCRAFT" PRIMARY KEY (
        "aircraft"
     )
);

CREATE TABLE "THOR_WWII_MASTER" (
    "id" int   NOT NULL,
    "msndate" date   NOT NULL,
    "theater" varchar(10)   NOT NULL,
    "naf" varchar(10)   NOT NULL,
    "country_flying_mission" varchar(25)   NOT NULL,
    "source_latitude" varchar(50)   NOT NULL,
    "source_longitude" varchar(50)   NOT NULL,
    "latitude" float   NOT NULL,
    "longitude" float   NOT NULL,
    "mds" varchar(50)   NOT NULL,
    "tgt_id" int   NOT NULL,
    "tgt_industry_code" int   NOT NULL,
    "tgt_location" varchar(100)   NOT NULL,
    "tgt_type" varchar(100)   NOT NULL,
    "tgt_industry" varchar(100)   NOT NULL,
    "tgt_country" varchar(50)   NOT NULL,
    "tgt_priority" varchar(4)   NOT NULL,
    "ac_attacking" int   NOT NULL,
    "altitude" float   NOT NULL,
    "number_of_he" float   NOT NULL,
    "type_of_he" varchar(100)   NOT NULL,
    "lbs_he" int   NOT NULL,
    "tons_of_he" float   NOT NULL,
    "number_of_ic" int   NOT NULL,
    "type_of_ic" varchar(50)   NOT NULL,
    "lbs_ic" float   NOT NULL,
    "tons_of_ic" float   NOT NULL,
    "number_of_frag" float   NOT NULL,
    "type_of_frag" varchar(50)   NOT NULL,
    "lbs_frag" float   NOT NULL,
    "tons_of_frag" float   NOT NULL,
    "total_lbs" float   NOT NULL,
    "total_tons" float   NOT NULL,
    "takeoff_base" varchar(50)   NOT NULL,
    "takeoff_country" varchar(50)   NOT NULL,
    "takeoff_latitude" float   NOT NULL,
    "takeoff_longitude" float   NOT NULL,
    "ac_lost" int   NOT NULL,
    "ac_damaged" int   NOT NULL,
    "ac_airborne" float   NOT NULL,
    "ac_dropping" int   NOT NULL,
    "time_over_target" varchar(10)   NOT NULL,
    "bda" text   NOT NULL,
    "callsign" varchar(20)   NOT NULL,
    "spares_return_ac" int   NOT NULL,
    "wx_fail_ac" int   NOT NULL,
    "mech_fail_ac" int   NOT NULL,
    "misc_fail_ac" int   NOT NULL,
    "target_comment" text   NOT NULL,
    "mission_comments" text   NOT NULL,
    CONSTRAINT "pk_THOR_WWII_MASTER" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "THOR_WWII_WEATHER" (
    "id" int   NOT NULL,
    "STA" int   NOT NULL,
    "Date" date   NOT NULL,
    "prcp" float   NOT NULL,
    "dr" int   NOT NULL,
    "spd" int   NOT NULL,
    "max" int   NOT NULL,
    "min" int   NOT NULL,
    "mea" int   NOT NULL,
    "snf" int   NOT NULL,
    CONSTRAINT "pk_THOR_WWII_WEATHER" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "THOR_WWII_STATION_LOCATION" (
    "wban" int   NOT NULL,
    "name" varchar(100)   NOT NULL,
    "state_country" varchar(2)   NOT NULL,
    "elev" int   NOT NULL,
    "latitude" float   NOT NULL,
    "longitude" float   NOT NULL,
    CONSTRAINT "pk_THOR_WWII_STATION_LOCATION" PRIMARY KEY (
        "wban"
     )
);

ALTER TABLE "THOR_WWII_MASTER" ADD CONSTRAINT "fk_THOR_WWII_MASTER_mds" FOREIGN KEY("mds")
REFERENCES "THOR_WWII_AIRCRAFT" ("aircraft");

ALTER TABLE "THOR_WWII_WEATHER" ADD CONSTRAINT "fk_THOR_WWII_WEATHER_STA" FOREIGN KEY("STA")
REFERENCES "THOR_WWII_STATION_LOCATION" ("wban");

