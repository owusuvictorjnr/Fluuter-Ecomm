const express = require('express')
const User = require('../models/user')

const authRouter = express.Router()

authRouter.post('/api/signup', async (req, res) => {
  const { name, email, password } = req.body

  const existUser = await User.findOne({ email })
  if (existUser) {
    return res.status(400).json({ msg: 'Email already exists' })
  }

  let user = new User({
    email,
    password,
    name,
  })
  user = await user.save()
})

module.exports = authRouter
