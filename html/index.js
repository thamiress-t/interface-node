// import native addon
const addonGreet = require('bindings')('greet');

var nome = document.querySelector("#nome").value
console.log(addonGreet.greetHello("nome"))

var salve = document.querySelector("#output").value
console.log(addonGreet.greetHello(nome))

function ola(){
    salve.innerHTML = addonGreet.greetHello(nome)
}


// expose module API
exports.hello = addonGreet.greetHello;