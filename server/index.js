const express = require('express')
const mongoose = require('mongoose')
const bodyParser = require('body-parser')

const app = express()
port = 4000

app.listen(port, (res) => {
    console.log('Listening on port ', port)
})

mongoose.connect('mongodb://localhost:27017/students')
