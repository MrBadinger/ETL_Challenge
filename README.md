# ETL_Challenge

<h2>WWII-era weather data from 1942-1945</h2> 
(Source: we used this set from Kaggle: https://www.kaggle.com/smid80/weatherww2, original source was NOAA)

<h3>Summary of weather file column definitions:</h3>
<li>STA = station ID</li>
<li>Date = Date MM/DD/YYYY</li>
<li>PRCP = Measured precip in inches</li>
<li>SPD = wind speed in knots</li>
<li>MAX = Max observed temp F</li>
<li>MIN = Min observed temp F</li>
<li>MEA = Mean observed temp F</li>
<li>SNF = Snowfall in inches</li>

<p>Dropped columns C-H (metric measurements), column I (unclear data source/meaning), columns J,K,L (duplicated date info), columns T-AE (all NULL values)</p>

<h3>Weather Station Location file column definitions:</h3>
<li>WBAN = station ID</li>
<li>NAME = station Name</li>
<li>STATE/COUNTRY ID = Country ID</li>
<li>ELEV = Elevation in [units]</li>
<li>Latitude = Latitude in numeric format</li>
<li>Longitude = Longitude in numeric format</li>
