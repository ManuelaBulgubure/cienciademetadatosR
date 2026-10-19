leer_datos <- function(id_estacion, destino) {
  url_NH <- paste0(
    "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/",
    id_estacion, ".csv"
  )
  utils::download.file(url = url_NH, destfile = destino, mode = "wb", quiet = TRUE)
  readr::read_csv(destino, show_col_types = FALSE)
}
