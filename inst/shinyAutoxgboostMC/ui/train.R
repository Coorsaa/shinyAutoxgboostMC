tabpanel.train = fluidPage(theme = shinytheme("united"),
  sidebarLayout(
    sidebarPanel(
      div(align = "center",
        h3("Status", style = "color: #FFF"),
        htmlOutput("status.train"),
        br(),
        tags$hr(),
        uiOutput("autoxgboos.params.sel")
        # hr(),
        # uiOutput("model_overview")
      )
    ),
    mainPanel(
      tabBox(id = "train.tab", selected = "Model", width = 9,
        tabPanel("Model",
          fluidRow(hidden(verbatimTextOutput("model.print")))
        ),
        tabPanel("Optimization Path",
          fluidRow(plotlyOutput("opt.path.plot"))
        ),
        tabPanel("Pareto Front",
          fluidRow(plotlyOutput("pareto.front.plot"))
        ),
        tabPanel("Parameterset",
          fluidRow(htmlOutput("params.plot"))
        )
      )
    )
  )
)

# tabpanel.predict = fluidPage(theme = shinytheme("united"),
#   sidebarLayout(
#     sidebarPanel(
#       sidebarMenu(
#         menuItem("Predict on:"),
#         selectInput("newdatatype", "", choices = c("task", "new data"),
#           selected = "task"),
#         uiOutput("import.pred.ui"),
#         div(align = "center",
#           actionButton("predict.run", label = "Predict"),
#           br(),
#           hr(),
#           downloadButton("predict.download", "download predictions")
#         )
#       )
#     ),
#     mainPanel(
#       tabBox(id = "predict.tab", selected = "test.set", side = "right", width = 12,
#         tabPanel("Predictions", value = "pred.res",
#           DT::dataTableOutput("predoverview")
#         ),
#         tabPanel("Test Set", value = "test.set",
#           DT::dataTableOutput("import.pred.preview")
#         )
#       )
#     )
#   )
# )

# tabpanel.performance = fluidPage(theme = shinytheme("united"),
#   tabBox(id = "performance.tab", selected = "Performance", width = 12,
#     tabPanel("Performance",
#       fluidRow(
#         htmlOutput("performance.text"),
#         column(width = 12, align = "center",
#           uiOutput("perf.measures.sel"),
#           actionButton("performance.run", label = "Measure Performance"),
#           br(),
#           br(),
#           uiOutput("performance.overview", align = "left")
#         )
#       )
#     ),
#     tabPanel("Visualisations",
#       htmlOutput("visualisation.text"),
#       fluidRow(
#         column(width = 12,
#           uiOutput("visualisation.selection"),
#           uiOutput("predictionplot.settings")
#         )
#       ),
#       fluidRow(
#         column(width = 12,
#           verbatimTextOutput("confusion.matrix")
#         )
#       ),
#       fluidRow(
#         column(width = 12,
#           plotOutput("prediction.plot")
#         ),
#         column(width = 12,
#           plotOutput("prediction.plot.validation")
#         )
#       )
#     )
#   )
# )








#  tabpanel.modelling = fluidRow(
#   tabBox(width = 12,
#     tabPanel(title = "Train",
#       # fluidRow(
#       fluidRow(
#         htmlOutput("train.text"),
#         column(width = 4, align = "center",
#           makeSidebar(
#             uiOutput("train.learner.sel"),
#             br(),
#             hr(),
#             uiOutput("model.overview")
#           )
#         ),
#         column(width = 8, align = "center",
#           fluidRow(uiOutput("model.params"))
#         )
#       )
#     ),
#     tabPanel(title = "Predict",
#       htmlOutput("prediction.text"),
#       fluidRow(
#         column(width = 3, align = "center",
#           makeSidebar(
#             selectInput("newdatatype", "Predict on:", choices = c("task", "new data"),
#               selected = "task"),
#             conditionalPanel("input.newdatatype == 'new data'",
#               selectInput("import.pred.type", "Type", selected = "mlr",
#                 choices = c("mlr", "OpenML", "CSV", "ARFF"))
#             ),
#             uiOutput("import.pred.ui"),
#             actionButton("predict.run", label = "Predict"),
#             br(),
#             br()
#           )
#         ),
#         column(width = 9, align = "center",

#       )
#     ),
#     tabPanel(title = "Performance",
#       htmlOutput("performance.text"),
#       fluidRow(
#         column(width = 12, align = "center",
#           uiOutput("perf.measures.sel"),
#           actionButton("performance.run", label = "Measure Performance"),
#           br(),
#           br(),
#           uiOutput("performance.overview", align = "left")
#         )
#       )
#     ),
#     tabPanel("Visualisations",
#       htmlOutput("visualisation.text"),
#       fluidRow(
#         column(width = 12,
#           uiOutput("visualisation.selection"),
#           uiOutput("predictionplot.settings")
#         )
#       ),
#       fluidRow(
#         column(width = 12,
#           verbatimTextOutput("confusion.matrix")
#         )
#       ),
#       fluidRow(
#         column(width = 12,
#           plotOutput("prediction.plot")
#         )
#       )
#     )
#   )
# )
