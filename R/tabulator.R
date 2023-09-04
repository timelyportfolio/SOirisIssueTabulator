#' @import htmlwidgets
#' @export
tabulator <- function(data = NULL, width = NULL, height = NULL, elementId = NULL) {

  x = list(
    data = data
  )

  ## Add this line to template
  attr(x, 'TOJSON_ARGS') <- list(dataframe = "rows")

  htmlwidgets::createWidget(
    name = 'tabulator',
    x,
    width = width,
    height = height,
    package = 'SOirisIssueTabulator',
    elementId = elementId
  )
}

### Nothing to change after

#' @name tabulator-shiny
#' @export
tabulatorOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'tabulator', width, height, package = 'SOirisIssueTabulator')
}

#' @rdname tabulator-shiny
#' @export
renderTabulator <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) }
  htmlwidgets::shinyRenderWidget(expr, tabulatorOutput, env, quoted = TRUE)
}
