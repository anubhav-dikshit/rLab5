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

# Define server function
#' Title Server function that returns the weather condition
#'
#' @param input for the server
#' @param output for server
#' @importFrom shiny fluidPage sidebarLayout sidebarPanel textInput selectInput mainPanel textOutput verbatimTextOutput renderText shinyApp
#' @importFrom rLab5 get_data
#'
#'
  server <- function(input, output) {
    output$table_output = shiny::renderTable(rLab5::get_data(input$city, 1))}

  # Create a Shiny app object
  shiny::shinyApp(ui = ui, server = server)
