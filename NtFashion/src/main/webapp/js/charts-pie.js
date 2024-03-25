/**
 * For usage, visit Chart.js docs https://www.chartjs.org/docs/latest/
 */
const pieConfig = {
  type: 'doughnut',
  data: {
    labels: ['Shoes', 'Shirts', 'Bags'],
    datasets: [
      {
        data: [10, 30, 60],
        backgroundColor: ['#0694a2', '#1c64f2', '#7e3af2'],
        label: 'Dataset 1',
      },
    ],
  },
  options: {
    title: {
      display: true,
      text: "World Wide Wine Production 2018"
    },
    cutoutPercentage: 70,
    responsive: true,
  },
}

// const pieConfig = {
//   type: 'doughnut',
//   data: {
//     datasets: [
//       {
//         data: [55, 49, 44, 24, 15],
//         /**
//          * These colors come from Tailwind CSS palette
//          * https://tailwindcss.com/docs/customizing-colors/#default-color-palette
//          */
//         backgroundColor: ["#b91d47",
//         "#00aba9",
//         "#2b5797",
//         "#e8c3b9",
//         "#1e7145"],
//         label: 'Dataset 1',
//       },
//     ],
//     labels: ["Italy", "France", "Spain", "USA", "Argentina"],
//   },
//   options: {
//     cutoutPercentage: 90,
//       title: {
//         display: true,
//         text: "World Wide Wine Production 2018"
//       }
//     }
// }


// change this to the id of your chart element in HMTL
const pieCtx = document.getElementById('pie')
window.myPie = new Chart(pieCtx, pieConfig)
