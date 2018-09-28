# Define server function
#' Title Server function that returns the weather condition
#'
#' @param input for the server
#' @param output for server
#' @importFrom shiny  renderTable shinyApp
#' @importFrom rLab5 get_data
#'
#'
  server <- function(input, output) {
    output$table_output = shiny::renderTable(rLab5::get_data(input$city, 1))}

  # Create a Shiny app object
  shiny::shinyApp(ui = ui, server = server)
