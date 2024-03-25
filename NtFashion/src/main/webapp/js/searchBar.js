const products = [
    {
        image: 'admin/image/products-no-bg/insta_1_img.png',
        title: 'Z Flip Foldable Mobile',
        price: 120,
        category: "Women's Clothing",
        type: 'Shirt'
    },
    {
        image: 'image/gg-2.jpg',
        title: 'Wireless Bluetooth Headphones',
        price: 49.99,
        category: 'Electronics',
        type: 'Accessory'
    },
    {
        image: 'image/gg-3.jpg',
        title: 'Classic Leather Watch',
        price: 89.99,
        category: "Men's Accessories",
        type: 'Watch'
    },
    {
        image: 'image/gg-4.jpg',
        title: 'Sports Water Bottle',
        price: 12.99,
        category: 'Sports & Outdoors',
        type: 'Accessory'
    },
    {
        image: 'image/gg-5.jpg',
        title: 'Stainless Steel Kitchen Knife Set',
        price: 39.99,
        category: 'Home & Kitchen',
        type: 'Kitchenware'
    },
    {
        image: 'image/gg-6.jpg',
        title: 'Cotton Blend Hoodie',
        price: 29.99,
        category: "Men's Clothing",
        type: 'Hoodie'
    },
    {
        image: 'image/gg-7.jpg',
        title: 'Leather Crossbody Bag',
        price: 79.99,
        category: "Women's Accessories",
        type: 'Bag'
    },
    {
        image: 'image/gg-8.jpg',
        title: 'Dumbbell Set with Rack',
        price: 149.99,
        category: 'Sports & Outdoors',
        type: 'Fitness Equipment'
    },
    {
        image: 'image/gg-9.jpg',
        title: 'Striped Cotton T-Shirt',
        price: 19.99,
        category: "Men's Clothing",
        type: 'Shirt'
    },
    {
        image: 'image/gg-10.jpg',
        title: 'Portable Bluetooth Speaker',
        price: 69.99,
        category: 'Electronics',
        type: 'Speaker'
    }
];

const categories = [...new Set(product.map((item) => { return item }))]

document.getElementById('searchBar').addEventListener('keyup', (e) => {
    const searchData = e.target.value.toLowerCase();
    const filteredData = categories.filter((item) => {
        return (
            item.title.toLowerCase().includes(searchData)
        )
    })
    displayItem(filteredData)
});

const displayItem = (items) => {
    document.getElementById('root').innerHTML = items.map((item) => {
        var { image, title, price } = item;
        return (
            `<tr class="" data-name="shirts">
                <td class="align-middle">
                    <a class="center" href="">
                    <img class="border-radius-lg" src=${image} alt="" width="53" />
                    </a>
                </td>
                <td class="title align-middle pe-5">
                    <a class="fw-semibold line-clamp-3 mb-0 white-space-nowrap" href="">${title}
                    </a>
                </td>
                <td class="price align-middle white-space-nowrap fw-bold ">${price}</td>
                <td class="category align-middle white-space-nowrap fs-9 fw-semibold">${category}</td>
                <td class="type align-middle white-space-nowrap fs-9 fw-semibold">${type}</td>
            </tr>`
        )
    }).join('')
};
displayItem(categories);
