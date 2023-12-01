let book = document.querySelector('.Book')
let SeeUser = document.querySelector('.SeeUser')
let SendMail = document.querySelector('.SendMail')
let updateuser = document.querySelector('.updateuser')
let searchuser = document.querySelector('.Searchuser')

let btn1 = document.querySelector('.formbtn');
let btn2 = document.querySelector('.formbtn1');
let btn3 = document.querySelector('.formbtn2');
let btn4 = document.querySelector('.formbtn4');
let btn5 = document.querySelector('.formbtn3');

let btnclose = document.querySelector('#form-close')
let btnclose1 = document.querySelector('#form-close1')
let btnclose2 = document.querySelector('#form-close2')
let btnclose3 = document.querySelector('#form-close3')
let btnclose4 = document.querySelector('#form-close4')




btn1.addEventListener('click', () =>{
    book.classList.add('active');
});
btn2.addEventListener('click', () =>{
    SeeUser.classList.add('active');
});
btn3.addEventListener('click', () =>{
    SendMail.classList.add('active');
});
btn4.addEventListener('click', () =>{
    updateuser.classList.add('active');
});
btn5.addEventListener('click', () =>{
    searchuser.classList.add('active');
});

btnclose.addEventListener('click', () =>{
    book.classList.remove('active');
});
btnclose1.addEventListener('click', () =>{
    SeeUser.classList.remove('active');
});
btnclose2.addEventListener('click', () =>{
    SendMail.classList.remove('active');
});
btnclose3.addEventListener('click', () =>{
    updateuser.classList.remove('active');
});
btnclose4.addEventListener('click', () =>{
    searchuser.classList.remove('active');
});