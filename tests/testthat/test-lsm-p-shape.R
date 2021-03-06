context("patch level shape metric")

fragstats_patch_landscape_shape <- fragstats_patch_landscape$SHAPE
landscapemetrics_patch_landscape_shape <- lsm_p_shape(landscape)

test_that("lsm_p_shape results are equal to fragstats", {
    expect_true(all(fragstats_patch_landscape_shape %in%
                        round(landscapemetrics_patch_landscape_shape$value, 4)))
})

test_that("lsm_p_shape is typestable", {
    expect_is(landscapemetrics_patch_landscape_shape, "tbl_df")
    expect_is(lsm_p_shape(landscape_stack), "tbl_df")
    expect_is(lsm_p_shape(list(landscape, landscape)), "tbl_df")
    expect_is(lsm_p_shape(landscape_stars), "tbl_df")
})

test_that("lsm_p_shape returns the desired number of columns", {
    expect_equal(ncol(landscapemetrics_patch_landscape_shape), 6)
})

test_that("lsm_p_shape returns in every column the correct type", {
    expect_type(landscapemetrics_patch_landscape_shape$layer, "integer")
    expect_type(landscapemetrics_patch_landscape_shape$level, "character")
    expect_type(landscapemetrics_patch_landscape_shape$class, "integer")
    expect_type(landscapemetrics_patch_landscape_shape$id, "integer")
    expect_type(landscapemetrics_patch_landscape_shape$metric, "character")
    expect_type(landscapemetrics_patch_landscape_shape$value, "double")
})

