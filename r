<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Kane & Sally — Home</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,300;0,400;1,300;1,400&family=Jost:wght@200;300;400&display=swap" rel="stylesheet">
<link rel="stylesheet" href="shared.css">
<style>
  .hero {
    min-height: calc(100vh - var(--nav-h));
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    text-align: center;
    padding: 3rem 2rem;
    position: relative;
    overflow: hidden;
  }

  .hero-bg {
    position: absolute;
    inset: 0;
    background:
      radial-gradient(ellipse at 30% 40%, rgba(201,169,110,0.08) 0%, transparent 55%),
      radial-gradient(ellipse at 75% 70%, rgba(201,169,110,0.06) 0%, transparent 45%);
    pointer-events: none;
  }

  .hero-label {
    font-size: 0.68rem;
    letter-spacing: 0.3em;
    text-transform: uppercase;
    color: var(--gold);
    margin-bottom: 1.5rem;
  }

  .hero-names {
    font-family: 'Cormorant Garamond', serif;
    font-size: clamp(4rem, 14vw, 9rem);
    font-weight: 300;
    font-style: italic;
    color: var(--text);
    line-height: 0.9;
    letter-spacing: -0.01em;
  }

  .hero-names .amp {
    color: var(--gold);
    font-size: 0.7em;
    display: block;
    margin: 0.1em 0;
  }

  .hero-date {
    font-family: 'Jost', sans-serif;
    font-weight: 200;
    font-size: clamp(0.75rem, 2.5vw, 0.9rem);
    letter-spacing: 0.3em;
    text-transform: uppercase;
    color: var(--text-light);
    margin-top: 1.5rem;
  }

  .hero-location {
    font-family: 'Cormorant Garamond', serif;
    font-style: italic;
    font-size: clamp(1rem, 3vw, 1.3rem);
    color: var(--text-light);
    margin-top: 0.4rem;
  }

  .hero-cta {
    margin-top: 3rem;
    display: flex;
    gap: 1rem;
    flex-wrap: wrap;
    justify-content: center;
  }

  .btn-outline {
    border: 1px solid var(--gold);
    color: var(--gold);
    background: transparent;
    text-decoration: none;
    font-family: 'Jost', sans-serif;
    font-weight: 300;
    font-size: 0.72rem;
    letter-spacing: 0.22em;
    text-transform: uppercase;
    padding: 0.9rem 2.2rem;
    transition: all 0.3s;
    display: inline-block;
  }

  .btn-outline:hover {
    background: var(--gold);
    color: var(--cream);
  }

  .btn-filled {
    border: 1px solid var(--gold);
    color: var(--cream);
    background: var(--gold);
    text-decoration: none;
    font-family: 'Jost', sans-serif;
    font-weight: 300;
    font-size: 0.72rem;
    letter-spacing: 0.22em;
    text-transform: uppercase;
    padding: 0.9rem 2.2rem;
    transition: all 0.3s;
    display: inline-block;
  }

  .btn-filled:hover {
    background: transparent;
    color: var(--gold);
  }

  .scroll-hint {
    position: absolute;
    bottom: 2rem;
    left: 50%;
    transform: translateX(-50%);
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 0.5rem;
    opacity: 0.5;
  }

  .scroll-hint span {
    font-size: 0.62rem;
    letter-spacing: 0.2em;
    text-transform: uppercase;
    color: var(--text-light);
  }

  .scroll-arrow {
    width: 1px;
    height: 30px;
    background: linear-gradient(to bottom, var(--gold), transparent);
    animation: scrollPulse 2s infinite;
  }

  @keyframes scrollPulse {
    0%, 100% { opacity: 0.3; transform: scaleY(0.8); }
    50% { opacity: 1; transform: scaleY(1); }
  }

  /* Quick info strip */
  .quick-info {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    border-top: 1px solid rgba(201,169,110,0.2);
    border-bottom: 1px solid rgba(201,169,110,0.2);
    max-width: 1100px;
    margin: 0 auto;
  }

  .quick-info-item {
    padding: 2.5rem 2rem;
    text-align: center;
    position: relative;
  }

  .quick-info-item:not(:last-child)::after {
    content: '';
    position: absolute;
    right: 0; top: 20%; bottom: 20%;
    width: 1px;
    background: rgba(201,169,110,0.2);
  }

  .qi-label {
    font-size: 0.65rem;
    letter-spacing: 0.22em;
    text-transform: uppercase;
    color: var(--gold);
    margin-bottom: 0.7rem;
  }

  .qi-value {
    font-family: 'Cormorant Garamond', serif;
    font-size: clamp(1.1rem, 3vw, 1.5rem);
    font-weight: 300;
    font-style: italic;
    color: var(--text);
  }

  .qi-sub {
    font-size: 0.72rem;
    color: var(--text-light);
    margin-top: 0.3rem;
    font-weight: 200;
    letter-spacing: 0.05em;
  }

  /* Welcome section */
  .welcome-section {
    max-width: 680px;
    margin: 0 auto;
    padding: 6rem 2rem;
    text-align: center;
  }

  .welcome-section .section-title {
    margin-bottom: 2rem;
  }

  .welcome-body {
    font-family: 'Cormorant Garamond', serif;
    font-size: clamp(1.05rem, 2.5vw, 1.2rem);
    font-weight: 300;
    line-height: 1.9;
    color: var(--text-light);
    font-style: italic;
  }

  .welcome-body strong {
    color: var(--text);
    font-style: normal;
    font-weight: 400;
  }

  /* Nav cards */
  .nav-cards {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 1px;
    background: rgba(201,169,110,0.15);
    max-width: 1100px;
    margin: 0 auto 6rem;
  }

  .nav-card {
    background: var(--cream);
    padding: 2.5rem 2rem;
    text-align: center;
    text-decoration: none;
    transition: background 0.3s;
    display: block;
  }

  .nav-card:hover { background: rgba(255,255,255,0.8); }

  .nav-card-icon {
    font-family: 'Cormorant Garamond', serif;
    font-size: 2.2rem;
    font-style: italic;
    color: var(--gold);
    margin-bottom: 1rem;
    display: block;
  }

  .nav-card-title {
    font-size: 0.72rem;
    letter-spacing: 0.2em;
    text-transform: uppercase;
    color: var(--text);
    margin-bottom: 0.5rem;
  }

  .nav-card-desc {
    font-size: 0.82rem;
    color: var(--text-light);
    font-weight: 200;
  }

  @media (max-width: 768px) {
    .quick-info { grid-template-columns: 1fr; }
    .quick-info-item:not(:last-child)::after {
      right: 20%; top: auto; bottom: 0; left: 20%;
      width: auto; height: 1px;
    }
    .nav-cards { grid-template-columns: 1fr 1fr; }
  }

  @media (max-width: 480px) {
    .nav-cards { grid-template-columns: 1fr; }
    .hero-cta { flex-direction: column; align-items: center; }
    .btn-outline, .btn-filled { width: 240px; text-align: center; }
  }
</style>
</head>
<body>
<script src="shared.js"></script>
<script>injectNav('home');</script>

<section class="hero">
  <div class="hero-bg"></div>
  <p class="hero-label fade-up fade-up-1">We're getting married</p>
  <div class="hero-names fade-up fade-up-2">
    <span>Kane</span>
    <span class="amp">&</span>
    <span>Sally</span>
  </div>
  <div class="divider centered fade-up fade-up-3">
    <div class="divider-line"></div>
    <div class="divider-diamond"></div>
    <div class="divider-line"></div>
  </div>
  <p class="hero-date fade-up fade-up-3">19th – 21st February 2027</p>
  <p class="hero-location fade-up fade-up-3">Hacienda Acamilpa, Morelos, Mexico</p>
  <div class="hero-cta fade-up fade-up-4">
    <a href="itinerary.html" class="btn-outline">View Itinerary</a>
    <a href="rsvp.html" class="btn-filled">RSVP Now</a>
  </div>
  <div class="scroll-hint">
    <span>Scroll</span>
    <div class="scroll-arrow"></div>
  </div>
</section>

<div class="quick-info">
  <div class="quick-info-item fade-up">
    <p class="qi-label">When</p>
    <p class="qi-value">Three Days</p>
    <p class="qi-sub">19th – 21st February 2027</p>
  </div>
  <div class="quick-info-item fade-up">
    <p class="qi-label">Where</p>
    <p class="qi-value">Hacienda Acamilpa</p>
    <p class="qi-sub">Morelos, Mexico</p>
  </div>
  <div class="quick-info-item fade-up">
    <p class="qi-label">RSVP By</p>
    <p class="qi-value">July 2026</p>
    <p class="qi-sub">An intimate weekend for those closest to us</p>
  </div>
</div>

<section class="welcome-section">
  <p class="section-tag fade-up">Welcome</p>
  <h2 class="section-title fade-up">A celebration of love,<br>shared with those we cherish</h2>
  <div class="divider centered fade-up">
    <div class="divider-line"></div>
    <div class="divider-diamond"></div>
    <div class="divider-line"></div>
  </div>
  <p class="welcome-body fade-up">
    We would love to formally invite you to the wedding of <strong>Kane & Sally</strong>, to share our love with the people closest to us — and that means you.
    <br><br>
    Set across three days in the beautiful surroundings of <strong>Hacienda Acamilpa</strong>, we've crafted an unforgettable experience filled with incredible entertainment, wonderful food, and the joy of celebrating together.
    <br><br>
    On a weekend aligned with a special celestial moment, we come together in marriage beneath the stars. If you know us, you know we love to have a dance — so bring your dancing shoes.
  </p>
</section>

<div class="nav-cards fade-up">
  <a href="itinerary.html" class="nav-card">
    <span class="nav-card-icon">I</span>
    <p class="nav-card-title">Itinerary</p>
    <p class="nav-card-desc">Three days of celebrations</p>
  </a>
  <a href="travel.html" class="nav-card">
    <span class="nav-card-icon">T</span>
    <p class="nav-card-title">Travel</p>
    <p class="nav-card-desc">Getting to Mexico City</p>
  </a>
  <a href="accommodation.html" class="nav-card">
    <span class="nav-card-icon">A</span>
    <p class="nav-card-title">Accommodation</p>
    <p class="nav-card-desc">Where to stay</p>
  </a>
  <a href="dresscode.html" class="nav-card">
    <span class="nav-card-icon">D</span>
    <p class="nav-card-title">Dress Code</p>
    <p class="nav-card-desc">What to wear each day</p>
  </a>
  <a href="about.html" class="nav-card">
    <span class="nav-card-icon">U</span>
    <p class="nav-card-title">About Us</p>
    <p class="nav-card-desc">Our story</p>
  </a>
  <a href="rsvp.html" class="nav-card">
    <span class="nav-card-icon">R</span>
    <p class="nav-card-title">RSVP</p>
    <p class="nav-card-desc">Confirm your attendance</p>
  </a>
</div>

<footer class="footer">
  <p>Kane & Sally · February 2027 · Hacienda Acamilpa, Mexico</p>
</footer>

</body>
</html>