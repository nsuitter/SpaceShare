function search() {

  var listing = document.querySelector(".zip");
  var form = document.querySelector(".search-bar");
  var container = document.querySelector(".container");

  form.addEventListener("submit", search);

  function search (e) {
    e.preventDefault();

    container.innerHTML = "";
    var entry = document.querySelector('input[type="num"]');
    zip = parseInt(entry.value)
    var url = "/zips/?z=" + zip;
    ajaxCall.getJSON(url, createMatches)
    entry.value = null;
  }

  function createMatches(json) {
    var matches = json
    matches.forEach(function(match){
    createMatch(match["title"], match["body"], match["zip"], match["id"]);
    });
  }

  function createMatch(title, body, zip, id) {
    var div1 = document.createElement("div");
    var div2 = document.createElement("div");
    var div3 = document.createElement("div");
    var a = document.createElement("a");

    a.textContent = title;
    a.setAttribute("href", "/listings/" + id)

    div3.textContent = body;

    container.appendChild(div1);
    div1.appendChild(div2);
    div1.appendChild(div3);
    div2.appendChild(a);


    div1.classList.add("listing-match");
    div2.classList.add("match-title");
    div3.classList.add("match-body");

  }
}