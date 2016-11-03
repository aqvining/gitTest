fluidPage(
  includeMarkdown("Title.Rmd"),
  titlePanel("", windowTitle = "my App"),
  br(),
  br(),
  hr(),

  sidebarLayout(
    sidebarPanel(
      textInput("myText1", "Enter some text here:"),
      actionButton("createNewData", "Simulate new data for 2nd bar plot")
    ),
    mainPanel(
      textOutput("myTextOutput1"),
      hr(),
      plotOutput("myBarPlot"),
      plotOutput("myRandomBarPlot"),
      leafletOutput("mymap", height=800)
      
    )
  )
)