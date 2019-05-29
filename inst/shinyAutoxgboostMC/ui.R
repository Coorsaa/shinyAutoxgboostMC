require(shiny)
require(shinydashboard)
require(shinyjs)
require(shinyBS)
require(DT)
require(plotly)
require(shinythemes)
require(shinyWidgets)

source("./helpers/helpers_ui.R", local = TRUE)$value

ui.files = list.files(path = "./ui", pattern = "*.R")
ui.files = paste0("ui/", ui.files)

for (i in seq_along(ui.files)) {
  source(ui.files[i], local = TRUE)
}

shinyUI(
  tagList(
    useShinyjs(),
    loading.screens,
    div(id = "app-content",
      navbarPage(title = div(img(src = "hexagon.svg", height = 35)),
        theme = shinytheme("united"), id = "top-nav",
        tabPanel("Import", tabpanel.import,
          icon = icon("folder-open")),
        tabPanel("Data Summary", tabpanel.summary,
            icon = icon("bar-chart")),
        tabPanel("Task", tabpanel.task, icon = icon("flag")),
        tabPanel("Train", tabpanel.train, icon = icon("graduation-cap")),
        tabPanel(title = "hide_me"),
        tabPanel(title = "", icon = icon("github", "fa-lg"),
          value = "https://github.com/pfistfl/autoxgboostMC"),

        footer = tagList(
          includeScript("scripts/top-nav-links.js"),
          includeScript("scripts/app.js"),
          tags$link(rel = "stylesheet", type = "text/css",
            href = "https://fonts.googleapis.com/css?family=Roboto"),
          tags$link(rel = "stylesheet", type = "text/css",
            href = "AdminLTE.css"),
          tags$link(rel = "stylesheet", type = "text/css",
            href = "custom.css"),
          tags$footer(title = "", # align = "right",
            tags$p(id = "copyright",
              tags$img(icon("copyright")),
              2019,
              tags$a(href = "https://github.com/coorsaa",
                target = "_blank", "Stefan Coors, "),
              tags$a(href = "https://github.com/pfistfl",
                target = "_blank", "Florian Pfisterer"),
              " (Working Group Computational Statistics, LMU Munich)"
            ),
            tags$p(id = "help_toggler",
              bsButton(inputId = "show_help", label = "show help",
                type = "toggle", icon = icon("question-circle"))
            )
          )
        ), windowTitle = "shinyAutoxgboostMC"
      )
    )
  )
)
