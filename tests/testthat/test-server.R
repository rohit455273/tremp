context("app")

testServer(expr = {
  # Set the `size` slider and check the output
  session$setInputs(x = 1,y=1,z=1)
  expect_equal(output$out, 0)

  
})
