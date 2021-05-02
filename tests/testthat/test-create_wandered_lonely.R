test_that(
  desc = "create_wandered_lonely returns character string",
  code = {
    expect_equal(
    madlibs:::create_wandered_lonely() %>% is.character(),
    TRUE)
  }
)


