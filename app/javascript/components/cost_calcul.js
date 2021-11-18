const calcul = () => {
  const costElement = document.querySelector(".cost")
  const startDateInput = document.getElementById("booking_start_date")
  const endDateInput = document.getElementById("booking_end_date")

  const elementPriceByDay = document.getElementById("new_booking")
  const priceByDay = parseInt(elementPriceByDay.dataset.pricebyday, 10)

  const startDate = new Date(startDateInput.value)
  const endDate = new Date(endDateInput.value)
  const cost = (((endDate - startDate) / 24 / 60 / 60 / 1000) + 1) * priceByDay

  if (cost >= priceByDay) {
    costElement.innerText = `${cost} €`
    document.querySelector(".submit").disabled = false;
  } else {
    document.querySelector(".submit").disabled = true;
  }
}

const costCalcul = () => {
  const element = document.getElementById("new_booking")
  if (!element) return

  const startDate = document.getElementById("booking_start_date")
  const endDate = document.getElementById("booking_end_date")
  startDate.addEventListener("change", calcul)
  endDate.addEventListener("change", calcul)
};

export {  costCalcul }
