# postgres\_air
 This repo contains components for building the postgres_air database,
  which can be used for training and various performance experiments.
  The database is created by hDBn  (Hettie Dombrovskaya & Boris Novikov)

## The db dumps of core data can be found here:

[Download Link](https://drive.google.com/drive/folders/13F7M80Kf_somnjb-mTYAnh1hW1Y_g4kJ?usp=sharing)

This shared directory contains a data dump of the postgres_air schema in three formats:
directory format, the default pg_dump format and compressed SQL format.

The total size of each is about 1.2 GB.
Use the directory format, if you prefer to download smaller files.
Use SQL if you want to avoid warnings about object ownership.

For directory format and default format, use pg_restore.
For SQL, unzip the file and use  psql for restore.

You can also use the QR code provided in the QR_download file to access this directory.

![QR Download Code](QR_download.png)

## 09/05/2022: IMPORTANT UPDATES

The version of the postgres_air database, which is used in the PostgreSQL Query optimization book, has "today" set to August 18, 2020. While we want to keep this version available to our readers at least until the book's next edition is out, we wanted to provide a more up-to-date version. 

The postgres_air_2022.backup contains the up-to-date version of the postgres_air database. The following changes were made:

* "today" is August 18, 2022

* to adequately reflect the current situation, all Russian airports are excluded from the bookings. The Postgres Air airline company complies with international sanctions and no longer flies to Russia.



## What are the rest of the files for?

See the db_objects_description.txt file.

## To populate the tables, the following public data sources were used

* The Global Airport Database
   https://www.partow.net/miscellaneous/airportdatabase/index.html#GlobalAirportDatabaseLicens

* Airport, airline and route data
  https://openflights.org/data.html

* Airbus - All Aircraft & Prices, Specs, Photos, Interior, Seating - Aircraft Compare
  https://www.aircraftcompare.com/manufacturers/airbus/
  
*  Frequently Occurring Surnames from the 2010 Census
  https://www.census.gov/topics/population/genealogy/data/2010_surnames.html
  

* Most Common Surnames [Last Names] in the United States (top 1000)
  https://namecensus.com/most_common_surnames.htm

 * First names male:
   https://namecensus.com/male_names.htm

* First names female:
  https://namecensus.com/female_names.htm

## Disclaimer

 Hettie and Boris do not guarantee the 100% accuracy of the data.
 We tried our best, but it is still possible that some airports ended up in the wrong cities
 and some cities ended up in the wrong countries.
 No offense intended in any of the above cases!

 The flights' schedules are 100% imaginary; we guarantee that the flights' durations are realistic and
 each airport is reachable from any other airport, but the schedule does not resemble any real airline schedule.

 Use at your own risk.
