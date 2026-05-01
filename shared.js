/* shared.js — auth guard + nav injection */

(function() {
  // Auth guard
  if (!sessionStorage.getItem('ks_auth')) {
    window.location.href = 'index.html';
  }
})();

function injectNav(activePage) {
  const nav = `
  <nav class="site-nav" id="siteNav">
    <div class="nav-inner">
      <a href="home.html" class="nav-logo">K & S</a>
      <button class="nav-toggle" id="navToggle" aria-label="Menu">
        <span></span><span></span><span></span>
      </button>
      <ul class="nav-links" id="navLinks">
        <li><a href="home.html" class="${activePage==='home'?'active':''}">Home</a></li>
        <li><a href="itinerary.html" class="${activePage==='itinerary'?'active':''}">Itinerary</a></li>
        <li><a href="travel.html" class="${activePage==='travel'?'active':''}">Travel</a></li>
        <li><a href="accommodation.html" class="${activePage==='accommodation'?'active':''}">Stay</a></li>
        <li><a href="dresscode.html" class="${activePage==='dresscode'?'active':''}">Dress Code</a></li>
        <li><a href="about.html" class="${activePage==='about'?'active':''}">About Us</a></li>
        <li><a href="rsvp.html" class="nav-rsvp ${activePage==='rsvp'?'active':''}">RSVP</a></li>
      </ul>
    </div>
  </nav>`;
  document.body.insertAdjacentHTML('afterbegin', nav);

  // Toggle
  document.getElementById('navToggle').addEventListener('click', function() {
    document.getElementById('navLinks').classList.toggle('open');
    this.classList.toggle('open');
  });

  // Scroll effect
  window.addEventListener('scroll', () => {
    document.getElementById('siteNav').classList.toggle('scrolled', window.scrollY > 40);
  });
}