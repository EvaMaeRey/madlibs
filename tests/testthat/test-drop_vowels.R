test_that(
  desc = "drop_vowels returns character string",
  code = {

    madlibs:::create_wandered_lonely() %>% drop_vowels() %>%
      is.character() -> out
    expect_equal(out, TRUE)

  }
)
