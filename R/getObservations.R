

#' @title getObservations
#'
#' @description Get observations based on criteria
#'
#' @return Array of observations
#' @export
#' @importFrom httr GET
#' @importFrom stringr str_interp
#' @importFrom httr content
#' @importFrom jsonlite toJSON
#' @importFrom httr add_headers
#' @examples
#' getPackageInformation('7a84449a-5b34-41e6-94c9-bfd0570ed7ef')
#'
#'
getObservations <- function(
  env = 'production',
  project = '7a84449a-5b34-41e6-94c9-bfd0570ed7ef'
) {

  ## Setup server to connect to

  if (env == 'alpha'){
    base = 'api.citscialpha.org'
  } else if (env == 'beta') {
    base = 'api.citscibeta.org'
  } else {
    base = 'api.citsci.org'
  }
  url = str_interp(
    "https://${base}/projects/${project}/observations?location.name=&order[observedAt]=desc&itemsPerPage=10&page=2",
    list(base = base, project = project)
  )
  observationsRequest <- httr::GET(
    url = url,
    add_headers(.headers = c("Content-Type"="application/json"))
  )
  #observationsRequest
  observationJSON = content(observationsRequest, as='parsed', type='application/json')
  observationJSON
}
