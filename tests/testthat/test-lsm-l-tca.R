context("landscape level tca metric")

landscapemetrics_landscape_landscape_tca <- lsm_l_tca(landscape)

test_that("lsm_c_tca is typestable", {
    expect_is(landscapemetrics_landscape_landscape_tca, "tbl_df")
    expect_is(lsm_l_tca(landscape_stack), "tbl_df")
    expect_is(lsm_l_tca(list(landscape, landscape)), "tbl_df")
})

test_that("lsm_p_area returns the desired number of columns", {
    expect_equal(ncol(landscapemetrics_landscape_landscape_tca), 6)
})

test_that("lsm_p_area returns in every column the correct type", {
    expect_type(landscapemetrics_landscape_landscape_tca$layer, "integer")
    expect_type(landscapemetrics_landscape_landscape_tca$level, "character")
    expect_type(landscapemetrics_landscape_landscape_tca$class, "integer")
    expect_type(landscapemetrics_landscape_landscape_tca$id, "integer")
    expect_type(landscapemetrics_landscape_landscape_tca$metric, "character")
    expect_type(landscapemetrics_landscape_landscape_tca$value, "double")
})

