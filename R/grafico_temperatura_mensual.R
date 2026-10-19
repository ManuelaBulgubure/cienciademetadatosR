grafico_temperatura_mensual <- function(ids, colores = NULL, titulo = "Temperatura",
                                        ruta = "datos/datos_estaciones.csv") {

  datos <- readr::read_csv(ruta, show_col_types = FALSE) |>
    dplyr::filter(id %in% ids) |>
    dplyr::mutate(mes = lubridate::month(lubridate::ymd(fecha))) |>
    dplyr::group_by(mes, id) |>
    dplyr::summarise(prom = mean(temperatura_abrigo_150cm, na.rm = TRUE),
                     .groups = "drop")

  if (is.null(colores)) {
    colores <- sample(grDevices::colors(), dplyr::n_distinct(datos$id))
  }

  ggplot2::ggplot(datos, ggplot2::aes(x = mes, y = prom, color = id)) +
    ggplot2::geom_line() +
    ggplot2::scale_color_manual(values = colores) +
    ggplot2::scale_x_continuous(breaks = 1:12) +
    ggplot2::labs(x = "mes", y = "promedio", title = titulo)
}
