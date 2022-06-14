// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

console.log('Hello from application.js')
window.onload=function(){

    const bodyContent = document.querySelector("#content1");
    const newContent = document.querySelector("#author");
    
    const button1 = document.querySelector('#read-more');
    
    button1.addEventListener('click',()=>{
        // newContent.innerHTML = "Jemimah chepyego";
        if (bodyContent.className == "article"){
            bodyContent.className = ""
            button1.innerHTML = "show more";
        } else{
            newContent.innerHTML = " Author: Jemimah chepyego, from Kenya"

            button1.innerHTML = "show less";
        }
    });  }


