# See ?testServer for more information
testServer(exampleModuleServer, {
  # Set initial value of a button
  session$setInputs(x=1,y=1,z=1)

  # Check the value of the reactiveVal `count()`
  expect_equal(output$out, 0)
  # Check the value of the renderText()

})
