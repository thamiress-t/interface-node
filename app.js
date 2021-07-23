const express = require('express')
const app = express();

app.get("/", function(req,res){
    res.sendFile(__dirname + "/html/index.html")
})

app.get("/oi", function(req,res){
    res.sendFile(__dirname + "/html/hello.html")
})

app.listen(8080, ()=> console.log("Servidor rodando na porta 8080!"))