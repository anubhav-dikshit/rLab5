#' Ui function that sets the ui
#'
#' @importFrom shiny fluidPage sidebarLayout sidebarPanel textInput mainPanel tableOutput
#'
#'

ui <- shiny::fluidPage(
    # Sidebar layout with a input and output definitions
    shiny::sidebarLayout(
      shiny::sidebarPanel(
        # Inputs
        shiny::textInput(inputId = "city",
                  label = "Which city?",
                  value = "Bangalore")
      ),
      # Outputs
      shiny::mainPanel(
        shiny::tableOutput('table_output')
      )
    )
  )