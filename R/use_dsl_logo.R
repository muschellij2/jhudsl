#' Use JHU DSL Logo
#'
#' @param base_path Path to root directory
#'
#' @return Invisible TRUE
#' @export
use_dsl_logo = function(
  base_path = ".") {
  logo = system.file("jhudsl_logo.png", package = "jhudsl")

  usethis::use_build_ignore(
    files = logo,
    base_path = base_path)

  outfile = file.path(base_path, basename(logo))
  msg = paste0("Please add the following to your REAMDE.[R]md\n",
               "![](", basename(logo), ")")
  message(msg)
  file.copy(logo, outfile, overwrite = TRUE)
  return(invisible(TRUE))
}

