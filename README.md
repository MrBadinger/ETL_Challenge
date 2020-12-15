<h1>Group 5:</h1>

<h3>Team Members:  Andrew Perez. Michael Badinger, Brent Meulebroeck, Daniel Torres, Gary Jeter </h3>

<h3>Title:  World War II (WWII) Bombing Missions & Weather Analysis Database</h3>

<p>General:  Achieving air superiority in combat was critical to the Allies success in World War II.  Assembling this database will support analysis to provide insights into the use of combat aircraft in all WWII theaters of combat.   Many insights that can be gleaned from this database include evaluating the effects of various weather conditions on:</p>
	<li>Mission success and aircraft survivability</li>
	<li>Mission altitude and time over target</li>
	<li>Deployment of aircraft type and weapon type used</li>
	<li>Type of targets selected</li>
	<li>Number of aircraft deployed</li>
	<p></p>
	<p></p>

<p>Data Sources:</p>
	<li>World War II THOR Data.  Link:  https://data.world/datamil/world-war-ii-thor-data</li>
		<li>THOR_WWII_AIRCRAFT_GLOSS.csv</li>
		<li>THOR_WWII_DATA_CLEAN.csv</li>
	<li>Weather Conditions in World War Two (Dailey Weather Summaries from 1940-1945).  Link:  https://www.kaggle.com/smid80/weatherww2 </li>
		<li>Summary of Weather.csv</li>
		<li>Weather Station Locations.csv</li>

<h3> thor_wwii_master Table Field Descriptions</h3>
	<li>msndate =  Mission Date</li>
	<li>theater =  Pacific(PTO), European(ETO), China-Burma-India(CBI), Mediterranean (MTO), East Africa, Madagascar</li>
	<li>naf =  Airforce Military Unit Designation</li>
	<li>country_flying_mission =  Allied Country Name</li>
	<li>latitude =  of target</li>
	<li>longitude =  of target</li>
	<li>aircraft =  Aircraft mission design series (foreign key in thor_wwii_aircraft table)</li>
	<li>tgt_id =  Number that designates the type of target</li>
	<li>tgt_industry_code =  Code for target industry (Gun Placements, Airfields, etc.)</li>
	<li>tgt_location =  Description of target location (City Name, etc.)</li>
	<li>tgt_type =  Description of target (factory, enemy convoy, etc.)</li>
	<li>tgt_industry =  More detailed description of target than tgt_type</li>
	<li>tgt_country =  Country in which target is located</li>
	<li>tgt_priority =  Priority of target</li>
	<li>ac_attacking =  Count of aircraft attacking target</li>
	<li>altitude =  Altitude in FT/100</li>
	<li>number_of_he =  Count of high explosive bombs dropped </li>
	<li>type_of_he =  Type of high explosive bombs dropped</li>
	<li>lbs_he =  Pounds of high explosive bombs dropped</li>
	<li>tons_of_he =  Tons of high explosive bombs dropped</li>
	<li>number_of_ic =  Count of Incendiary bombs dropped</li>
	<li>type_of_ic =  Type of Incendiary bombs dropped</li>
	<li>lbs_ic =  Pounds of Incendiary bombs dropped</li>
	<li>tons_of_ic =  Tons of Incendiary bombs dropped</li>
	<li>number_of_frag =  Count of Fragmentation bombs dropped</li>
	<li>type_of_frag =  Type of Fragmentation bombs dropped</li>
	<li>lbs_frag =  Pounds of Fragmentation bombs dropped</li>
	<li>tons_of_frag =  Tons of Fragmentation bombs dropped</li>
	<li>total_lbs =  Total Pounds of all bombs dropped</li>
	<li>total_tons =  Total Tons of all bombs dropped</li>
	<li>takeoff_base =  Military airfield of departure.</li>
	<li>takeoff_country =  Country of airfield of departure</li>
	<li>takeoff_latitude =  Latitude of airfield</li>
	<li>takeoff_longitude =  Longitude of airfield</li>
	<li>ac_lost =  Count of aircraft lost</li>

<h3> thor_wwii_aircraft Table Data Desription</h3>
	<li>aircraft =  Aircraft mission design series (used to link to thor_wwii_master)</li>
	<li>name = Aircraft short name</li>
	<li>full_name = Aircraft extended name</li>
	<li>aircraft_type = bomber, fighter, etc</li>
	<li>hyperlink = link to aircraft website details</li> 

<h3> thor_wwii_weather table column descriptions</h3>
	<li>STA = station ID</li>
	<li>Date = Date MM/DD/YYYY</li>
	<li>PRCP = Measured precip in inches</li>
	<li>SPD = wind speed in knots</li>
	<li>MAX = Max observed temp F</li>
	<li>MIN = Min observed temp F</li>
	<li>MEA = Mean observed temp F</li>
	<li>SNF = Snowfall in inches</li>

<h3>thor_wwii_station_location column descriptions</h3>
	<li>WBAN = station ID</li>
	<li>NAME = station Name</li>
	<li>STATE/COUNTRY ID = Country ID</li>
	<li>ELEV = Elevation in [units]</li>
	<li>Latitude = Latitude in numeric format</li>
	<li>Longitude = Longitude in numeric format</li>
