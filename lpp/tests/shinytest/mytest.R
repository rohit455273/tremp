app <- ShinyDriver$new("../../")
app$snapshotInit("mytest")

app$snapshot()

app$setInputs(x=1,y=1,z=1)
app$snapshot()
