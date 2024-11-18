import express from 'express'

const app = express()
const port = process.env.PORT || 3000

app.use(express.json())

app.get('/',(req,res)=>{
    res.status(201).send('hello docker')
})

app.listen(port,()=>{
    console.log(`App is running on port ${port}`)
})

