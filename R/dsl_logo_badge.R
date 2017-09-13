
#' JHU DSL Badge
#'
#' @return Character vector
#' @export
#' @param alt_text Alternate text for the badge if not found
#' @param logo path to the logo
dsl_badge = function(
  logo = dsl_logo_url(),
  alt_text = "JHU Data Science") {
  x = paste0("[![", alt_text, "](", logo, ")](",
             "http://jhudatascience.org/)")
  return(x)
}