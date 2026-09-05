<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, user-scalable=yes" />
  <title>NexusShop · friendly commerce</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous" />
  <style>
    /* soft reset + friendly tokens */
    * { box-sizing: border-box; margin: 0; }
    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: #fafbfc;
      color: #0b1a2b;
      line-height: 1.5;
      padding: 0 0 2rem;
    }
    a { color: inherit; text-decoration: none; }
    .container {
      max-width: 1300px;
      margin: 0 auto;
      padding: 0 1.5rem;
    }
    /* header – softer, more breathing */
    header {
      background: rgba(255,255,255,0.85);
      backdrop-filter: blur(8px);
      -webkit-backdrop-filter: blur(8px);
      border-bottom: 1px solid rgba(0,0,0,0.03);
      position: sticky;
      top: 0;
      z-index: 50;
      box-shadow: 0 2px 12px rgba(0,0,0,0.02);
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 1rem;
      padding: 0.8rem 0;
      flex-wrap: wrap;
    }
    .brand {
      font-family: 'Poppins', sans-serif;
      font-weight: 700;
      font-size: 1.6rem;
      letter-spacing: -0.02em;
      display: flex;
      align-items: center;
      gap: 0.25rem;
    }
    .brand .accent { color: #2b7fff; }
    .brand i { color: #2b7fff; font-size: 1.4rem; }
    .mobile-toggle {
      background: transparent;
      border: none;
      font-size: 1.6rem;
      cursor: pointer;
      color: #0b1a2b;
      padding: 0 0.25rem;
      display: none;
    }
    nav.main-nav ul {
      display: flex;
      gap: 0.25rem;
      list-style: none;
      padding: 0;
      margin: 0;
      align-items: center;
      flex-wrap: wrap;
    }
    nav.main-nav li a {
      padding: 0.5rem 0.9rem;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.95rem;
      display: flex;
      align-items: center;
      gap: 0.4rem;
      transition: 0.15s;
      color: #1f2b3a;
    }
    nav.main-nav li a:hover,
    nav.main-nav li a:focus-visible {
      background: #eef3f9;
      color: #1a5bbf;
    }
    nav.main-nav li a i { font-size: 0.9rem; }
    .search {
      background: #f0f4fa;
      border-radius: 60px;
      display: flex;
      align-items: center;
      padding: 0.35rem 0.35rem 0.35rem 1.2rem;
      min-width: 200px;
      transition: 0.2s;
      border: 1px solid transparent;
    }
    .search:focus-within {
      background: #ffffff;
      border-color: #2b7fff;
      box-shadow: 0 0 0 4px rgba(43,127,255,0.12);
    }
    .search input {
      border: none;
      background: transparent;
      outline: none;
      width: 100%;
      font-size: 0.95rem;
      padding: 0.35rem 0;
    }
    .search button {
      background: #2b7fff;
      border: none;
      color: white;
      width: 2.2rem;
      height: 2.2rem;
      border-radius: 40px;
      cursor: pointer;
      transition: 0.15s;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .search button:hover { background: #1a5bbf; }
    .header-actions {
      display: flex;
      align-items: center;
      gap: 0.4rem;
    }
    .icon-btn {
      background: transparent;
      border: none;
      font-size: 1.2rem;
      padding: 0.5rem 0.6rem;
      border-radius: 40px;
      cursor: pointer;
      color: #1f2b3a;
      transition: 0.15s;
      display: flex;
      align-items: center;
      gap: 0.2rem;
    }
    .icon-btn:hover { background: #eef3f9; }
    .cart {
      position: relative;
      padding: 0.5rem 0.9rem;
      border-radius: 40px;
      background: #eef3f9;
      font-weight: 500;
    }
    .cart-count {
      background: #2b7fff;
      color: white;
      font-size: 0.75rem;
      font-weight: 700;
      width: 1.5rem;
      height: 1.5rem;
      border-radius: 30px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      margin-left: 0.2rem;
    }
    #mobileMenu {
      background: white;
      border-top: 1px solid rgba(0,0,0,0.03);
      padding: 0.5rem 0;
    }
    #mobileMenu ul {
      list-style: none;
      padding: 0;
      margin: 0;
      display: flex;
      flex-direction: column;
      gap: 0.25rem;
    }
    #mobileMenu ul a {
      display: block;
      padding: 0.5rem 1rem;
      border-radius: 20px;
      font-weight: 500;
    }
    #mobileMenu ul a:hover { background: #f0f4fa; }
    /* hero – warm & inviting */
    .hero {
      background: linear-gradient(145deg, #0b1a2b 0%, #1f3450 100%);
      color: white;
      padding: 3.5rem 1.5rem;
      border-radius: 2rem;
      margin: 1.5rem auto;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 2rem;
    }
    .hero-content { flex: 1 1 300px; }
    .hero-content h1 {
      font-family: 'Poppins', sans-serif;
      font-size: 2.6rem;
      font-weight: 700;
      line-height: 1.1;
      letter-spacing: -0.02em;
    }
    .hero-content p {
      opacity: 0.85;
      font-size: 1.1rem;
      margin: 0.8rem 0 1.5rem;
      max-width: 550px;
    }
    .hero-actions {
      display: flex;
      flex-wrap: wrap;
      gap: 0.8rem;
    }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 0.5rem;
      padding: 0.75rem 1.6rem;
      border-radius: 60px;
      font-weight: 600;
      border: none;
      cursor: pointer;
      transition: 0.15s;
      font-size: 0.95rem;
    }
    .btn-primary {
      background: #2b7fff;
      color: white;
      box-shadow: 0 8px 20px rgba(43,127,255,0.25);
    }
    .btn-primary:hover { background: #1a5bbf; transform: translateY(-2px); }
    .btn-ghost {
      background: rgba(255,255,255,0.08);
      color: white;
      border: 1px solid rgba(255,255,255,0.15);
      backdrop-filter: blur(4px);
    }
    .btn-ghost:hover { background: rgba(255,255,255,0.2); }
    .hero-illustration i {
      font-size: 6rem;
      opacity: 0.4;
      color: #6a8fc0;
    }
    /* sections */
    .section { padding: 2.5rem 0; }
    .section-title {
      font-family: 'Poppins', sans-serif;
      font-size: 2rem;
      font-weight: 600;
      margin-bottom: 0.25rem;
    }
    .section-sub { color: #5b6f82; margin-bottom: 1.5rem; }
    .grid {
      display: grid;
      gap: 1.5rem;
    }
    /* categories – friendly cards */
    .categories-grid {
      grid-template-columns: repeat(auto-fit, minmax(130px, 1fr));
    }
    .cat-card {
      background: white;
      padding: 1.2rem 0.8rem;
      border-radius: 1.5rem;
      text-align: center;
      box-shadow: 0 8px 24px rgba(0,0,0,0.02);
      transition: 0.2s;
      border: 1px solid rgba(0,0,0,0.02);
      cursor: default;
    }
    .cat-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 16px 32px rgba(43,127,255,0.06);
      border-color: #dce6f2;
    }
    .cat-card .icon {
      font-size: 2.2rem;
      color: #2b7fff;
      margin-bottom: 0.2rem;
    }
    .cat-card h4 { font-weight: 600; font-size: 1rem; margin: 0.2rem 0; }
    .cat-card .muted { font-size: 0.8rem; color: #6d7f92; }
    /* products */
    .products-grid {
      grid-template-columns: repeat(auto-fill, minmax(230px, 1fr));
    }
    .product {
      background: white;
      border-radius: 1.5rem;
      overflow: hidden;
      box-shadow: 0 8px 24px rgba(0,0,0,0.02);
      transition: 0.2s;
      display: flex;
      flex-direction: column;
      border: 1px solid rgba(0,0,0,0.02);
    }
    .product:hover {
      transform: translateY(-4px);
      box-shadow: 0 18px 40px rgba(0,0,0,0.04);
    }
    .product img {
      width: 100%;
      height: 190px;
      object-fit: cover;
      display: block;
    }
    .product-body {
      padding: 1rem 1rem 0.5rem;
      flex: 1;
    }
    .product-body h5 {
      font-size: 1rem;
      font-weight: 600;
      margin: 0 0 0.15rem;
    }
    .product-meta {
      font-size: 0.8rem;
      color: #6d7f92;
      text-transform: capitalize;
    }
    .price-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin: 0.5rem 0;
      flex-wrap: wrap;
    }
    .price { font-weight: 700; font-size: 1.1rem; }
    .old-price { color: #8a9aa8; text-decoration: line-through; font-size: 0.9rem; margin-left: 0.3rem; }
    .rating { color: #f5b342; font-size: 0.9rem; letter-spacing: 0.05rem; }
    .product-footer {
      padding: 0.5rem 1rem 1rem;
      display: flex;
      gap: 0.5rem;
    }
    .add-btn {
      flex: 1;
      background: #eef3f9;
      border: none;
      border-radius: 40px;
      padding: 0.6rem;
      font-weight: 600;
      color: #0b1a2b;
      cursor: pointer;
      transition: 0.15s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 0.3rem;
    }
    .add-btn:hover { background: #2b7fff; color: white; }
    .wish-btn {
      background: transparent;
      border: 1px solid #e2eaf2;
      border-radius: 40px;
      width: 2.8rem;
      cursor: pointer;
      transition: 0.15s;
    }
    .wish-btn:hover { background: #f0f4fa; border-color: #b0c8dd; }
    /* deal card */
    .deal-card {
      background: white;
      border-radius: 2rem;
      overflow: hidden;
      display: flex;
      flex-wrap: wrap;
      box-shadow: 0 12px 40px rgba(0,0,0,0.02);
      border: 1px solid rgba(0,0,0,0.02);
    }
    .deal-card img {
      width: 100%;
      max-width: 380px;
      object-fit: cover;
      height: 260px;
      flex: 1 1 200px;
    }
    .deal-content {
      padding: 1.8rem 2rem;
      flex: 2 1 300px;
    }
    .deal-content h3 { font-size: 1.7rem; font-weight: 600; }
    .timer {
      display: flex;
      gap: 0.8rem;
      margin: 1rem 0;
    }
    .time-box {
      background: #0b1a2b;
      color: white;
      padding: 0.5rem 0.8rem;
      border-radius: 1rem;
      min-width: 65px;
      text-align: center;
    }
    .time-box div:first-child { font-size: 1.6rem; font-weight: 700; }
    .time-box div:last-child { font-size: 0.7rem; opacity: 0.7; }
    .deal-discount {
      background: #ff4d6d;
      color: white;
      padding: 0.2rem 0.9rem;
      border-radius: 40px;
      font-weight: 700;
    }
    /* testimonials */
    .testimonials-scroll {
      display: flex;
      gap: 1.5rem;
      overflow-x: auto;
      padding: 0.5rem 0.2rem 1rem;
      scroll-snap-type: x mandatory;
    }
    .testimonial {
      min-width: 280px;
      background: white;
      padding: 1.5rem;
      border-radius: 1.5rem;
      box-shadow: 0 8px 20px rgba(0,0,0,0.02);
      border: 1px solid rgba(0,0,0,0.02);
      scroll-snap-align: start;
    }
    .testimonial .rating { font-size: 1rem; }
    .testimonial p { margin: 0.5rem 0; }
    .testimonial .avatar {
      display: flex;
      align-items: center;
      gap: 0.6rem;
    }
    .testimonial .avatar img {
      width: 44px;
      height: 44px;
      border-radius: 60px;
      object-fit: cover;
    }
    /* newsletter */
    .newsletter-box {
      background: #0b1a2b;
      color: white;
      padding: 2.5rem 2rem;
      border-radius: 2rem;
      text-align: center;
    }
    .newsletter-box input {
      padding: 0.7rem 1.2rem;
      border-radius: 60px;
      border: none;
      width: 280px;
      max-width: 100%;
      margin-right: 0.5rem;
      font-size: 0.95rem;
    }
    .newsletter-box .btn-primary { background: #2b7fff; }
    .newsletter-box .btn-primary:hover { background: #1a5bbf; }
    /* footer */
    footer {
      border-top: 1px solid rgba(0,0,0,0.03);
      padding: 2.5rem 0 1rem;
      margin-top: 2rem;
      color: #3d4d5e;
    }
    .footer-links {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 2rem;
    }
    .footer-links .col { min-width: 120px; }
    .footer-links .col h4 { font-weight: 600; margin-bottom: 0.3rem; color: #0b1a2b; }
    .footer-links .col p { margin: 0.2rem 0; font-size: 0.9rem; }
    .social-icons { display: flex; gap: 0.6rem; margin-top: 0.5rem; }
    .social-icons a {
      background: #eef3f9;
      width: 2.4rem;
      height: 2.4rem;
      border-radius: 40px;
      display: flex;
      align-items: center;
      justify-content: center;
      color: #1f2b3a;
      transition: 0.15s;
    }
    .social-icons a:hover { background: #2b7fff; color: white; }
    .copy { text-align: center; margin-top: 2rem; font-size: 0.8rem; opacity: 0.7; }
    /* responsive */
    @media (max-width: 900px) {
      nav.main-nav { display: none; }
      .mobile-toggle { display: inline-block; }
      .search { min-width: 140px; }
      .hero { flex-direction: column; text-align: center; }
      .hero-content p { max-width: 100%; }
      .hero-illustration { display: none; }
    }
    @media (max-width: 600px) {
      .header-inner { flex-wrap: wrap; }
      .brand { font-size: 1.3rem; }
      .search { width: 100%; order: 3; }
      .hero-content h1 { font-size: 2rem; }
      .products-grid { grid-template-columns: 1fr 1fr; }
      .deal-content { padding: 1rem; }
      .timer .time-box { min-width: 50px; padding: 0.3rem; }
    }
    @media (max-width: 420px) {
      .products-grid { grid-template-columns: 1fr; }
    }
    /* utility */
    .muted { color: #5f7387; }
    .text-center { text-align: center; }
  </style>
</head>
<body>
<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:0.5rem;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="menu"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#"><i class="fas fa-store-alt"></i> Nexus<span class="accent">Shop</span></a>
    </div>
    <nav class="main-nav" id="mainNav">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
      </ul>
    </nav>
    <div style="display:flex;align-items:center;gap:0.5rem;flex-wrap:wrap;">
      <div class="search">
        <input type="search" id="searchInput" placeholder="Search..." aria-label="Search">
        <button id="searchBtn" aria-label="search"><i class="fas fa-search"></i></button>
      </div>
      <div class="header-actions">
        <button class="icon-btn" title="account"><i class="far fa-user"></i></button>
        <button class="icon-btn" title="wishlist"><i class="far fa-heart"></i></button>
        <span class="cart"><i class="fas fa-shopping-cart"></i> <span class="cart-count" id="cartCount">0</span></span>
      </div>
    </div>
  </div>
  <!-- mobile menu -->
  <div id="mobileMenu" style="display:none; background:white; padding:0.5rem 1.5rem;">
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#categories">Categories</a></li>
      <li><a href="#products">Trending</a></li>
      <li><a href="#deals">Deals</a></li>
    </ul>
  </div>
</header>

<main>
  <!-- hero -->
  <div class="container">
    <section class="hero">
      <div class="hero-content">
        <h1>New season, <br>fresh finds</h1>
        <p>Handpicked style, tech &amp; accessories — with free shipping &amp; easy returns.</p>
        <div class="hero-actions">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
          <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-gift"></i> Explore deals</button>
        </div>
      </div>
      <div class="hero-illustration"><i class="fas fa-shopping-bag"></i></div>
    </section>
  </div>

  <!-- categories -->
  <section class="container section" id="categories">
    <h2 class="section-title">Shop by category</h2>
    <p class="section-sub">Find exactly what you need</p>
    <div class="grid categories-grid" id="categoriesGrid" aria-live="polite"></div>
  </section>

  <!-- products -->
  <section class="container section" id="products">
    <h2 class="section-title">Trending now</h2>
    <p class="section-sub">Popular picks from our community</p>
    <div class="grid products-grid" id="productsGrid" aria-live="polite"></div>
  </section>

  <!-- deal -->
  <section class="container section" id="deals">
    <h2 class="section-title">Flash deal</h2>
    <p class="section-sub">Grab it before it's gone</p>
    <div class="deal-card">
      <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80" alt="MacBook Air M2">
      <div class="deal-content">
        <h3>MacBook Air M2</h3>
        <p class="muted">Lightning fast, all‑day battery.</p>
        <div class="timer" id="dealTimer">
          <div class="time-box"><div id="dealDays">0</div><div>Days</div></div>
          <div class="time-box"><div id="dealHours">00</div><div>Hrs</div></div>
          <div class="time-box"><div id="dealMinutes">00</div><div>Min</div></div>
          <div class="time-box"><div id="dealSeconds">00</div><div>Sec</div></div>
        </div>
        <div style="display:flex;align-items:center;gap:0.8rem;flex-wrap:wrap;">
          <span class="price" style="font-size:1.8rem;font-weight:700;">$999</span>
          <span class="old-price" style="font-size:1.1rem;">$1,199</span>
          <span class="deal-discount">−17%</span>
        </div>
        <p style="margin-top:0.5rem;"><strong>12</strong> items left at this price</p>
        <button class="btn btn-primary" id="buyDeal" style="margin-top:0.5rem;"><i class="fas fa-cart-plus"></i> Add deal</button>
      </div>
    </div>
  </section>

  <!-- testimonials -->
  <section class="container section">
    <h2 class="section-title">Kind words</h2>
    <p class="section-sub">Real reviews from real people</p>
    <div class="testimonials-scroll" id="testimonials">
      <div class="testimonial">
        <div class="rating">★★★★★</div>
        <p>"Super fast delivery and the quality is top notch. Love it!"</p>
        <div class="avatar"><img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="Ava"><div><strong>Ava M.</strong><div class="muted" style="font-size:0.8rem;">Verified</div></div></div>
      </div>
      <div class="testimonial">
        <div class="rating">★★★★☆</div>
        <p>"Great selection and smooth checkout. Will definitely order again."</p>
        <div class="avatar"><img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="Michael"><div><strong>Michael L.</strong><div class="muted" style="font-size:0.8rem;">Frequent buyer</div></div></div>
      </div>
      <div class="testimonial">
        <div class="rating">★★★★★</div>
        <p>"The customer support was incredibly helpful. 10/10 experience."</p>
        <div class="avatar"><img src="https://images.unsplash.com/photo-1485968579580-b6d095142e6e?auto=format&fit=crop&w=80&q=80" alt="Elena"><div><strong>Elena R.</strong><div class="muted" style="font-size:0.8rem;">First timer</div></div></div>
      </div>
    </div>
  </section>

  <!-- newsletter -->
  <div class="container section">
    <div class="newsletter-box">
      <h3 style="font-family:'Poppins',sans-serif;font-size:1.6rem;">Stay in the loop</h3>
      <p style="opacity:0.8;">Get exclusive offers &amp; new arrivals</p>
      <form id="newsletterForm" style="display:flex;justify-content:center;gap:0.5rem;flex-wrap:wrap;">
        <input type="email" id="newsletterEmail" placeholder="Your email" required>
        <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
      </form>
      <div id="newsletterMsg" style="margin-top:0.8rem;display:none;font-size:0.95rem;"></div>
    </div>
  </div>
</main>

<footer>
  <div class="container footer-links">
    <div class="col">
      <h4><i class="fas fa-store-alt"></i> NexusShop</h4>
      <p class="muted" style="max-width:220px;">Modern e‑commerce demo built with care.</p>
      <div class="social-icons">
        <a href="#"><i class="fab fa-facebook-f"></i></a>
        <a href="#"><i class="fab fa-twitter"></i></a>
        <a href="#"><i class="fab fa-instagram"></i></a>
      </div>
    </div>
    <div class="col">
      <h4>Company</h4>
      <p>About</p>
      <p>Careers</p>
      <p>Press</p>
    </div>
    <div class="col">
      <h4>Support</h4>
      <p>Help Center</p>
      <p>Shipping</p>
      <p>Contact</p>
    </div>
  </div>
  <div class="copy">&copy; <span id="year"></span> NexusShop · all rights reserved</div>
</footer>

<script>
  (function() {
    // data
    const CATEGORIES = [
      { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
    ];
    const PRODUCTS = [
      { id:1, title:'iPhone 14 Pro Max', price:1099, oldPrice:1199, rating:5, reviews:128, img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80', category:'phones' },
      { id:2, title:'MacBook Pro 14"', price:1999, rating:4, reviews:86, img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80', category:'laptops' },
      { id:3, title:'Apple Watch Series 8', price:349, oldPrice:399, rating:5, reviews:214, badge:'-25%', img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', category:'accessories' },
      { id:4, title:'Nike Air Max 270', price:150, rating:4, reviews:53, img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&q=80', category:'footwear' },
      { id:5, title:'Sony A7 IV Camera', price:2499, rating:5, reviews:42, img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80', category:'gadgets' },
      { id:6, title:'Chanel No.5', price:120, rating:5, reviews:189, img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&q=80', category:'accessories' },
      { id:7, title:'Travel Backpack', price:79, oldPrice:99, rating:4, reviews:67, img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&q=80', category:'accessories' },
      { id:8, title:'Sony WH-1000XM5', price:399, rating:5, reviews:156, img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&q=80', category:'gadgets' }
    ];

    let cartCount = 0;
    const cartCountEl = document.getElementById('cartCount');
    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');
    const searchInput = document.getElementById('searchInput');

    function renderCategories() {
      categoriesGrid.innerHTML = '';
      CATEGORIES.forEach(c => {
        const el = document.createElement('div');
        el.className = 'cat-card';
        el.innerHTML = `<div class="icon"><i class="fas ${c.icon}"></i></div><h4>${c.name}</h4><div class="muted">Explore</div>`;
        el.addEventListener('click', ()=> { searchInput.value = c.name; filterProducts(c.name); });
        categoriesGrid.appendChild(el);
      });
    }

    function renderProducts(list) {
      productsGrid.innerHTML = '';
      list.forEach(p => {
        const el = document.createElement('article');
        el.className = 'product';
        const badgeHtml = p.badge ? `<div style="position:absolute;margin:0.8rem;background:${p.badge.startsWith('-')?'#ff4d6d':'#2b7fff'};color:white;padding:0.15rem 0.8rem;border-radius:40px;font-weight:700;font-size:0.8rem;">${p.badge}</div>` : '';
        el.innerHTML = `
          <div style="position:relative;">${badgeHtml}<img src="${p.img}" alt="${p.title}"></div>
          <div class="product-body"><h5>${p.title}</h5><div class="product-meta">${p.category}</div>
          <div class="price-row"><div><span class="price">$${p.price.toLocaleString()}</span>${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}</div>
          <div class="rating">${'★'.repeat(Math.round(p.rating))} <span style="color:#8a9aa8;font-size:0.75rem;">(${p.reviews})</span></div></div></div>
          <div class="product-footer"><button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button><button class="wish-btn"><i class="far fa-heart"></i></button></div>
        `;
        productsGrid.appendChild(el);
      });
      document.querySelectorAll('.add-btn').forEach(btn => {
        btn.addEventListener('click', (e) => {
          const id = Number(btn.dataset.id);
          const p = PRODUCTS.find
