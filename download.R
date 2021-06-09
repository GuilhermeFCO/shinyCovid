temp <- data.table::fread("./date.csv")

if (Sys.Date() > temp[[1]] |
		(Sys.Date() == temp[[1]] & lubridate::hour(Sys.time()) >= 23) |
		(!dir.exists("./data"))) {

	if (Sys.Date() > temp[[1]]) {
		temp[[1]] <- Sys.Date()
		data.table::fwrite(temp, file = "./date.csv")
	} else {
		temp[[1]] <- Sys.Date() +
		data.table::fwrite(temp, file = "./date.csv")
	}

	if (dir.exists("./data"))
		unlink("./data", recursive = TRUE)

	options(timeout = 100000)

	utils::download.file("https://github.com/GuilhermeFCO/dataBaseCovid19/archive/refs/heads/main.zip",
											 destfile = "./dataBase.zip",
											 method = "libcurl")

	utils::unzip(zipfile = "./dataBase.zip", overwrite = TRUE)
	file.remove("./dataBase.zip")
	file.rename("dataBaseCovid19-main", "data")

	utils::unzip("./data/covid.zip", exdir = "./data")
	file.remove("./data/covid.zip")
	utils::unzip("./data/covidBR.zip", exdir = "./data")
	file.remove("./data/covidBR.zip")
	utils::unzip("./data/csv.zip", exdir = "./data")
	file.remove("./data/csv.zip")
	utils::unzip("./data/maps.zip", exdir = "./data")
	file.remove("./data/maps.zip")
	utils::unzip("./data/rds.zip", exdir = "./data")
	file.remove("./data/rds.zip")
}

rm(list = ls())

covid <- data.table::fread("./data/covid.csv")
covidBR <- data.table::fread("./data/covidBR.csv")
brasil <- data.table::fread("./data/csv/brasil.csv")
df_regionStates <- data.table::fread("./data/csv/regionStates.csv")
df_meso <- data.table::fread("./data/csv/meso.csv")
df_micro <- data.table::fread("./data/csv/micro.csv")
covidBRState <- data.table::fread("./data/csv/covidBRState.csv")
covidBRState_last <- data.table::fread("./data/csv/covidBRState_last.csv")
covidBRCity <- data.table::fread("./data/csv/covidBRCity.csv")
covidBRCity_last <- data.table::fread("./data/csv/covidBRCity_last.csv")
cities <- readRDS("./data/maps/cities.rds")
meso <- readRDS("./data/maps/meso.rds")
micro <- readRDS("./data/maps/micro.rds")
regionStates <- readRDS("./data/maps/regionStates.rds")
states <- readRDS("./data/maps/states.rds")
