tabla_resumen_temperatura <- function(ids, ruta = "datos/datos_estaciones.csv") {
  readr::read_csv(ruta, show_col_types = FALSE) |>
    dplyr::filter(id %in% ids) |>
    dplyr::group_by(id) |>
    dplyr::summarise(
      temp_minima = min(temperatura_abrigo_150cm_minima, na.rm = TRUE),
      temp_maxima = max(temperatura_abrigo_150cm_maxima, na.rm = TRUE),
      promedio    = mean(temperatura_abrigo_150cm, na.rm = TRUE),
      desvio      = sd(temperatura_abrigo_150cm, na.rm = TRUE),
    )
}
