ui <- shiny::fluidPage(
	sidebarLayout(
		tags$div(style = "width: 1000px;",
						 sidebarPanel(
						 	conditionalPanel(condition = "input.tabselectedCovid == 0",
						 									 selectInput(
						 									 	inputId = "divisaoBrasil",
						 									 	label = "Divisão do Mapa Por:",
						 									 	choices = c("Estados",
						 									 							"Regiões"),
						 									 	selected = "Estados",
						 									 	selectize = TRUE
						 									 ),
						 									 dateRangeInput(
						 									 	inputId = "datesGraphBrasil",  
						 									 	start = max(brasilCovid$date)+(-10),
						 									 	end = max(brasilCovid$date),
						 									 	min = min(brasilCovid$date),
						 									 	max = max(brasilCovid$date),
						 									 	format = "dd/mm/yyyy",
						 									 	language = "pt",
						 									 	label = "Limites do Gráfico:",
						 									 	separator = "até"
						 									 ),
						 									 radioButtons(
						 									 	inputId = "confirOrDeathBrasil",
						 									 	label = "",
						 									 	choices = c("Confirmados",
						 									 							"Mortes"),
						 									 	inline = TRUE
						 									 )
						 	),
						 	conditionalPanel(condition = "input.tabselectedCovid == 1",
						 									 selectInput(
						 									 	inputId = "covidRegions",
						 									 	label = "Qual a Região:",
						 									 	choices = regionStates$name_region,
						 									 	selected = regionStates$name_region[[1]],
						 									 	selectize = TRUE
						 									 ),
						 									 selectInput(
						 									 	inputId = "divisaoRegioes",
						 									 	label = "Divisão do Mapa por:",
						 									 	choices = c("Estados",
						 									 							"Mesorregiões"),
						 									 	selected = "Estados",
						 									 	selectize = TRUE
						 									 ),
						 									 dateRangeInput(
						 									 	inputId = "datesGraphRegioes",
						 									 	start = max(df_regionStates$date)+(-10),
						 									 	end = max(df_regionStates$date),
						 									 	min = min(df_regionStates$date),
						 									 	max = max(df_regionStates$date),
						 									 	format = "dd/mm/yyyy",
						 									 	language = "pt",
						 									 	label = "Limites do Gráfico:",
						 									 	separator = "até"
						 									 ),
						 									 radioButtons(
						 									 	inputId = "confirOrDeathRegioes",
						 									 	label = "",
						 									 	choices = c("Confirmados",
						 									 							"Mortes"),
						 									 	inline = TRUE
						 									 )
						 	),
						 	conditionalPanel(condition = "input.tabselectedCovid == 2",
						 									 selectInput(
						 									 	inputId = "covidStates",
						 									 	label = "Qual o Estado:",
						 									 	choices = states$name_state,
						 									 	selected = states$name_state[[1]],
						 									 	selectize = TRUE
						 									 ),
						 									 selectInput(
						 									 	inputId = "divisaoStates",
						 									 	label = "Divisão do Mapa Por:",
						 									 	choices = c("Cidades",
						 									 							"Mesorregiões",
						 									 							"Microrregiões"),
						 									 	selected = "Mesorregiões",
						 									 	selectize = TRUE
						 									 ),
						 									 dateRangeInput(
						 									 	inputId = "datesGraphStates",
						 									 	start = max(covidIDHState$date)+(-10),
						 									 	end = max(covidIDHState$date),
						 									 	min = min(covidIDHState$date),
						 									 	max = max(covidIDHState$date),
						 									 	format = "dd/mm/yyyy",
						 									 	language = "pt",
						 									 	label = "Limites do Gráfico:",
						 									 	separator = "até"
						 									 ),
						 									 radioButtons(
						 									 	inputId = "confirOrDeathState",
						 									 	label = "",
						 									 	choices = c("Confirmados",
						 									 							"Mortes"),
						 									 	inline = TRUE
						 									 )
						 	),
						 	conditionalPanel(condition = "input.tabselectedCovid == 3",
						 									 selectInput(
						 									 	inputId = "covidMeso",
						 									 	label = "Qual é a Mesorregião:",
						 									 	choices = meso$name_meso,
						 									 	selected = meso$name_meso[[1]],
						 									 	selectize = TRUE
						 									 ),
						 									 selectInput(
						 									 	inputId = "divisaoMeso",
						 									 	label = "Divisão do Mapa Por:",
						 									 	choices = c("Cidades",
						 									 							"Microrregiões"),
						 									 	selected = "Microrregiões",
						 									 	selectize = TRUE
						 									 ),
						 									 dateRangeInput(
						 									 	inputId = "datesGraphMeso",
						 									 	start = max(df_meso$date)+(-10),
						 									 	end = max(df_meso$date),
						 									 	min = min(df_meso$date),
						 									 	max = max(df_meso$date),
						 									 	format = "dd/mm/yyyy",
						 									 	language = "pt",
						 									 	label = "Limites do Gráfico:",
						 									 	separator = "até"
						 									 ),
						 									 radioButtons(
						 									 	inputId = "confirOrDeathMeso",
						 									 	label = "",
						 									 	choices = c("Confirmados",
						 									 							"Mortes"),
						 									 	inline = TRUE
						 									 ),
						 									 HTML('<div style = "text-align: justify;"><p>
                         <b>Obs: </b>Devido a secretarias municipais não soltarem os dados
                         diariamente, é possível haver dias sem dados.</p></div>')
						 	),
						 	conditionalPanel(condition = "input.tabselectedCovid == 4",
						 									 selectInput(
						 									 	inputId = "covidMicro",
						 									 	label = "Qual é a Microrregião:",
						 									 	choices = micro$name_micro,
						 									 	selected = micro$name_micro[[1]],
						 									 	selectize = TRUE
						 									 ),
						 									 dateRangeInput(
						 									 	inputId = "datesGraphMicro",
						 									 	start = max(df_micro$date)+(-10),
						 									 	end = max(df_micro$date),
						 									 	min = min(df_micro$date),
						 									 	max = max(df_micro$date),
						 									 	format = "dd/mm/yyyy",
						 									 	language = "pt",
						 									 	label = "Limites do Gráfico:",
						 									 	separator = "até"
						 									 ),
						 									 radioButtons(
						 									 	inputId = "confirOrDeathMicro",
						 									 	label = "",
						 									 	choices = c("Confirmados",
						 									 							"Mortes"),
						 									 	inline = TRUE
						 									 ),
						 									 HTML('<div style = "text-align: justify;"><p>
                         <b>Obs: </b>Devido a secretarias municipais não soltarem os dados
                         diariamente, é possível haver dias sem dados.</p></div>')
						 	),
						 	conditionalPanel(condition = "input.tabselectedCovid == 5",
						 									 selectInput(
						 									 	inputId = "covidCity",
						 									 	label = "Qual é a Cidade:",
						 									 	choices = cities$city,
						 									 	selected = cities$city[[1]],
						 									 	selectize = TRUE
						 									 ),
						 									 dateRangeInput(
						 									 	inputId = "datesGraphCity",
						 									 	start = max(covidIDHCity$date)+(-10),
						 									 	end = max(covidIDHCity$date),
						 									 	min = min(covidIDHCity$date),
						 									 	max = max(covidIDHCity$date),
						 									 	format = "dd/mm/yyyy",
						 									 	language = "pt",
						 									 	label = "Limites do Gráfico:",
						 									 	separator = "até"
						 									 ),
						 									 radioButtons(
						 									 	inputId = "confirOrDeathCity",
						 									 	label = "",
						 									 	choices = c("Confirmados",
						 									 							"Mortes"),
						 									 	inline = TRUE
						 									 ),
						 									 HTML('<div style = "text-align: justify;"><p>
                         <b>Obs: </b>Devido a secretarias municipais não soltarem os dados
                         diariamente, é possível haver dias sem dados.</p></div>')
						 	)
						 )),
		mainPanel(
			fluidPage(
				fluidRow(
					column(10,
								 tabsetPanel(id = "tabselectedCovid",
								 						tabPanel("Brasil", value = 0,
								 										 fluidRow(
								 										 	column(10,
								 										 				 plotly::plotlyOutput(
								 										 				 	outputId = "mapBrasil"
								 										 				 )
								 										 	)    
								 										 ),
								 										 fluidRow(
								 										 	column(5,
								 										 				 plotly::plotlyOutput(
								 										 				 	outputId = "graphBrasil0",
								 										 				 	width = 450
								 										 				 )
								 										 	),
								 										 	column(5,
								 										 				 plotly::plotlyOutput(
								 										 				 	outputId = "graphBrasil1",
								 										 				 	width = 450
								 										 				 )
								 										 	)
								 										 )
								 						),
								 						tabPanel("Regiões", value = 1,
								 										 fluidRow(
								 										 	column(10,
								 										 				 plotly::plotlyOutput(
								 										 				 	outputId = "mapRegioes"
								 										 				 )
								 										 	)    
								 										 ),
								 										 fluidRow(
								 										 	column(5,
								 										 				 plotly::plotlyOutput(
								 										 				 	outputId = "graphRegioes0",
								 										 				 	width = 450
								 										 				 )
								 										 	),
								 										 	column(5,
								 										 				 plotly::plotlyOutput(
								 										 				 	outputId = "graphRegioes1",
								 										 				 	width = 450
								 										 				 )
								 										 	)
								 										 )
								 						),
								 						tabPanel("Estados", value = 2,
								 										 fluidRow(
								 										 	column(10,
								 										 				 plotly::plotlyOutput(
								 										 				 	outputId = "mapStates"
								 										 				 )
								 										 	)    
								 										 ),
								 										 fluidRow(
								 										 	column(5,
								 										 				 plotly::plotlyOutput(
								 										 				 	outputId = "graphStates0",
								 										 				 	width = 450
								 										 				 )
								 										 	),
								 										 	column(5,
								 										 				 plotly::plotlyOutput(
								 										 				 	outputId = "graphStates1",
								 										 				 	width = 450
								 										 				 )
								 										 	)
								 										 )
								 						),
								 						tabPanel("Mesorregiões", value = 3,
								 										 fluidRow(
								 										 	column(10,
								 										 				 plotly::plotlyOutput(
								 										 				 	outputId = "mapMeso"
								 										 				 )
								 										 	)    
								 										 ),
								 										 fluidRow(
								 										 	column(5,
								 										 				 plotly::plotlyOutput(
								 										 				 	outputId = "graphMeso0",
								 										 				 	width = 450
								 										 				 )
								 										 	),
								 										 	column(5,
								 										 				 plotly::plotlyOutput(
								 										 				 	outputId = "graphMeso1",
								 										 				 	width = 450
								 										 				 )
								 										 	)
								 										 )
								 						),
								 						tabPanel("Microrregiões", value = 4,
								 										 fluidRow(
								 										 	column(10,
								 										 				 plotly::plotlyOutput(
								 										 				 	outputId = "mapMicro"
								 										 				 )
								 										 	)    
								 										 ),
								 										 fluidRow(
								 										 	column(5,
								 										 				 plotly::plotlyOutput(
								 										 				 	outputId = "graphMicro0",
								 										 				 	width = 450
								 										 				 )
								 										 	),
								 										 	column(5,
								 										 				 plotly::plotlyOutput(
								 										 				 	outputId = "graphMicro1",
								 										 				 	width = 450
								 										 				 )
								 										 	)
								 										 )
								 						),
								 						tabPanel("Cidades", value = 5,
								 										 fluidRow(
								 										 	column(10,
								 										 				 plotly::plotlyOutput(
								 										 				 	outputId = "mapCity"
								 										 				 )
								 										 	)    
								 										 ),
								 										 fluidRow(
								 										 	column(5,
								 										 				 plotly::plotlyOutput(
								 										 				 	outputId = "graphCity0",
								 										 				 	width = 450
								 										 				 )
								 										 	),
								 										 	column(5,
								 										 				 plotly::plotlyOutput(
								 										 				 	outputId = "grapCity1",
								 										 				 	width = 450
								 										 				 )
								 										 	)
								 										 )
								 						)
								 )
					),
					column(2,
								 fluidRow(
								 	tags$div(style = "width: 1650px;",
								 					 valueBox(
								 					 	value = "covidConfirmed",
								 					 	subtitle = p(style="text-align: justify;","Numero de confirmados total"),
								 					 	color = "purple",
								 					 	icon = ""
								 					 )
								 	)
								 ),
								 fluidRow(
								 	tags$div(style = "width: 1650px;",
								 					 valueBox(
								 					 	value = "covidConfirmedPerDay",
								 					 	subtitle = p(style="text-align: justify;","Numero de confirmados na data: ", 
								 					 							 textOutput(outputId = "covidDateConfirmedPerDay")),
								 					 	color = "blue",
								 					 	icon = ""
								 					 )
								 	)
								 ),
								 fluidRow(
								 	tags$div(style = "width: 1650px;",
								 					 valueBox(
								 					 	value = "covidDeaths",
								 					 	subtitle = p(style="text-align: justify;","Numero de mortes Total"),
								 					 	color = "green",
								 					 	icon = ""
								 					 )
								 	)
								 ),
								 fluidRow(
								 	tags$div(style = "width: 1650px;",
								 					 valueBox(
								 					 	value = "covidDeathsPerDay",
								 					 	subtitle = p(style="text-align: justify;","Numero de mortes na data: ", 
								 					 							 textOutput(outputId = "covidDateDeathsPerDay")),
								 					 	color = "",
								 					 	icon = ""
								 					 )
								 	)
								 )
					)
				)
			)
		)
	)
)