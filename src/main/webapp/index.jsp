<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width,initial-scale=1"/>

<title>NexusShop — Modern Store</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
:root{
--primary:#0a2540;
--accent:linear-gradient(135deg,#00d4ff,#007cf0);
--bg:#f6f9fc;
--card:#fff;
--radius:12px;
}

body{
margin:0;
font-family:Inter;
background:var(--bg);
}

/* HEADER */
header{
position:sticky;
top:0;
background:white;
z-index:10;
box-shadow:0 2px 10px rgba(0,0,0,0.05);
}

.container{
max-width:1200px;
margin:auto;
padding:0 20px;
}

.header-inner{
display:flex;
justify-content:space-between;
align-items:center;
padding:15px 0;
flex-wrap:wrap;
}

.brand{
font-family:Poppins;
font-size:22px;
font-weight:700;
}

.search{
background:#f1f1f1;
padding:8px 12px;
border-radius:999px;
display:flex;
gap:8px;
width:260px;
}

.search input{
border:none;
background:transparent;
outline:none;
width:100%;
}

/* HERO */
.hero{
text-align:center;
padding:60px 20px;
color:white;
background:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),
url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a') center/cover;
}

.btn{
padding:10px 18px;
border:none;
border-radius:999px;
cursor:pointer;
font-weight:600;
}

.btn-primary{
background:var(--accent);
color:white;
}

.btn:hover{
transform:translateY(-2px);
}

/* GRID */
.grid{
display:grid;
gap:20px;
}

.products{
grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
}

/* PRODUCT */
.product{
background:white;
border-radius:12px;
overflow:hidden;
box-shadow:0 10px 25px rgba(0,0,0,0.05);
transition:0.3s;
}

.product:hover{
transform:translateY(-8px);
box-shadow:0 20px 40px rgba(0,0,0,0.1);
}

.product img{
width:100%;
height:200px;
object-fit:cover;
transition:0.3s;
}

.product:hover img{
transform:scale(1.05);
}

.product-body{
padding:12px;
}

.price{
font-weight:700;
font-size:18px;
}

.add-btn{
width:100%;
padding:10px;
background:#0a2540;
color:white;
border:none;
cursor:pointer;
border-radius:8px;
}

.add-btn:hover{
background:#00d4ff;
color:black;
}

/* BACK TO TOP */
#topBtn{
position:fixed;
bottom:20px;
right:20px;
padding:12px;
border:none;
background:#0a2540;
color:white;
border-radius:50%;
display:none;
cursor:pointer;
}

</style>
</head>

<body>

<header>
<div class="container header-inner">

<div class="brand">NexusShop</div>

<div class="search">
<input type="text" id="searchInput" placeholder="Search...">
<i class="fas fa-search"></i>
</div>

<div>
<i class="fas fa-shopping-cart"></i>
<span id="cartCount">0</span>
</div>

</div>
</header>

<section class="hero">
<h1>New Trending Collection</h1>
<p>Modern fashion & tech</p>
<button class="btn btn-primary" onclick="scrollToProducts()">Shop Now</button>
</section>

<section class="container" style="padding:40px 0;">
<h2>Products</h2>
<div class="grid products" id="productsGrid"></div>
</section>

<button id="topBtn">↑</button>

<script>

const PRODUCTS=[
{id:1,title:'iPhone 14',price:999,img:'https://images.unsplash.com/photo-1601784551446'},
{id:2,title:'MacBook',price:1999,img:'https://images.unsplash.com/photo-1593642632823'},
{id:3,title:'Headphones',price:199,img:'https://images.unsplash.com/photo-1518441902110'},
{id:4,title:'Shoes',price:120,img:'https://images.unsplash.com/photo-1542291026'}
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
</div>
`;
});
}

function addToCart(){
cart++;
document.getElementById('cartCount').innerText=cart;
}

document.getElementById('searchInput').addEventListener('input',(e)=>{
const q=e.target.value.toLowerCase();
const filtered=PRODUCTS.filter(p=>p.title.toLowerCase().includes(q));
renderProducts(filtered);
});

function scrollToProducts(){
window.scrollTo({top:400,behavior:'smooth'});
}

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
