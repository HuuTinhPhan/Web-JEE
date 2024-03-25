// Select all filter buttons and filterable cards
const filterButtons = document.querySelectorAll('.filter li');
const filterableCards = document.querySelectorAll('.filterable-cards tr');

// Define the filterCards function
const filterCards = (e) => {
    // for (let i = 0; i < filterButtons.length; i++) {
    //     if (filterButtons[i].classList.contains('active')) {
    //         filterButtons[i].classList.remove('active');
    //     }
    // }
    // e.target.classList.add('active');

    // Iterate over each filterable card
    filterableCards.forEach(tr => {
        // Add "hide" class to hide the card initially
        tr.classList.add('hide');
        if (tr.dataset.name === e.target.dataset.name || e.target.dataset.name === ("all")) {
            tr.classList.remove('hide');
        }
    })
};
// Add click event listener to each filter button
// console.log(filterButtons, filterableCards);
filterButtons.forEach(button => button.addEventListener("click", filterCards));


