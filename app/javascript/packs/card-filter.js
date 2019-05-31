const filter = () => {
  const id = document.querySelectorAll(".filter")
  const cards = document.querySelectorAll(".card")

  id.forEach(icon => icon.addEventListener("click", () => {
    // add class list to toggle color of icon id.classList.toggle("active")
    const category = icon.getAttribute("title").toLowerCase();
    console.log(category)
    cards.forEach(card => {
      card.classList.contains(category) ? card.classList.remove("hide") : card.classList.add("hide");
      // if(card.classList.contains(category)) {
      //   card.classList.toggle("hide")
      // }

    })
  }))
};

export default filter;
