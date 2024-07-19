require("../output/Main/index.js").main();
import "../src/App/styles.css"
document.addEventListener("DOMContentLoaded", function() {
  const cardElement = document.querySelector('.fade-in-card');

  let startX;
  let endX;

  cardElement.addEventListener('touchstart', function(event) {
      startX = event.touches[0].clientX;
  });

  cardElement.addEventListener('touchmove', function(event) {
      endX = event.touches[0].clientX;
  });

  cardElement.addEventListener('touchend', function() {
      const diffX = startX - endX;
      if (diffX > 50) { // Swipe left detection threshold
          clearCard();
      }
  });

  function clearCard() {
      const backButton = document.getElementById('back-button');
      if (backButton) {
          backButton.click(); // Simulate the back button click
      }
  }
});
