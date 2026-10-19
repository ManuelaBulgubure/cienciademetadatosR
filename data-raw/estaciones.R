## Código para preparar el dataset `estaciones`
## Se corre una sola vez: source("data-raw/estaciones.R")

estaciones <- readr::read_csv("datos/datos_estaciones.csv", show_col_types = FALSE) |>
  dplyr::mutate(fecha = as.Date(fecha)) |>
  dplyr::filter(lubridate::year(fecha) >= 2010, lubridate::year(fecha) <= 2017) |>
  dplyr::select(id, fecha, temperatura_abrigo_150cm,
                temperatura_abrigo_150cm_maxima, temperatura_abrigo_150cm_minima)

usethis::use_data(estaciones, overwrite = TRUE)
