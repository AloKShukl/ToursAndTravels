<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tour&Travels</title>
    <!-- font awesome cdn link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!-- Custom Css file link  -->
    <link rel="stylesheet" href="./Style/Style.css">
    <link rel="shortcut icon" href="./Images/T logo.jpg" type="image/x-icon">
</head>
<body>
    <!-- header section start -->

    <header>

        <div class="fas fa-bars" id="menu-bar"></div>

        <a href="#" class="logo"><span>T</span>ravel</a>

        <nav class="navbar">
            <a href="#home">Home</a>
            <a href="#book">Book</a>
            <a href="#packages">Packages</a>
            <a href="#services">Services</a>
            <a href="Gallery.jsp">Gallery</a>
            <a href="#review">Review</a>
            <a href="#contact">Contact</a>
        </nav>

        <div class="icons">
            <i class="fas fa-search" id="search-btn"></i>
            <i class="fas fa-user" id="login-btn"></i>
        </div>
        <form action="" class="search-bar-container">
            <input type="search" name="" id="search-bar" placeholder="Search here....">
            <label for="search-bar" class="fas fa-search"></label>
        </form>

    </header>

    <!-- header section end -->

    <!-- login form container  -->

    <div class="login-form-container">

        <i class="fas fa-times" id="form-close"></i>

        <form action="ULoginServlet" method=post>
            <h3>Login</h3>
            <input type="email" class="box" placeholder="enter your email" name=inemail required>
            <input type="password" class="box" placeholder="enter your password" name=inpassword required>
            <input type="submit" value="login now" class="btn">
            <input type="checkbox" name="" id="remember">
            <label for="remember">remember me</label>
            <p>Forget password? <a href="Forget.jsp">Click Here</a></p>
            <p>Don't have an account? <a href="Register.jsp">Register Account</a></p>
        </form>

    </div>

    <!-- home section start  -->

<section class="home" id="home">  
    
    <div class="content">
        <h3>adventure is worthwhile</h3>
        <p>discover new places with us, adventure awaits</p>
        <a href="" class="btn">discover more</a>
    </div>

    <div class="controls">
        <span class="vid-btn active" data-src="Images/v1.mp4"></span>
        <span class="vid-btn" data-src="Images/v2.mp4"></span>
        <span class="vid-btn" data-src="Images/v3.mp4"></span>
        <span class="vid-btn" data-src="Images/v5.mp4"></span>
        <span class="vid-btn" data-src="Images/v6.mp4"></span>
    </div>

    <div class="video-container">
        <video src="Images/v1.mp4" id="video-slider" loop autoplay muted></video>
    </div>

</section>

    <!-- home section ends  -->

    <!-- book section starts -->

    <section class="book" id="book">
        <h1 class="heading">
            <span>b</span>
            <span>o</span>
            <span>o</span>
            <span>k</span>
            <span class="space"></span>
            <span>n</span>
            <span>o</span>
            <span>w</span>
        </h1>

        <div class="row">

            <div class="image">
                <img src="Images/Book-img.png" alt="img">
            </div>

            <form action="BookServlet" method="post">
                <div class="inputbox">
                    <h3>Where to</h3>
                    <input type="text" name="Destination" id="" placeholder="Place name">
                </div>
                
                 <div class="inputbox">
                    <h3>Where From</h3>
                    <input type="text" name="From" id="" placeholder="Place name">
                </div>

                <div class="inputbox">
                    <h3>how many</h3>
                    <input type="number" name="Guests" id="" placeholder="Number of guests">
                </div>
                
                 <div class="inputbox">
                    <h3>enter your</h3>
                    <input type="number" name="Contact" id="" placeholder="Contact number">
                </div>

                <div class="inputbox">
                    <h3>arrivals</h3>
                    <input type="date" name="Arrival">
                </div>

                <div class="inputbox">
                    <h3>leaving</h3>
                    <input type="date" name="Leaving">
                </div>

                <div class="inputbox">
                    <input type="submit" class="btn" value="book-now">
                </div>
            </form>

        </div>

    </section>

    <!-- book section ends  -->

    <!-- packags section starts  -->

    <section class="packages" id="packages">

        <h1 class="heading">
            <span>p</span>
            <span>a</span>
            <span>c</span>
            <span>k</span>
            <span>a</span>
            <span>g</span>
            <span>e</span>
            <span>s</span>
        </h1>

        <div class="box-container">

            <div class="box">
                <img src="Images/p7.jpg" alt="img">
                <div class="content">
                    <h3><i class="fas fa-map-marker-alt"></i>mumbai</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic, nostrum.</p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                    <div class="price">$90.00 <span>$120.00</span></div>
                    <a href="" class=btn>Book now</a>
                </div>
            </div>
            <div class="box">
                <img src="Images/p1.jpg" alt="img">
                <div class="content">
                    <h3><i class="fas fa-map-marker-alt"></i>sydeny</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic, nostrum.</p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                    <div class="price">$90.00 <span>$120.00</span></div>
                    <a href="" class=btn>Book now</a>
                </div>
            </div>
            <div class="box">
                <img src="Images/p2.jpg" alt="img">
                <div class="content">
                    <h3><i class="fas fa-map-marker-alt"></i>hawaii</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic, nostrum.</p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                    <div class="price">$90.00 <span>$120.00</span></div>
                    <a href="" class=btn>Book now</a>
                </div>
            </div>
            <div class="box">
                <img src="Images/p3.jpg" alt="img">
                <div class="content">
                    <h3><i class="fas fa-map-marker-alt"></i>paris</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic, nostrum.</p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                    <div class="price">$90.00 <span>$120.00</span></div>
                    <a href="" class=btn>Book now</a>
                </div>
            </div>
            <div class="box">
                <img src="Images/p4.jpg" alt="img">
                <div class="content">
                    <h3><i class="fas fa-map-marker-alt"></i>Bhutan</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic, nostrum.</p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                    <div class="price">$90.00 <span>$120.00</span></div>
                    <a href="" class=btn>Book now</a>
                </div>
            </div>
            <div class="box">
                <img src="Images/p6.jpg" alt="img">
                <div class="content">
                    <h3><i class="fas fa-map-marker-alt"></i>Amazon</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic, nostrum.</p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                    <div class="price">$90.00 <span>$120.00</span></div>
                    <a href="" class=btn>Book now</a>
                </div>
            </div>

        </div>

    </section>        

    <!-- packags section ends  -->

    <!-- services section starts  -->

    <section class="services" id="services">

        <h1 class="heading">
            <span>s</span>
            <span>e</span>
            <span>r</span>
            <span>v</span>
            <span>i</span>
            <span>c</span>
            <span>e</span>
            <span>s</span>
        </h1>

        <div class="box-container">

            <div class="box">
                <i class="fas fa-hotel"></i>
                <h3>affordables hotels</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni, voluptatum. Lorem ipsum dolor sit
                 , amet consectetur adipisicing elit. Deleniti, aliquid!</p>
            </div>

            <div class="box">
                <i class="fas fa-utensils"></i>
                <h3>food and drinks</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni, voluptatum. Lorem ipsum dolor sit
                 , amet consectetur adipisicing elit. Deleniti, aliquid!</p>
            </div>

            <div class="box">
                <i class="fas fa-bullhorn"></i>
                <h3>saftey guide</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni, voluptatum. Lorem ipsum dolor sit
                 , amet consectetur adipisicing elit. Deleniti, aliquid!</p>
            </div>

            <div class="box">
                <i class="fas fa-globe-asia"></i>
                <h3>around the world</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni, voluptatum. Lorem ipsum dolor sit
                 , amet consectetur adipisicing elit. Deleniti, aliquid!</p>
            </div>

            <div class="box">
                <i class="fas fa-plane"></i>
                <h3>fastest travel</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni, voluptatum. Lorem ipsum dolor sit
                 , amet consectetur adipisicing elit. Deleniti, aliquid!</p>
            </div>

            <div class="box">
                <i class="fas fa-hiking"></i>
                <h3>adventures</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni, voluptatum. Lorem ipsum dolor sit
                 , amet consectetur adipisicing elit. Deleniti, aliquid!</p>
            </div>



        </div>

    </section>

    <!-- services section ends  -->

    <!-- review section starts -->

    <section class="review" id="review">

        <h1 class="heading">
            <span>r</span>
            <span>e</span>
            <span>v</span>
            <span>i</span>
            <span>e</span>
            <span>w</span>
        </h1>

        <div class="review-slider">

            <div class="wrapper">
                <div class="swiper-slide">
                    <div class="box">
                        <img src="./Images/pic1.png" alt="img">
                        <h3>john deo</h3>
                        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Velit ea perferendis iste,
                             repellat perspiciatis repellendus quaerat quia temporibus aspernatur dignissimos,
                              ad, excepturi doloremque a quidem.
                        </p>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="far fa-star"></i>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="box">
                        <img src="./Images/pic2.webp" alt="img">
                        <h3>john deo</h3>
                        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Velit ea perferendis iste,
                             repellat perspiciatis repellendus quaerat quia temporibus aspernatur dignissimos,
                              ad, excepturi doloremque a quidem.
                        </p>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="far fa-star"></i>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="box">
                        <img src="./Images/pic3.jpg" alt="img">
                        <h3>john deo</h3>
                        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Velit ea perferendis iste,
                             repellat perspiciatis repellendus quaerat quia temporibus aspernatur dignissimos,
                              ad, excepturi doloremque a quidem.
                        </p>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="far fa-star"></i>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="box">
                        <img src="./Images/pic4.jpg" alt="img">
                        <h3>john deo</h3>
                        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Velit ea perferendis iste,
                             repellat perspiciatis repellendus quaerat quia temporibus aspernatur dignissimos,
                              ad, excepturi doloremque a quidem.
                        </p>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="far fa-star"></i>
                        </div>
                    </div>
                </div>
    
            </div>

        </div>

    </section>

    <!-- review section ends -->

<!-- contact section starts  -->

    <section class="contact" id="contact">

        <h1 class="heading">
            <span>c</span>
            <span>o</span>
            <span>n</span>
            <span>t</span>
            <span>a</span>
            <span>c</span>
            <span>t</span>
        </h1>

        <div class="row">

            <div class="image">
                <img src="Images/Contactimg.png" alt="">
            </div>
            <form action="MailServlet" method="Get">
                <div class="inputbox">
                    <input type="text" name="name" id="" placeholder="Enter your name">
                    <input type="email" name="to" id="" placeholder="Enter your Email address">
                </div>
                <div class="inputbox">
                    <input type="number" name="phone" id="" placeholder="Enter your number">
                    <input type="text" name="sub" id="" placeholder="Subject">
                </div>
                <textarea name="message" id="" cols="30" rows="10" placeholder="Message"></textarea>
                <input type="submit" value="send-message" class="btn">

            </form>

        </div>

    </section>

<!-- contact section ends  -->

<!-- brand section  -->

<section class="brand-container">

    <div class=" brand-slider">
        <div class="wrapper">
            <div class="swiper-slide"> <img src="./Images/1.jpg" alt="img"></div>
            <div class="swiper-slide"> <img src="./Images/2.png" alt="img"></div>
            <div class="swiper-slide"> <img src="./Images/3.jpg" alt="img"></div>
            <div class="swiper-slide"> <img src="./Images/4.png" alt="img"></div>
            <div class="swiper-slide"> <img src="./Images/5.png" alt="img"></div>
            <div class="swiper-slide"> <img src="./Images/6.png" alt="img"></div>
        </div>
    </div>

</section>

 


    <!-- custom js file link  -->
    <script src="./Script/script.js"></script>
    <script>
   history.pushState(null,null,location.href);
   window.onpopstate=function(){
	   history.go(0);
   }
</script>
</body>
</html>