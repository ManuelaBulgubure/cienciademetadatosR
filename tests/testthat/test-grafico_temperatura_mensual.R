test_that("devuelve un grafico de ggplot2", {
  grafico <- grafico_temperatura_mensual(estaciones, ids = "NH0472")
  expect_s3_class(grafico, "ggplot")
})

test_that("grafica 12 meses por estacion", {
  grafico <- grafico_temperatura_mensual(estaciones, ids = c("NH0472", "NH0910"),
                                         colores = c("steelblue", "firebrick"))
  datos_grafico <- ggplot2::layer_data(grafico)

  expect_equal(nrow(datos_grafico), 24)
  expect_equal(sort(unique(datos_grafico$x)), 1:12)
})

test_that("usa los colores indicados", {
  grafico <- grafico_temperatura_mensual(estaciones, ids = c("NH0472", "NH0910"),
                                         colores = c("steelblue", "firebrick"))
  colores_usados <- unique(ggplot2::layer_data(grafico)$colour)

  expect_setequal(colores_usados, c("steelblue", "firebrick"))
})

test_that("sin colores elige uno por estacion", {
  grafico <- grafico_temperatura_mensual(estaciones, ids = c("NH0472", "NH0910", "NH0046"))
  colores_usados <- unique(ggplot2::layer_data(grafico)$colour)

  expect_length(colores_usados, 3)
})
