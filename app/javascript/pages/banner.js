import Typed from 'typed.js';

function loadDynamicBannerText() {
  if (document.getElementById("tagline")) {
    new Typed('#tagline', {
      strings: ["Change your night-life", "Learn some amazing new recipes"],
      typeSpeed: 50,
      loop: true
    });
  }
}

export { loadDynamicBannerText };