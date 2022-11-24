let menu = document.querySelector('#menu-btn'); //เข้าถึง element ตัวแรกที่พบ คำสั่งนี้เหมาะสำหรับการเข้าถึง element ตัวแรกโดยไม่ต้องผ่าน class หรือ id
let navbar = document.querySelector('.header .navbar');

menu.onclick = () =>{
   menu.classList.toggle('fa-times');
   navbar.classList.toggle('active');
};

window.onscroll = () =>{
   menu.classList.remove('fa-times');
   navbar.classList.remove('active');
};


document.querySelector('#close-edit').onclick = () =>{
   document.querySelector('.edit-form-container').style.display = 'none';
   window.location.href = 'adminedit.php';
};