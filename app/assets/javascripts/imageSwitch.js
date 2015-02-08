function imageSwitch(e) {

  var large = e.parentNode.parentNode.querySelector('.image-large');

  large.innerHTML = ""
  var img = e.getAttribute("src");
  var newPath = img.replace("/thumb/", "/large/");

  //Set Large image
  var newImg = document.createElement("img");
  large.appendChild(newImg);
  newImg.setAttribute("src", newPath)

}