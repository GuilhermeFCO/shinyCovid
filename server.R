server <- function(input, output, sesion) {
	
	output$covidConfirmed <- renderText({
		
		if (input$tabselectedCovid == 0) {
			df_covidConfirmedAux <- brasilCovid
			
			df_covidConfirmed <- df_covidConfirmedAux %>% 
				dplyr::filter(is_last == "TRUE") %>% 
				dplyr::select(confirmed)
			
		} else if (input$tabselectedCovid == 1) {
			df_covidConfirmedAux <- regionStates
			
			df_covidConfirmed <- df_covidConfirmedAux %>% 
				dplyr::filter(name_region == input$covidRegions) %>% 
				dplyr::select(confirmed)
			
		} else if (input$tabselectedCovid == 2) {
			df_covidConfirmedAux <- states
			
			df_covidConfirmed <- df_covidConfirmedAux %>% 
				dplyr::filter(name_state == input$covidStates) %>% 
				dplyr::select(confirmed)
		} else if (input$tabselectedCovid == 3) {
			df_covidConfirmedAux <- meso
			
			df_covidConfirmed <- df_covidConfirmedAux %>% 
				dplyr::filter(name_meso == input$covidMeso) %>% 
				dplyr::select(confirmed)
		} else if (input$tabselectedCovid == 4) {
			df_covidConfirmedAux <- micro
			
			df_covidConfirmed <- df_covidConfirmedAux %>% 
				dplyr::filter(name_micro == input$covidMicro) %>% 
				dplyr::select(confirmed)
		} else if (input$tabselectedCovid == 5) {
			df_covidConfirmedAux <- cities
			
			df_covidConfirmed <- df_covidConfirmedAux %>% 
				dplyr::filter(city == input$covidCity) %>% 
				dplyr::select(confirmed)
		}
		
		return(df_covidConfirmed[[1]])
	})
	
	output$covidDateConfirmedPerDay <- renderText({
		
		if (input$tabselectedCovid == 0) {
			df_covidDateConfirmedPerDayAux <- brasilCovid
			
			df_covidDateConfirmedPerDay <- df_covidDateConfirmedPerDayAux %>% 
				dplyr::filter(is_last == "TRUE") %>% 
				dplyr::select(date)
			
		} else if (input$tabselectedCovid == 1) {
			df_covidDateConfirmedPerDayAux <- regionStates
			
			df_covidDateConfirmedPerDay <- df_covidDateConfirmedPerDayAux %>% 
				dplyr::filter(name_region == input$covidRegions) %>% 
				dplyr::select(date)
			
		} else if (input$tabselectedCovid == 2) {
			df_covidDateConfirmedPerDayAux <- states
			
			df_covidDateConfirmedPerDay <- df_covidDateConfirmedPerDayAux %>% 
				dplyr::filter(name_state == input$covidStates) %>% 
				dplyr::select(date)
		} else if (input$tabselectedCovid == 3) {
			df_covidDateConfirmedPerDayAux <- meso
			
			df_covidDateConfirmedPerDay <- df_covidDateConfirmedPerDayAux %>% 
				dplyr::filter(name_meso == input$covidMeso) %>% 
				dplyr::select(date)
		} else if (input$tabselectedCovid == 4) {
			df_covidDateConfirmedPerDayAux <- micro
			
			df_covidDateConfirmedPerDay <- df_covidDateConfirmedPerDayAux %>% 
				dplyr::filter(name_micro == input$covidMicro) %>% 
				dplyr::select(date)
		} else if (input$tabselectedCovid == 5) {
			df_covidDateConfirmedPerDayAux <- cities
			
			df_covidDateConfirmedPerDay <- df_covidDateConfirmedPerDayAux %>% 
				dplyr::filter(city == input$covidCity) %>% 
				dplyr::select(date)
		}
		
		date_covidDateConfirmedPerDay <- df_covidDateConfirmedPerDay[[1]]
		date_covidDateConfirmedPerDay <- format.Date(date_covidDateConfirmedPerDay)
		
		return(date_covidDateConfirmedPerDay)
	})
	
	output$covidConfirmedPerDay <- renderText({
		
		if (input$tabselectedCovid == 0) {
			df_covidConfirmedPerDayAux <- brasilCovid
			
			df_covidConfirmedPerDay <- df_covidConfirmedPerDayAux %>% 
				dplyr::filter(is_last == "TRUE") %>% 
				dplyr::select(confirmed_per_day)
			
		} else if (input$tabselectedCovid == 1) {
			df_covidConfirmedPerDayAux <- regionStates
			
			df_covidConfirmedPerDay <- df_covidConfirmedPerDayAux %>% 
				dplyr::filter(name_region == input$covidRegions) %>% 
				dplyr::select(confirmed_per_day)
			
		} else if (input$tabselectedCovid == 2) {
			df_covidConfirmedPerDayAux <- states
			
			df_covidConfirmedPerDay <- df_covidConfirmedPerDayAux %>% 
				dplyr::filter(name_state == input$covidStates) %>% 
				dplyr::select(confirmed_per_day)
		} else if (input$tabselectedCovid == 3) {
			df_covidConfirmedPerDayAux <- meso
			
			df_covidConfirmedPerDay <- df_covidConfirmedPerDayAux %>% 
				dplyr::filter(name_meso == input$covidMeso) %>% 
				dplyr::select(confirmed_per_day)
		} else if (input$tabselectedCovid == 4) {
			df_covidConfirmedPerDayAux <- micro
			
			df_covidConfirmedPerDay <- df_covidConfirmedPerDayAux %>% 
				dplyr::filter(name_micro == input$covidMicro) %>% 
				dplyr::select(confirmed_per_day)
		} else if (input$tabselectedCovid == 5) {
			df_covidConfirmedPerDayAux <- cities
			
			df_covidConfirmedPerDay <- df_covidConfirmedPerDayAux %>% 
				dplyr::filter(city == input$covidCity) %>% 
				dplyr::select(confirmed_per_day)
		}
		
		return(df_covidConfirmedPerDay[[1]])
	})
	
	output$covidDeaths <- renderText({
		
		if (input$tabselectedCovid == 0) {
			df_covidDeathsAux <- brasilCovid
			
			df_covidDeaths <- df_covidDeathsAux %>% 
				dplyr::filter(is_last == "TRUE") %>% 
				dplyr::select(deaths)
			
		} else if (input$tabselectedCovid == 1) {
			df_covidDeathsAux <- regionStates
			
			df_covidDeaths <- df_covidDeathsAux %>% 
				dplyr::filter(name_region == input$covidRegions) %>% 
				dplyr::select(deaths)
			
		} else if (input$tabselectedCovid == 2) {
			df_covidDeathsAux <- states
			
			df_covidDeaths <- df_covidDeathsAux %>% 
				dplyr::filter(name_state == input$covidStates) %>% 
				dplyr::select(deaths)
		} else if (input$tabselectedCovid == 3) {
			df_covidDeathsAux <- meso
			
			df_covidDeaths <- df_covidDeathsAux %>% 
				dplyr::filter(name_meso == input$covidMeso) %>% 
				dplyr::select(deaths)
		} else if (input$tabselectedCovid == 4) {
			df_covidDeathsAux <- micro
			
			df_covidDeaths <- df_covidDeathsAux %>% 
				dplyr::filter(name_micro == input$covidMicro) %>% 
				dplyr::select(deaths)
		} else if (input$tabselectedCovid == 5) {
			df_covidDeathsAux <- cities
			
			df_covidDeaths <- df_covidDeathsAux %>% 
				dplyr::filter(city == input$covidCity) %>% 
				dplyr::select(deaths)
		}
		
		return(df_covidDeaths[[1]])
	})
	
	output$covidDateDeathsPerDay <- renderText({
		
		if (input$tabselectedCovid == 0) {
			df_covidDateDeathsPerDayAux <- brasilCovid
			
			df_covidDateDeathsPerDay <- df_covidDateDeathsPerDayAux %>% 
				dplyr::filter(is_last == "TRUE") %>% 
				dplyr::select(date)
			
		} else if (input$tabselectedCovid == 1) {
			df_covidDateDeathsPerDayAux <- regionStates
			
			df_covidDateDeathsPerDay <- df_covidDateDeathsPerDayAux %>% 
				dplyr::filter(name_region == input$covidRegions) %>% 
				dplyr::select(date)
			
		} else if (input$tabselectedCovid == 2) {
			df_covidDateDeathsPerDayAux <- states
			
			df_covidDateDeathsPerDay <- df_covidDateDeathsPerDayAux %>% 
				dplyr::filter(name_state == input$covidStates) %>% 
				dplyr::select(date)
		} else if (input$tabselectedCovid == 3) {
			df_covidDateDeathsPerDayAux <- meso
			
			df_covidDateDeathsPerDay <- df_covidDateDeathsPerDayAux %>% 
				dplyr::filter(name_meso == input$covidMeso) %>% 
				dplyr::select(date)
		} else if (input$tabselectedCovid == 4) {
			df_covidDateDeathsPerDayAux <- micro
			
			df_covidDateDeathsPerDay <- df_covidDateDeathsPerDayAux %>% 
				dplyr::filter(name_micro == input$covidMicro) %>% 
				dplyr::select(date)
		} else if (input$tabselectedCovid == 5) {
			df_covidDateDeathsPerDayAux <- cities
			
			df_covidDateDeathsPerDay <- df_covidDateDeathsPerDayAux %>% 
				dplyr::filter(city == input$covidCity) %>% 
				dplyr::select(date)
		}
		
		date_covidDateDeathsPerDay <- df_covidDateDeathsPerDay[[1]]
		date_covidDateDeathsPerDay <- format.Date(date_covidDateDeathsPerDay)
		return(date_covidDateDeathsPerDay)
	})
	
	output$covidDeathsPerDay <- renderText({
		
		if (input$tabselectedCovid == 0) {
			df_covidDeathsPerDayAux <- brasilCovid
			
			df_covidDeathsPerDay <- df_covidDeathsPerDayAux %>% 
				dplyr::filter(is_last == "TRUE") %>% 
				dplyr::select(deaths_per_day)
			
		} else if (input$tabselectedCovid == 1) {
			df_covidDeathsPerDayAux <- regionStates
			
			df_covidDeathsPerDay <- df_covidDeathsPerDayAux %>% 
				dplyr::filter(name_region == input$covidRegions) %>% 
				dplyr::select(deaths_per_day)
			
		} else if (input$tabselectedCovid == 2) {
			df_covidDeathsPerDayAux <- states
			
			df_covidDeathsPerDay <- df_covidDeathsPerDayAux %>% 
				dplyr::filter(name_state == input$covidStates) %>% 
				dplyr::select(deaths_per_day)
		} else if (input$tabselectedCovid == 3) {
			df_covidDeathsPerDayAux <- meso
			
			df_covidDeathsPerDay <- df_covidDeathsPerDayAux %>% 
				dplyr::filter(name_meso == input$covidMeso) %>% 
				dplyr::select(deaths_per_day)
		} else if (input$tabselectedCovid == 4) {
			df_covidDeathsPerDayAux <- micro
			
			df_covidDeathsPerDay <- df_covidDeathsPerDayAux %>% 
				dplyr::filter(name_micro == input$covidMicro) %>% 
				dplyr::select(deaths_per_day)
		} else if (input$tabselectedCovid == 5) {
			df_covidDeathsPerDayAux <- cities
			
			df_covidDeathsPerDay <- df_covidDeathsPerDayAux %>% 
				dplyr::filter(city == input$covidCity) %>% 
				dplyr::select(deaths_per_day)
		}
		
		return(df_covidDeathsPerDay[[1]])
	})
	
}