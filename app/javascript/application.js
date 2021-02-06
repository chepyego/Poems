//= require materialize
//require("@rails/ujs").start()
//require("@turbolinks").start()
//require("@rails/activestorage").start
//require("channels")
//require("jquery")

import 'materialize-css/dist/js/materialize'


window.addEventListener("load", () =>{
    const links = document.querySelectorAll("a[data-remote]");
    links.forEach((element) =>{

        Element.addEventListener("ajax:success", ()=>{
            alert("The article was deleted");
    });
    
    });
});