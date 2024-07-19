require("../output/Main/index.js").main();
import "../src/App/styles.css"
  // document.addEventListener("DOMContentLoaded", function() {
  //     const cardElement = document.querySelector('.fade-in-card');

  //     let startX, startY, startTime;
  //     let endX, endY, endTime;
  //     const swipeThreshold = 50; // Swipe left detection threshold
  //     const minSwipeDistance = 30; // Minimum distance for a valid swipe
  //     const maxTapDuration = 200; // Maximum duration to be considered a tap in milliseconds

  //     cardElement.addEventListener('touchstart', function(event) {
  //         startX = event.touches[0].clientX;
  //         startY = event.touches[0].clientY;
  //         startTime = new Date().getTime();
  //         cardElement.style.transition = 'none'; // Disable transition during swipe
  //     });

  //     cardElement.addEventListener('touchmove', function(event) {
  //         endX = event.touches[0].clientX;
  //         endY = event.touches[0].clientY;
  //         const diffX = startX - endX;
  //         const diffY = startY - endY;
  //         if (Math.abs(diffX) > Math.abs(diffY) && Math.abs(diffX) > minSwipeDistance) {
  //             cardElement.style.transform = `translateX(-${diffX}px)`;
  //             cardElement.style.opacity = `${1 - Math.abs(diffX) / cardElement.offsetWidth}`;
  //         }
  //     });

  //     cardElement.addEventListener('touchend', function() {
  //         endTime = new Date().getTime();
  //         const diffX = startX - endX;
  //         const diffY = startY - endY;
  //         const timeDiff = endTime - startTime;

  //         cardElement.style.transition = 'transform 0.3s ease, opacity 0.3s ease'; // Re-enable transition after swipe

  //         if (timeDiff < maxTapDuration && Math.abs(diffX) < minSwipeDistance && Math.abs(diffY) < minSwipeDistance) {
  //             // Considered as a tap, do nothing
  //             cardElement.style.transform = 'translateX(0)';
  //             cardElement.style.opacity = '1';
  //         } else if (Math.abs(diffX) > swipeThreshold && Math.abs(diffX) > Math.abs(diffY)) {
  //             // Valid swipe left
  //             cardElement.style.transform = `translateX(-${cardElement.offsetWidth}px)`;
  //             cardElement.style.opacity = '0';

  //             // Trigger clear card after the transition
  //             setTimeout(() => {
  //                 clearCard();
  //             }, 300); // Duration should match the CSS transition duration
  //         } else {
  //             // Reset position if not a valid swipe
  //             cardElement.style.transform = 'translateX(0)';
  //             cardElement.style.opacity = '1';
  //         }
  //     });

  //     function clearCard() {
  //         const backButton = document.getElementById('back-button');
  //         if (backButton) {
  //             backButton.click(); // Simulate the back button click
  //         }
  //     }
  // });
