#' Descargar datos de una estación meteorológica
#'
#' Descarga el archivo con los datos diarios de una estación desde el
#' repositorio del curso, lo guarda en `destino` y lo devuelve como data frame.
#'
#' @param id_estacion Texto con el identificador de la estación
#'   (por ejemplo `"NH0472"`).
#' @param destino Ruta del archivo donde se guardan los datos descargados.
#'
#' @return Un data frame (tibble) con los datos diarios de la estación.
#' @export
#'
#' @examples
#' \donttest{
#' datos <- leer_datos("NH0472", destino = tempfile(fileext = ".csv"))
#' head(datos)
#' }
leer_datos <- function(id_estacion, destino) {
  url_NH <- paste0(
    "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/",
    id_estacion, ".csv"
  )
  utils::download.file(url = url_NH, destfile = destino, mode = "wb", quiet = TRUE)
  readr::read_csv(destino, show_col_types = FALSE)
}
