#' @title landscapemetrics
#'
#' @description
#' Calculates landscape metrics for categorical landscape patterns in
#' a tidy workflow. 'landscapemetrics' reimplements the most common metrics from
#' FRAGSTATS and new ones from the current literature on landscape metrics.
#' This package supports raster spatial objects and takes
#' RasterLayer, RasterStacks, RasterBricks or lists of RasterLayer from the
#' 'raster' package as input arguments. It further provides utility functions
#' to visualize patches, select metrics and building blocks to develop new
#' metrics.
#'
#' @name landscapemetrics
#' @docType package
#' @useDynLib landscapemetrics
#' @importFrom Rcpp sourceCpp
# nocov start
"_PACKAGE"

globalVariables(c("class_name",
                  "count",
                  "dist",
                  "extract_id",
                  "id",
                  "landscape",
                  "lsm_abbreviations_names",
                  "layer",
                  "layer2",
                  "level",
                  "metric",
                  "metric_1",
                  "metric_2",
                  "minp",
                  "n",
                  "value",
                  "values",
                  "x",
                  "x_centroid",
                  "y",
                  "y_centroid"))

# nocov end
