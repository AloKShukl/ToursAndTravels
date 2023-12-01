<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration....T&T</title>
    <style>
        :root {
            --orange: #ffa500;
        }

        * {
            font-family: 'Nunito', sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            text-transform: capitalize;
            outline: none;
            border: none;
            text-decoration: none;
            transition: all .2s linear;
        }

        html {
            font-size: 62.5%;
            /* overflow-x: hidden; */
            scroll-padding-top: 6rem;
            scroll-behavior: smooth;
        }
        .btn{
            display: inline-block;
            margin-top: 1rem;
            background: var(--orange);
            color: #fff;
            padding: .8rem 3rem;
            border: .2rem solid var(--orange);
            cursor: pointer;
            font-size: 1.7rem;
        }
        .btn:hover{
            background: rgba(255,165,0,.2);
            color: var(--orange);
        }
        .container{
            background: var(--orange);
            display: flex;
            justify-content: space-evenly;
            align-items: center;
            height: 100vh;
            /* width: 100%; */
            
        }
        .imgbox{
            /* height: 90vh; */
            border-radius: 3rem;
            width: 30%;
            border: 1px solid rgba(0,0,0,100);
            box-shadow: 0 1rem 2rem rgba(0, 0, 0,.9);

        }
        .imgbox img{
            height: 100%;
            width: 100%;
            object-fit: contain;
            mix-blend-mode: color-burn;
        }
        .container{
            display: flex;
            flex-wrap: wrap;
            gap: 1.5rem;
            align-items: center;
            
        }
        .container form{
            padding: 2rem;
            box-shadow: 0 1rem 2rem rgba(0, 0, 0,.3);
            border-radius: .5rem;
            background: #333;
        }
        .container form .inputbox{
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }
        .container  form .inputbox input, .container  form textarea{
            width: 49%;
            margin: 1rem 0;
            padding: 1rem;
            font-size: 1.7rem;
            color: #333;
            background: #f7f7f7;
            text-transform: none;
            border-radius: 1rem;
        }

        .container form textarea{
            height: 20rem;
            width: 100%;
            resize: none;
        }

        @media (max-width:768px) {
            .container  form .inputbox input, .container  form textarea{
            width: 100%;
            margin: .5rem 0;
            padding: 1rem;
            font-size: 1.5rem;
            color: #333;
            background: #f7f7f7;
            text-transform: none;
            border-radius: 1rem;
        }

        .container form textarea{
            height: 10rem;
            width: 100%;
            
        }
        }
        @media (max-width:500px){
            .imgbox{
                width: 50%;
            }
        }
        @media (max-width:300px){
            .imgbox{
                width: 100%;
            }
        }
      
    </style>
</head>
<body>
    <div class="container">
        <div class="imgbox">
            <img src="./Images/registerimg.jpg" alt="">
        </div>
            <form action="OTPverify.jsp">
                <div class="inputbox">
                    <input type="text" name="name" id="" placeholder="Name">
                    <input type="email" name="email" id="" placeholder="Email address">
                </div>
                <div class="inputbox">
                    <input type="number" name="phone" id="" placeholder="Contact number">
                    <input type="password" name="pass" id="" placeholder="Password">
                    <input type="password" name="pass1" id="" placeholder="Re-Password">
                </div>
                <textarea name="address" id="" cols="30" rows="10" placeholder="Full address"></textarea>
                <input type="submit" value="Register" class="btn">

            </form>
    </div>
</body>
</html>