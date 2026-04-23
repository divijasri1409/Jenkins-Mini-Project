<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>NexusShop — Modern E-Commerce</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
:root {
    --bg: #f4f7fb;
    --primary: #0a2540;
    --accent: linear-gradient(135deg,#00d4ff,#007cf0);
    --muted: #6b7280;
    --card: rgba(255,255,255,0.9);
    --surface: #eef3f9;
    --text: #0a2540;
}

/* DARK MODE */
body.dark {
    --bg: #0b1726;
    --primary: #e6eef8;
    --card: rgba(20,30,48,0.9);
    --surface: #122033;
    --text: #e6eef8;
}

body {
    margin: 0;
    font-family: Inter;
    background: var(--bg);
    color: var(--text);
    transition: all .3s ease;
}

.container {
    max-width: 1200px;
    margin: auto;
    padding: 0 20px;
}

/* HEADER */
header {
    position: sticky;
    top: 0;
    background: var(--card);
    backdrop-filter: blur(10px);
    box-shadow: 0 5px 20px rgba(0,0,0,0.05);
    z-index: 10;
}

.header-inner {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 14px 0;
    flex-wrap: wrap;
}

.brand {
    font-family: Poppins;
    font-size: 20px;
    font-weight: 700;
}

.search {
    background: var(--surface);
    padding: 8px 12px;
    border-radius: 999px;
    display: flex;
    gap: 8px;
    min-width: 220px;
}

.search input {
    border: none;
    background: transparent;
    outline: none;
    width: 100%;
}

/* HERO */
.hero {
    position: relative;
    text-align: center;
    color: white;
    padding: 60px 20px;
    background: linear-gradient(rgba(0,0,0,.6),rgba(0,0,0,.6)),
    url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover;
}

.hero::after {
    content:"";
    position:absolute;
    width:300px;
    height:300px;
    background:rgba(0,212,255,0.2);
    filter:blur(100px);
    top:-50px;
    right:-50px;
}

.btn {
    padding: 10px 18px;
    border-radius: 999px;
    border: none;
    cursor: pointer;
    font-weight: 600;
}

.btn-primary {
    background: var(--accent);
    color: white;
}

/* GRID */
.grid {
    display: grid;
    gap: 20px;
}

.products {
    grid-template-columns: repeat(auto-fit,minmax(250px,1fr));
}

/* CARDS */
.product, .cat-card {
    background: var(--card);
    border-radius: 14px;
    backdrop-filter: blur(10px);
    border: 1px solid rgba(255,255,255,0.3);
    box-shadow: 0 10px 30px rgba(0,0,0,0.05);
    transition: all .3s ease;
}

.product:hover {
    transform: translateY(-8px);
    box-shadow: 0 20px 45px rgba(0,0,0,0.1);
}

/* IMAGE */
.product img {
    width: 100%;
    height: 200px;
    object-fit: cover;
    transition: .4s;
}

.product:hover img {
    transform: scale(1.08);
}

.product-body {
    padding: 12px;
}

.price {
    font-size: 18px;
    font-weight: 700;
}

/* BUTTON */
.add-btn {
    width: 100%;
    padding: 10px;
    border-radius: 8px;
    background: var(--primary);
    color: white;
    border: none;
    cursor: pointer;
}

.add-btn:hover {
    background: linear-gradient(135deg,#00d4ff,#007cf0);
    color: #042233;
}

/* DARK BUTTON */
#darkToggle {
    border: none;
    background: var(--surface);
    padding: 8px;
    border-radius: 8px;
    cursor: pointer;
}

/* BACK TO TOP */
#topBtn {
    position: fixed;
    bottom: 20px;
    right: 20px;
    padding: 12px;
    border: none;
    border-radius: 50%;
    background: var(--primary);
    color: white;
    display: none;
    cursor: pointer;
}
</style>
</head>

<body>

<header>
<div class="container header-inner">

<div class="brand">NexusShop</div>

<div class="search">
<input type="text" id="searchInput" placeholder="Search products...">
<i class="fas fa-search"></i>
</div>

<div style="display:flex;gap:10px;align-items:center;">
<button id="darkToggle"><i class="fas fa-moon"></i></button>
<i class="fas fa-shopping-cart"></i>
<span id="cartCount">0</span>
</div>

</div>
</header>

<section class="hero">
<h1>Divija Sri Collection</h1>
<p>Premium fashion & tech picks</p>
<button class="btn btn-primary" onclick="scrollToProducts()">Shop Now</button>
</section>

<section class="container" style="padding:40px 0;">
<h2>Products</h2>
<div class="grid products" id="productsGrid"></div>
</section>

<button id="topBtn">↑</button>

<script>
const PRODUCTS=[
{id:1,title:'iPhone 14 Pro Max',price:1099,img:'https://images.unsplash.com/photo-1601784551446'},
{id:2,title:'MacBook Pro',price:1999,img:'https://images.unsplash.com/photo-1593642632823'},
{id:3,title:'Sony Headphones',price:399,img:'https://images.unsplash.com/photo-1518441902110'},
{id:4,title:'Nike Shoes',price:150,img:'https://images.unsplash.com/photo-1542291026'}
];

let cart=0;

function renderProducts(list){
const grid=document.getElementById('productsGrid');
grid.innerHTML='';
list.forEach(p=>{
grid.innerHTML+=`
<div class="product">
<img src="${p.img}">
<div class="product-body">
<h4>${p.title}</h4>
<div class="price">$${p.price}</div>
<button class="add-btn" onclick="addToCart()">Add to Cart</button>
</div>
</div>`;
});
}

function addToCart(){
cart++;
document.getElementById('cartCount').innerText=cart;
}

document.getElementById('searchInput').addEventListener('input',(e)=>{
const q=e.target.value.toLowerCase();
renderProducts(PRODUCTS.filter(p=>p.title.toLowerCase().includes(q)));
});

function scrollToProducts(){
window.scrollTo({top:400,behavior:'smooth'});
}

/* DARK MODE */
const toggle=document.getElementById('darkToggle');

if(localStorage.getItem('darkMode')==='true'){
document.body.classList.add('dark');
toggle.innerHTML='<i class="fas fa-sun"></i>';
}

toggle.onclick=()=>{
document.body.classList.toggle('dark');
const isDark=document.body.classList.contains('dark');
localStorage.setItem('darkMode',isDark);
toggle.innerHTML=isDark?'<i class="fas fa-sun"></i>':'<i class="fas fa-moon"></i>';
};

/* BACK TO TOP */
window.onscroll=()=>{
document.getElementById('topBtn').style.display=
window.scrollY>300?'block':'none';
};

document.getElementById('topBtn').onclick=()=>{
window.scrollTo({top:0,behavior:'smooth'});
};

renderProducts(PRODUCTS);
</script>

</body>
</html>
