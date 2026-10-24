#' Datos meteorologicos diarios de estaciones
#'
#' Registros diarios de variables meteorologicas (temperatura, humedad,
#' viento, radiacion, entre otras) medidos en cinco estaciones.
#'
#' @format Un tibble con 20.425 filas y 35 variables:
#' \describe{
#'   \item{id}{texto con el identificador de la estacion}
#'   \item{fecha}{fecha de la medicion}
#'   \item{temperatura_abrigo_150cm}{temperatura media en el abrigo meteorologico a 150 cm}
#'   \item{temperatura_abrigo_150cm_maxima}{temperatura maxima en el abrigo a 150 cm}
#'   \item{temperatura_abrigo_150cm_minima}{temperatura minima en el abrigo a 150 cm}
#'   \item{temperatura_intemperie_5cm_minima}{temperatura minima a la intemperie a 5 cm}
#'   \item{temperatura_intemperie_50cm_minima}{temperatura minima a la intemperie a 50 cm}
#'   \item{temperatura_suelo_5cm_media}{temperatura media del suelo a 5 cm de profundidad}
#'   \item{temperatura_suelo_10cm_media}{temperatura media del suelo a 10 cm de profundidad}
#'   \item{temperatura_inte_5cm}{temperatura a la intemperie a 5 cm}
#'   \item{temperatura_intemperie_150cm_minima}{temperatura minima a la intemperie a 150 cm}
#'   \item{humedad_suelo}{humedad del suelo}
#'   \item{precipitacion_pluviometrica}{precipitacion registrada por el pluviometro}
#'   \item{granizo}{registro de granizo}
#'   \item{nieve}{registro de nieve}
#'   \item{heliofania_efectiva}{horas de sol efectivas}
#'   \item{heliofania_relativa}{heliofania relativa (proporcion de horas de sol sobre las posibles)}
#'   \item{tesion_vapor_media}{tension de vapor media}
#'   \item{humedad_media}{humedad relativa media}
#'   \item{humedad_media_8_14_20}{humedad relativa media calculada con las observaciones de las 8, 14 y 20 horas}
#'   \item{rocio_medio}{temperatura media del punto de rocio}
#'   \item{duracion_follaje_mojado}{duracion del follaje mojado}
#'   \item{velocidad_viento_200cm_media}{velocidad media del viento a 200 cm}
#'   \item{direccion_viento_200cm}{direccion del viento a 200 cm}
#'   \item{velocidad_viento_1000cm_media}{velocidad media del viento a 1000 cm}
#'   \item{direccion_viento_1000cm}{direccion del viento a 1000 cm}
#'   \item{velocidad_viento_maxima}{velocidad maxima del viento}
#'   \item{presion_media}{presion atmosferica media}
#'   \item{radiacion_global}{radiacion solar global}
#'   \item{radiacion_neta}{radiacion neta}
#'   \item{evaporacion_tanque}{evaporacion medida en tanque}
#'   \item{evapotranspiracion_potencial}{evapotranspiracion potencial}
#'   \item{profundidad_napa}{profundidad de la napa freatica}
#'   \item{horas_frio}{horas de frio acumuladas en el dia}
#'   \item{unidad_frio}{unidades de frio acumuladas en el dia}
#' }
#'
#' @source Repositorio del curso: <https://github.com/rse-r/intro-programacion>
"estaciones"
