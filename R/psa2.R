## devtools::use_data(psa2b)

#' CARET PSA Biomarker data - Etzioni substudy (454 control patients; 229
#' patients with prostate cancer)
#'
#' \itemize{
#'   \item id patient id; sequential, randomly assigned
#'   \item d Prostate Ca (0 no 1 yes). Non-cancer patients are controls matched
#'   to cases on age and # sample.
#'   \item t time (years) relative to prostate Ca Dx
#'   \item fpsa free PSA
#'   \item tpsa total PSA
#'   \item age patient age at blood draw
#'   }
#' @name psa2b
#' @docType data
#' @references
#' Etzioni R, Pepe M, Longton G, Hu C, Goodman G (1999). Incorporating the time
#' dimension in receiver operating characteristic curves: A case study of
#' prostate cancer. Medical Decision Making 19:242-51.
#' \url{https://research.fredhutch.org:443/diagnostic-biomarkers-center/en/datasets.html}
#' \url{https://journals.sagepub.com/doi/abs/10.1177/0272989x9901900303}
#' @keywords data
NULL
