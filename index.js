import express from 'express'

const app = express()
const port = process.env.PORT || 5500

app.use(express.json())

app.get('/',(req,res)=>{
    res.status(201).send('hello nodejs and docker')
})

app.listen(port,()=>{
    console.log(`App is running on port ${port}`)
})

