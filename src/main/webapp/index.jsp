<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
  <title>NexusShop | Premium E-Comm Experience</title>
  <!-- Google Fonts + Font Awesome -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg: #f8fafd;
      --surface: #ffffff;
      --card: rgba(255, 255, 255, 0.98);
      --text: #0f172a;
      --text-muted: #475569;
      --primary: #3b3bdb;
      --primary-dark: #2a2ab0;
      --gradient: linear-gradient(135deg, #4f46e5 0%, #7c3aed 100%);
      --border: #e2e8f0;
      --shadow-sm: 0 10px 25px -5px rgba(0, 0, 0, 0.05), 0 8px 10px -6px rgba(0, 0, 0, 0.02);
      --shadow-md: 0 20px 25px -12px rgba(0, 0, 0, 0.08);
      --radius: 24px;
      --radius-sm: 16px;
    }

    body.dark {
      --bg: #0a0c15;
      --surface: #111827;
      --card: rgba(17, 24, 39, 0.96);
      --text: #f1f5f9;
      --text-muted: #94a3b8;
      --border: #1e293b;
      --primary: #818cf8;
      --primary-dark: #6366f1;
      --shadow-sm: 0 10px 25px -5px rgba(0, 0, 0, 0.3);
    }

    body {
      font-family: 'Inter', sans-serif;
      background: var(--bg);
      color: var(--text);
      transition: background 0.3s ease, color 0.2s ease;
      scroll-behavior: smooth;
    }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 28px;
    }

    /* Sticky header with glass effect */
    .header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(var(--bg-rgb, 248, 250, 253), 0.8);
      backdrop-filter: blur(16px);
      border-bottom: 1px solid var(--border);
    }
    body.dark .header {
      background: rgba(10, 12, 21, 0.85);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 16px 0;
      gap: 24px;
      flex-wrap: wrap;
    }

    .logo {
      font-family: 'Space Grotesk', monospace;
      font-size: 28px;
      font-weight: 700;
      background: var(--gradient);
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
      letter-spacing: -0.5px;
    }

    .search-box {
      flex: 1;
      max-width: 380px;
      position: relative;
    }

    .search-box i {
      position: absolute;
      left: 16px;
      top: 50%;
      transform: translateY(-50%);
      color: var(--text-muted);
      font-size: 1rem;
    }

    .search-box input {
      width: 100%;
      padding: 12px 16px 12px 44px;
      border-radius: 60px;
      border: 1px solid var(--border);
      background: var(--surface);
      color: var(--text);
      font-size: 0.95rem;
      outline: none;
      transition: all 0.2s;
    }

    .search-box input:focus {
      border-color: var(--primary);
      box-shadow: 0 0 0 3px rgba(79, 70, 229, 0.2);
    }

    .actions {
      display: flex;
      align-items: center;
      gap: 16px;
    }

    .icon-btn {
      background: var(--surface);
      border: 1px solid var(--border);
      border-radius: 50%;
      width: 44px;
      height: 44px;
      display: flex;
      align-items: center;
      justify-content: center;
      cursor: pointer;
      transition: all 0.2s;
      color: var(--text);
      font-size: 1.2rem;
    }

    .icon-btn:hover {
      background: var(--primary);
      color: white;
      border-color: transparent;
      transform: translateY(-2px);
    }

    .cart-icon {
      position: relative;
    }

    .cart-badge {
      position: absolute;
      top: -6px;
      right: -8px;
      background: #ef4444;
      color: white;
      font-size: 0.7rem;
      font-weight: 700;
      border-radius: 30px;
      padding: 2px 7px;
      min-width: 20px;
      text-align: center;
    }

    /* Hero section */
    .hero {
      margin: 32px 20px 48px 20px;
      border-radius: 40px;
      background: linear-gradient(125deg, #0f172a 0%, #1e1b4b 100%);
      position: relative;
      overflow: hidden;
      box-shadow: var(--shadow-md);
    }

    .hero::before {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.pexels.com/photos/3183197/pexels-photo-3183197.jpeg?auto=compress&cs=tinysrgb&w=1400') center/cover;
      opacity: 0.2;
      pointer-events: none;
    }

    .hero-content {
      position: relative;
      padding: 70px 40px;
      text-align: center;
    }

    .hero-content h1 {
      font-size: 3.5rem;
      font-weight: 800;
      font-family: 'Space Grotesk', monospace;
      background: linear-gradient(135deg, #fff, #c7d2fe);
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
      letter-spacing: -1px;
    }

    .hero-content p {
      font-size: 1.2rem;
      margin: 18px 0 28px;
      color: #e2e8f0;
    }

    .btn-primary {
      background: var(--gradient);
      border: none;
      padding: 12px 34px;
      font-weight: 600;
      border-radius: 50px;
      color: white;
      cursor: pointer;
      font-size: 1rem;
      transition: all 0.25s;
      box-shadow: 0 8px 20px rgba(79, 70, 229, 0.35);
    }

    .btn-primary:hover {
      transform: translateY(-3px);
      filter: brightness(1.05);
      box-shadow: 0 12px 28px rgba(79, 70, 229, 0.5);
    }

    /* Section header */
    .section-header {
      display: flex;
      justify-content: space-between;
      align-items: baseline;
      margin: 48px 0 28px;
      flex-wrap: wrap;
    }

    .section-header h2 {
      font-size: 1.9rem;
      font-weight: 700;
      letter-spacing: -0.3px;
      background: var(--gradient);
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
    }

    /* Product grid */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
      gap: 30px;
      margin-bottom: 70px;
    }

    /* Product Card Premium */
    .product-card {
      background: var(--card);
      border-radius: var(--radius);
      overflow: hidden;
      transition: all 0.35s cubic-bezier(0.2, 0, 0, 1);
      border: 1px solid var(--border);
      box-shadow: var(--shadow-sm);
      backdrop-filter: blur(2px);
    }

    .product-card:hover {
      transform: translateY(-10px);
      box-shadow: var(--shadow-md);
      border-color: rgba(79, 70, 229, 0.3);
    }

    .img-wrapper {
      height: 260px;
      overflow: hidden;
      background: #f1f5f9;
      position: relative;
    }

    body.dark .img-wrapper {
      background: #1e293b;
    }

    .img-wrapper img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: transform 0.5s ease;
    }

    .product-card:hover .img-wrapper img {
      transform: scale(1.08);
    }

    .product-info {
      padding: 20px 18px 22px;
    }

    .product-title {
      font-weight: 700;
      font-size: 1.2rem;
      margin-bottom: 6px;
    }

    .price {
      font-size: 1.65rem;
      font-weight: 800;
      color: var(--primary);
      margin: 12px 0 14px;
      letter-spacing: -0.3px;
    }

    .add-cart-btn {
      width: 100%;
      background: rgba(79, 70, 229, 0.1);
      border: 1px solid rgba(79, 70, 229, 0.3);
      padding: 12px 0;
      border-radius: 40px;
      font-weight: 600;
      cursor: pointer;
      transition: all 0.25s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      color: var(--text);
      font-size: 0.9rem;
    }

    .add-cart-btn i {
      font-size: 1rem;
    }

    .add-cart-btn:hover {
      background: var(--gradient);
      border-color: transparent;
      color: white;
      transform: translateY(-2px);
    }

    /* Empty state */
    .empty-state {
      text-align: center;
      grid-column: 1 / -1;
      padding: 60px;
      background: var(--surface);
      border-radius: 40px;
      border: 1px solid var(--border);
    }

    /* Toast notification */
    .toast {
      position: fixed;
      bottom: 30px;
      left: 50%;
      transform: translateX(-50%) scale(0.9);
      background: #1e293b;
      backdrop-filter: blur(12px);
      color: white;
      padding: 12px 26px;
      border-radius: 60px;
      font-weight: 500;
      display: flex;
      gap: 12px;
      align-items: center;
      z-index: 200;
      opacity: 0;
      transition: 0.2s;
      pointer-events: none;
      font-size: 0.9rem;
      border: 1px solid rgba(255,255,255,0.15);
    }
    body.dark .toast {
      background: #0f172ad9;
    }
    .toast.show {
      opacity: 1;
      transform: translateX(-50%) scale(1);
    }

    /* Back to top */
    #backToTop {
      position: fixed;
      bottom: 24px;
      right: 24px;
      width: 48px;
      height: 48px;
      border-radius: 30px;
      background: var(--surface);
      border: 1px solid var(--border);
      color: var(--text);
      cursor: pointer;
      display: none;
      align-items: center;
      justify-content: center;
      backdrop-filter: blur(8px);
      transition: 0.2s;
      z-index: 90;
      box-shadow: var(--shadow-sm);
    }
    #backToTop:hover {
      background: var(--primary);
      color: white;
      transform: translateY(-4px);
    }

    @media (max-width: 700px) {
      .hero-content h1 { font-size: 2.2rem; }
      .hero-content { padding: 45px 24px; }
      .header-inner { flex-direction: column; align-items: stretch; }
      .search-box { max-width: 100%; }
    }
  </style>
</head>
<body>

<header class="header">
  <div class="container header-inner">
    <div class="logo">✦ NEXUS</div>
    <div class="search-box">
      <i class="fas fa-search"></i>
      <input type="text" id="searchInput" placeholder="Search for iPhone, MacBook, Headphones...">
    </div>
    <div class="actions">
      <button class="icon-btn" id="darkModeBtn" aria-label="Dark mode"><i class="fas fa-moon"></i></button>
      <div class="cart-icon">
        <button class="icon-btn" id="cartBtn"><i class="fas fa-bag-shopping"></i></button>
        <span class="cart-badge" id="cartCount">0</span>
      </div>
    </div>
  </div>
</header>

<section class="hero">
  <div class="hero-content">
    <h1>Divija Sri Collection</h1>
    <p>Where luxury meets next‑gen tech & style</p>
    <button class="btn-primary" onclick="scrollToProducts()"><i class="fas fa-arrow-down"></i> Shop Now</button>
  </div>
</section>

<div class="container">
  <div class="section-header">
    <h2><i class="fas fa-crown" style="font-size: 1.3rem;"></i> Signature Picks</h2>
    <span style="color: var(--text-muted);">✨ premium selection</span>
  </div>
  <div class="products-grid" id="productsGrid"></div>
</div>

<button id="backToTop"><i class="fas fa-chevron-up"></i></button>
<div id="toastMsg" class="toast"><i class="fas fa-heart" style="color: #f97316;"></i> <span id="toastText">Added to cart</span></div>

<script>
  // ----------------------------------------------
  // HIGH-QUALITY FIXED IMAGE URLs (verified working)
  // ----------------------------------------------
  const PRODUCTS = [
    { id: 1, title: 'iPhone 15 Pro Max', price: 1199, img: 'https://images.pexels.com/photos/788946/pexels-photo-788946.jpeg?auto=compress&cs=tinysrgb&w=600&h=500&fit=crop' },
    { id: 2, title: 'MacBook Pro 16"', price: 2499, img: 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=600&h=500&fit=crop' },
    { id: 3, title: 'Sony WH-1000XM5', price: 399, img: 'https://images.pexels.com/photos/3394650/pexels-photo-3394650.jpeg?auto=compress&cs=tinysrgb&w=600&h=500&fit=crop' },
    { id: 4, title: 'Nike Air Jordan 1', price: 189, img: 'https://images.pexels.com/photos/1598508/pexels-photo-1598508.jpeg?auto=compress&cs=tinysrgb&w=600&h=500&fit=crop' },
    { id: 5, title: 'iPad Air M2', price: 799, img: 'https://images.pexels.com/photos/1334597/pexels-photo-1334597.jpeg?auto=compress&cs=tinysrgb&w=600&h=500&fit=crop' },
    { id: 6, title: 'Dyson V15 Detect', price: 749, img: 'https://images.pexels.com/photos/4107285/pexels-photo-4107285.jpeg?auto=compress&cs=tinysrgb&w=600&h=500&fit=crop' },
    { id: 7, title: 'Gucci GG Marmont', price: 1890, img: 'https://images.pexels.com/photos/1152077/pexels-photo-1152077.jpeg?auto=compress&cs=tinysrgb&w=600&h=500&fit=crop' },
    { id: 8, title: 'Samsung Galaxy S24 Ultra', price: 1299, img: 'https://images.pexels.com/photos/404524/pexels-photo-404524.jpeg?auto=compress&cs=tinysrgb&w=600&h=500&fit=crop' }
  ];

  let cartItems = 0;
  let filteredProducts = [...PRODUCTS];

  // DOM references
  const productsGrid = document.getElementById('productsGrid');
  const searchInput = document.getElementById('searchInput');
  const cartCountSpan = document.getElementById('cartCount');
  const darkModeBtn = document.getElementById('darkModeBtn');
  const backToTopBtn = document.getElementById('backToTop');
  const toastEl = document.getElementById('toastMsg');
  const toastTextSpan = document.getElementById('toastText');
  const cartBtn = document.getElementById('cartBtn');

  // Show toast with animation
  function showToast(message, isSuccess = true) {
    toastTextSpan.innerText = message;
    toastEl.classList.add('show');
    if (isSuccess) {
      toastEl.style.background = "linear-gradient(135deg, #1e293b, #0f172a)";
    } else {
      toastEl.style.background = "#991b1bdd";
    }
    setTimeout(() => toastEl.classList.remove('show'), 1800);
  }

  // Update cart badge & interaction
  function updateCartUI() {
    cartCountSpan.innerText = cartItems;
    // micro bounce effect
    const badge = document.querySelector('.cart-badge');
    if (badge) {
      badge.style.transform = 'scale(1.2)';
      setTimeout(() => { if (badge) badge.style.transform = ''; }, 200);
    }
  }

  // Add to cart
  function addToCart(productId, productTitle) {
    cartItems++;
    updateCartUI();
    showToast(`🛍️ ${productTitle} added · total: ${cartItems} item${cartItems !== 1 ? 's' : ''}`);
  }

  // Render products with high quality images + fallback
  function renderProducts(products) {
    if (!productsGrid) return;
    if (products.length === 0) {
      productsGrid.innerHTML = `
        <div class="empty-state">
          <i class="fas fa-box-open" style="font-size: 3.5rem; opacity: 0.6;"></i>
          <p style="margin-top: 20px; font-size: 1.2rem;">No items match your search</p>
          <button class="btn-primary" style="margin-top: 20px;" onclick="resetSearch()">Browse All</button>
        </div>`;
      return;
    }

    productsGrid.innerHTML = products.map(product => `
      <div class="product-card" data-id="${product.id}">
        <div class="img-wrapper">
          <img src="${product.img}" alt="${product.title}" loading="lazy" onerror="this.src='https://images.pexels.com/photos/373543/pexels-photo-373543.jpeg?auto=compress&cs=tinysrgb&w=600&h=500&fit=crop'">
        </div>
        <div class="product-info">
          <div class="product-title">${product.title}</div>
          <div class="price">$${product.price.toLocaleString()}</div>
          <button class="add-cart-btn" data-id="${product.id}" data-title="${product.title}">
            <i class="fas fa-cart-plus"></i> Add to Cart
          </button>
        </div>
      </div>
    `).join('');

    // attach event listeners
    document.querySelectorAll('.add-cart-btn').forEach(btn => {
      const id = parseInt(btn.getAttribute('data-id'));
      const title = btn.getAttribute('data-title');
      btn.addEventListener('click', (e) => {
        e.stopPropagation();
        addToCart(id, title);
      });
    });
  }

  // Global reset function
  window.resetSearch = function() {
    if (searchInput) searchInput.value = '';
    filteredProducts = [...PRODUCTS];
    renderProducts(filteredProducts);
    showToast("✨ Showing all collections", true);
  };

  // Filter logic
  function filterProducts() {
    const query = searchInput.value.trim().toLowerCase();
    if (query === '') {
      filteredProducts = [...PRODUCTS];
    } else {
      filteredProducts = PRODUCTS.filter(p => p.title.toLowerCase().includes(query));
    }
    renderProducts(filteredProducts);
  }

  // Dark mode handling
  function initDarkMode() {
    const saved = localStorage.getItem('nexusTheme');
    const prefersDark = window.matchMedia('(prefers-color-scheme: dark)').matches;
    const isDark = saved === 'dark' || (saved === null && prefersDark);
    if (isDark) {
      document.body.classList.add('dark');
      darkModeBtn.innerHTML = '<i class="fas fa-sun"></i>';
    } else {
      document.body.classList.remove('dark');
      darkModeBtn.innerHTML = '<i class="fas fa-moon"></i>';
    }
  }

  darkModeBtn.addEventListener('click', () => {
    const isDarkNow = document.body.classList.toggle('dark');
    localStorage.setItem('nexusTheme', isDarkNow ? 'dark' : 'light');
    darkModeBtn.innerHTML = isDarkNow ? '<i class="fas fa-sun"></i>' : '<i class="fas fa-moon"></i>';
    showToast(isDarkNow ? "🌙 Dark mode activated" : "☀️ Light mode activated");
  });

  // Scroll to products helper
  window.scrollToProducts = function() {
    const productSection = document.querySelector('.section-header');
    if (productSection) {
      const offset = 80;
      const elementPosition = productSection.getBoundingClientRect().top + window.pageYOffset;
      window.scrollTo({ top: elementPosition - offset, behavior: 'smooth' });
    } else {
      window.scrollTo({ top: 550, behavior: 'smooth' });
    }
  };

  // Back to top visibility
  window.addEventListener('scroll', () => {
    if (backToTopBtn) {
      backToTopBtn.style.display = window.scrollY > 400 ? 'flex' : 'none';
    }
  });
  backToTopBtn.addEventListener('click', () => {
    window.scrollTo({ top: 0, behavior: 'smooth' });
  });

  // Cart button info
  if (cartBtn) {
    cartBtn.addEventListener('click', () => {
      if (cartItems === 0) showToast("🛒 Your cart is empty — add some luxe items", false);
      else showToast(`🛍️ Cart total: ${cartItems} product${cartItems !== 1 ? 's' : ''} · checkout soon!`, true);
    });
  }

  // Search events
  searchInput.addEventListener('input', filterProducts);
  searchInput.addEventListener('keypress', (e) => {
    if (e.key === 'Enter') filterProducts();
  });

  // fallback for any missing image errors (prevent broken UI)
  window.addEventListener('load', () => {
    // preload check / final render
    renderProducts(PRODUCTS);
    updateCartUI();
    initDarkMode();
    // small fix for any possible flicker
    if (!document.querySelector('.product-card')) {
      renderProducts(PRODUCTS);
    }
  });
</script>
</body>
</html>
