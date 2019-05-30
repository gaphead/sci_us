const filter = () => {
  const id = document.querySelectorAll(".filter")
  id.forEach(icon => icon.addEventListener("click", () => {
    // add class list to toggle color of icon id.classList.toggle("active")
    const category = icon.getAttribute("title").toLowerCase();
    console.log(category)
    const cards = document.querySelectorAll(".card")
    cards.forEach(card => {
      card.classList.contains(category) ? card.classList.remove("hide") : card.classList.add("hide")

    })
  }))
}

export default filter;
filter();
