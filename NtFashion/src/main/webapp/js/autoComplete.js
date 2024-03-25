let names = [
    "Ayla",
    "Jake",
    "Sean",
    "Henry",
    "Brad",
    "Stephen",
    "Taylor",
    "Timmy",
    "Cathy",
    "John",
    "Amanda",
    "Amara",
    "Sam",
    "Sandy",
    "Danny",
    "Ellen",
    "Camille",
    "Chloe",
    "Emily",
    "Nadia",
    "Mitchell",
    "Harvey",
    "Lucy",
    "Amy",
    "Glen",
    "Peter",
];

let sortedNames = names.sort();
let input = document.getElementById("input");

function displayNames(value) {
    input.value = value;
    removeElements();
}

function removeElements() {
    let items = document.querySelectorAll(".list-items");
    items.forEach((item) => {
        item.remove();
    });
}

input.addEventListener("keyup", (e) => {
    removeElements();
    for (let i of sortedNames) {

        if (
            i.toLowerCase().startsWith(input.value.toLowerCase()) &&
            input.value != ""
        ) {
            let listItem = document.createElement("li");
            listItem.classList.add("list-items");
            listItem.style.cursor = "pointer";
            listItem.setAttribute(
                "onclick",
                "displayNames('" + i + "')"
            );
            let word =
                "<b>" +
                i.substring(0, input.value.length) +
                "</b>";
            word += i.substring(input.value.length);
            console.log(word);
            listItem.innerHTML = word;
            document.querySelector(".listItem").appendChild(listItem);
        }
    }
});