tabpanel.summary = fluidPage(theme = shinytheme("united"),
  sidebarLayout(
    sidebarPanel(width = 3,
      div(align = "center",
        h3("Status", style = "color: #FFF"),
        htmlOutput("status.summary")
      )
    ),
    mainPanel(width = 9,
      uiOutput("data.summary.box"),
      box(width = 9, title = "Variable Visualization", id = "summary.vis.box",
        fluidRow(
          column(9,
            uiOutput("summary.vis.hist")),
          column(9,
            plotlyOutput("summary.vis"),
            br(),
            br())
        )
      )
    )
  )
)
