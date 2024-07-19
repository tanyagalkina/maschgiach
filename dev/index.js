require("../output/Main/index.js").main();
import "../src/App/styles.css"

// if ('serviceWorker' in navigator) {
//   window.addEventListener('load', function() {
//     navigator.serviceWorker.register(new URL('./service-worker.js', import.meta.url)).then(function(registration) {
//       // Registration was successful
//       console.log('ServiceWorker registration successful with scope: ', registration.scope);
//     }, function(err) {
//       // registration failed :(
//       console.log('ServiceWorker registration failed: ', err);
//     });
//   });
// }

document.addEventListener("DOMContentLoaded", function() {
  const cardElement = document.querySelector('.fade-in');

  let startX, startY;
  let endX, endY;

  cardElement.addEventListener('touchstart', function(event) {
      startX = event.touches[0].clientX;
      startY = event.touches[0].clientY;
      cardElement.style.transition = 'none'; // Disable transition during swipe
  });

  cardElement.addEventListener('touchmove', function(event) {
      endX = event.touches[0].clientX;
      endY = event.touches[0].clientY;
      const diffX = startX - endX;
      const diffY = startY - endY;
      if (Math.abs(diffX) > Math.abs(diffY) && diffX > 0) { // Ensure swipe is predominantly horizontal and to the left
          cardElement.style.transform = `translateX(-${diffX}px)`;
          cardElement.style.opacity = `${1 - diffX / cardElement.offsetWidth}`;
      }
  });

  cardElement.addEventListener('touchend', function() {
      const diffX = startX - endX;
      const threshold = cardElement.offsetWidth / 4; // Reduced swipe threshold to a quarter of the card's width
      cardElement.style.transition = 'transform 0.3s ease, opacity 0.3s ease'; // Re-enable transition after swipe

      if (diffX > threshold) {
          cardElement.style.transform = `translateX(-${cardElement.offsetWidth}px)`;
          cardElement.style.opacity = '0';

          // Trigger clear card after the transition
          setTimeout(() => {
              clearCard();
          }, 300); // Duration should match the CSS transition duration
      } else {
          cardElement.style.transform = `translateX(0)`;
          cardElement.style.opacity = '1';
      }
  });

  function clearCard() {
      const backButton = document.getElementById('back-button');
      if (backButton) {
          backButton.click(); // Simulate the back button click
      }
  }
});
