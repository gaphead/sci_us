import "bootstrap";

function myFunction() {
  const favorite = document.querySelector("#fa-star");
  favorite.classList.toggle("fa-rocket:hover");
}

const clicked = document.querySelector("#fa-star")
if (clicked !== null) {
  clicked.addEventListener("click", (event) => {
    clicked.classList.toggle("fa-rocket:hover fa-star");
  })
}

// document.getElementById("star").addEventListener("click", displayStar)


// function displayStar() {
//   document.getElementById("star").classList.toggle("fa-rocket-click");
// }
