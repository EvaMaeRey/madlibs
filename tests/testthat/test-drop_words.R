test_that(
  desc = "drop vowels returns character string",
  code = {

    madlibs:::create_wandered_lonely() %>% drop_words() %>%
      is.character() -> out
    expect_equal(out, TRUE)

  }
)
