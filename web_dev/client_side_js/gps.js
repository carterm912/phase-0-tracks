
 function borderChange(){
  var header = document.getElementsByTagName("h1");
   header[0].style.border = "1px solid red";
 }

var button = document.getElementById("button");
button.addEventListener("click", borderChange);