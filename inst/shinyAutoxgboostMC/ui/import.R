tabpanel.import = fluidPage(theme = shinytheme("united"),
  sidebarLayout(
    sidebarPanel(width = 3,
      div(align = "center",
        h3("Status", style = "color: #FFF"),
        htmlOutput("status.import"),
        br(),
        tags$hr(),
        uiOutput("import.ui")
      )
    ),
    mainPanel(width = 9,
      htmlOutput("import.text"),
      box(width = 12, DT::dataTableOutput("import.preview")),
      uiOutput("tabpanel.browse.openml")
    )
  )
)

