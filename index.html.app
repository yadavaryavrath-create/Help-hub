<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>HelpHub — Mumbai Pilot</title>

<style>
body{
  margin:0;
  font-family: "Segoe UI", Arial, sans-serif;
  background:#f5f7fb;
  color:#222;
}

/* HEADER */

.header{
  background:linear-gradient(135deg,#2b7cff,#5aa2ff);
  color:white;
  padding:40px 20px;
  text-align:center;
}

.header h1{
  margin:0;
  font-size:34px;
}

.header p{
  margin-top:8px;
  font-size:16px;
  opacity:0.9;
}

/* CONTAINER */

.container{
  max-width:900px;
  margin:auto;
  padding:20px;
}

/* CATEGORY GRID */

.grid{
  display:grid;
  grid-template-columns:repeat(auto-fit,minmax(180px,1fr));
  gap:16px;
  margin-top:20px;
}

.card{
  background:white;
  border-radius:14px;
  padding:20px;
  text-align:center;
  box-shadow:0 4px 14px rgba(0,0,0,0.08);
  cursor:pointer;
  transition:0.2s;
}

.card:hover{
  transform:translateY(-4px);
}

.card span{
  font-size:34px;
}

.card h3{
  margin:10px 0 0;
}

/* PERSON CARDS */

.person{
  background:white;
  border-radius:14px;
  padding:18px;
  margin-top:20px;
  box-shadow:0 4px 14px rgba(0,0,0,0.08);
}

.person img{
  width:100%;
  border-radius:12px;
}

.name{
  font-size:22px;
  font-weight:bold;
  margin-top:10px;
}

.desc{
  color:#555;
  margin-top:6px;
}

.note{
  background:#eaf2ff;
  padding:12px;
  border-radius:8px;
  margin-top:10px;
  font-size:14px;
}

input{
  width:100%;
  padding:12px;
  margin-top:12px;
  border-radius:8px;
  border:1px solid #ccc;
  font-size:16px;
}

button{
  width:100%;
  padding:14px;
  margin-top:12px;
  border:none;
  border-radius:10px;
  background:#2b7cff;
  color:white;
  font-size:17px;
  font-weight:bold;
  cursor:pointer;
}

button:hover{
  background:#1a5fd0;
}

/* FOOTER */

.footer{
  text-align:center;
  padding:20px;
  color:#777;
  font-size:14px;
}
</style>
</head>

<body>

<div class="header">
  <h1>HelpHub ❤️</h1>
  <p>Mumbai Citizens Helping Mumbai</p>
</div>

<div class="container">

<h2>Select Cause</h2>

<div class="grid">

<div class="card" onclick="showLocal()">
  <span>🤝</span>
  <h3>Local Help</h3>
</div>

<div class="card">
  <span>🎓</span>
  <h3>Education</h3>
</div>

<div class="card">
  <span>🐾</span>
  <h3>Animals</h3>
</div>

<div class="card">
  <span>🌪️</span>
  <h3>Disaster</h3>
</div>

</div>

<div id="localSection" style="display:none">

<div class="person">
<img src="https://i.imgur.com/2DhmtJ4.jpg">

<div class="name">Ramesh — Malad Station</div>

<div class="desc">
Needs support to restart a small tea stall business.
</div>

<div class="note">
This help will provide tools for self-employment so he can become independent and not rely on begging again.  
Thank you for changing a life ❤️
</div>

<input type="number" id="amt1" placeholder="Enter amount ₹">

<button onclick="donate('Ramesh','amt1')">
Donate Now
</button>

</div>

<div class="person">
<img src="https://i.imgur.com/WxNkK5M.jpg">

<div class="name">Shanti Amma — Temple Area</div>

<div class="desc">
Elderly woman needing food and medical support.
</div>

<div class="note">
Your support will be used for essential care and rehabilitation.
</div>

<input type="number" id="amt2" placeholder="Enter amount ₹">

<button onclick="donate('Shanti Amma','amt2')">
Donate Now
</button>

</div>

</div>

</div>

<div class="footer">
HelpHub • Small Help • Big Change
</div>

<script>

function showLocal(){
  document.getElementById("localSection").style.display="block";
}

function donate(person,id){

  var amount=document.getElementById(id).value;

  if(amount===""){
    alert("Enter amount");
    return;
  }

  var upi="9321162040@yescred";
  var note="Help for "+person;

  var url="upi://pay?pa="+upi+
          "&pn=HelpHub"+
          "&am="+amount+
          "&cu=INR"+
          "&tn="+note;

  window.location.href=url;
}

</script>

</body>
</html>