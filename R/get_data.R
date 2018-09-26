#' Title Function to Get Weather Data for a given city
#'
#' @param input_city The name of the city that weather needs to be fetched
#' @param forecast_days The number of days that need to be forecasted
#'
#' @return current_weather_data
#' @export
#' @importFrom jsonlite fromJSON
#'
#' @examples get_data("Bangalore", 1)
#'
get_data <- function(input_city, forecast_days){

  if(forecast_days == ""){
    forecast_days = 0
  }

  if(is.numeric(input_city) == TRUE){stop("Input city should be character")}
  if(is.numeric(forecast_days) == FALSE){stop("Input days should be numeric")}

  key <- "defd42234deb45f194a112828182609"

  request <- "http://api.apixu.com/v1/forecast.json?key="

  input <- eval(input_city) ## these could be a list

  days <- eval(forecast_days)  ## this can vary, default should be 0

  final_request <- paste(request, key, "&q=", input, "&days=", days, sep="")

  weather_json <- jsonlite::fromJSON(final_request)

  #weather_json <<- weather_json

  current_weather_data <- data.frame(Name = weather_json$location$name,
                                     Current_temp_C = weather_json$current$temp_c,
                                     Current_humidity = weather_json$current$humidity,
                                     Current_wind_kph = weather_json$current$wind_kph)


  return(current_weather_data)
}
