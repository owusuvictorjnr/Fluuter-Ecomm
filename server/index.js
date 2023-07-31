const express = require('express')
const mongoose = require('mongoose')
const authRouter = require('./routes/auth')

// Init
const PORT = 3000
const app = express()
const DB =
  'mongodb+srv://vitech:Pinkhode@cluster0.8trahms.mongodb.net/?retryWrites=true&w=majority'
// Middleware
app.use(authRouter)

// Coonection
mongoose
  .connect(DB)
  .then(() => {
    console.log('Connection successful')
  })
  .catch((err) => {
    console.log(err)
  })

// Creating API
app.listen(PORT, '0.0.0.0', () => {
  console.log(`Connected at port ${PORT}`)
})
