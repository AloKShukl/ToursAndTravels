<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.files.entites.BookDataDao"%>
<%@page import="com.files.entites.BookData"%>
<%@page import="com.files.entites.Data"%>
<%@page import="com.files.entites.Datadao"%>
<%@page import="java.util.List" %>
<%@ page errorPage="InvalidAccess.jsp" %>
  

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Successfully! Contact info....</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

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
            text-decoration: none;
            transition: all .2s linear;
        }

        html {
            font-size: 62.5%;
            overflow-x: hidden;
            scroll-padding-top: 6rem;
            scroll-behavior: smooth;
        }

        .container {
            display: flex;
            align-items: center;
            flex-wrap: wrap;
            justify-content: space-between;
            height: 100vh;
            width: 100%;
            background-color: var(--orange);
        }

        .box {
            height: 95%;
            width: 30%;
            box-shadow: 0 1rem 2rem rgba(82, 34, 34, 0.9);
            background: var(--orange);
            border-radius: 2rem;
            margin: 2rem;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-wrap: wrap;
            flex-direction: column;
        }

        .box #btn {
            padding: .6rem 1rem;
            font-size: 3rem;
            color: #333;
            transition: all ease-in-out 0.3s;
            font-weight: bold;
            text-shadow: 5px 5px 10px black;
            padding: 2rem;
            background: transparent;
            cursor: pointer;
            border: none;
            outline: none;
        }

        .box #btn:hover {
            text-shadow: 10px 10px 10px red;
        }


        .btn {
            display: inline-block;
            margin-top: 1rem;
            background: var(--orange);
            color: #fff;
            padding: .8rem 3rem;
            border: .2rem solid var(--orange);
            cursor: pointer;
            font-size: 1.7rem;
        }

        .btn:hover {
            background: rgba(255, 165, 0, .2);
            color: var(--orange);
        }

        #box1 {
            box-shadow: 0 1rem 2rem rgba(82, 34, 34, 0.9);
            border-radius: 2rem;
            margin: 2rem;
            justify-content: center;
            flex-wrap: wrap;
        }

        #box1 img {

            object-fit: contain;
            box-shadow: 0 1rem 2rem rgba(82, 34, 34, 0.9);
            border-radius: 2rem;
        }

        #box1 .text {
            margin: 4rem;
            font-size: 3rem;
            color: #333;
            text-shadow: 1px 1px #ff0000;
        }

        #box1 h2 {
            margin: 4rem;
            font-size: 1.5rem;
            color: #333232;
            text-shadow: 5px 5px 5px #ff0000;

        }

        .Book {
            position: fixed;
            top: -120%;
            left: 0;
            min-height: 100vh;
            z-index: 1;
            width: 100%;
            background: rgba(0, 0, 0, .7);
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .Book.active {
            top: 0;
        }

        .Book .data {
            background: #333;
            height: 80vh;
            width: 75%;
        }

        .data a {
            color: var(--orange);
            padding: 2rem;
            text-decoration: none;
            font-size: 2rem;
        }

        .data a:hover {
            text-decoration: underline;
        }

        .SeeUser {
            position: fixed;
            top: -120%;
            left: 0;
            min-height: 100vh;
            z-index: 100000;
            width: 100%;
            background: rgba(0, 0, 0, .7);
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .SeeUser.active {
            top: 0;
        }

        .SeeUser .data {
            background: #333;
            height: 80vh;
/*             width: 90%;
 */        }

        .SendMail {
            position: fixed;
            top: -120%;
            left: 0;
            min-height: 100vh;
            z-index: 100000;
            width: 100%;
            background: rgba(0, 0, 0, .7);
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .SendMail.active {
            top: 0;
        }
        .updateuser {
            position: fixed;
            top: -120%;
            left: 0;
            min-height: 100vh;
            z-index: 100000;
            width: 100%;
            background: rgba(0, 0, 0, .7);
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .updateuser.active {
            top: 0;
        }
		.Searchuser {
            position: fixed;
            top: -120%;
            left: 0;
            min-height: 100vh;
            z-index: 100000;
            width: 100%;
            background: rgba(0, 0, 0, .7);
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .Searchuser.active {
            top: 0;
        }
        .Book #form-close {
            position: absolute;
            top: 2rem;
            right: 3rem;
            font-size: 5rem;
            color: #fff;
            cursor: pointer;
        }

        .Book #form-close:hover {
            color: var(--orange);
        }

        .SeeUser #form-close1 {
            position: absolute;
            top: 2rem;
            right: 3rem;
            font-size: 5rem;
            color: #fff;
            cursor: pointer;
        }

        .SeeUser #form-close1:hover {
            color: var(--orange);
        }

        .SendMail #form-close2 {
            position: absolute;
            top: 2rem;
            right: 3rem;
            font-size: 5rem;
            color: #fff;
            cursor: pointer;
        }

        .SendMail #form-close2:hover {
            color: var(--orange);
        }

        .updateuser #form-close3 {
            position: absolute;
            top: 2rem;
            right: 3rem;
            font-size: 5rem;
            color: #fff;
            cursor: pointer;
        }

        .updateuser #form-close3:hover {
            color: var(--orange);
        }
        
         .Searchuser #form-close4 {
            position: absolute;
            top: 2rem;
            right: 3rem;
            font-size: 5rem;
            color: #fff;
            cursor: pointer;
        }

        .Searchuseruser #form-close4:hover {
            color: var(--orange);
        }

        .Book .Tabledata {
            font-size: 1.5rem;

        }

        .Book .Tabledata>td {
            padding: 2rem;
            color: var(--orange);
        }

        .Book .TableHead {
            font-size: 2rem;
        }

        .SeeUser .Tabledata {
            font-size: 1.5rem;

        }

        .SeeUser .Tabledata>td {
            padding: 1rem;
            color: var(--orange);
        }

        .SeeUser .TableHead {
            font-size: 1rem;
        }


        .container1 {
            width: 60%;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            background-color: #f9f9f9;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .form-group input[type="text"],
        .form-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .form-group textarea {
            resize: vertical;
            height: 150px;
        }

        .btn-primary {
            display: inline-block;
            padding: 10px 20px;
            background-color: #4285f4;
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
        }

        .form-group1 label {
            font-size: 3rem;
        }

        .form-group1 input {
            padding: 1rem;
        }

        @media (max-width:980px) {
            .container {
                flex-flow: column;
                height: 100vh;
            }

            #box {
                width: 100%;
            }

            #box1 img {
                width: 100%;
            }

            .box {
                width: 80%;
                flex-wrap: wrap-reverse;
                flex-direction: initial;
                height: auto;
            }

            .box #btn {
                font-size: 2rem;
                padding: 1rem;
            }

            .Book .data {
                width: 90vw;
                height: inherit;
                display: table;
                height:50vh;
            }

            .Book .TableHead {
                font-size: 1rem;
            }

            .Book .Tabledata>td {
                padding: 0rem;
                color: var(--orange);
            }
            .SeeUser .data {
                width: 90vw;
                display: table;
                height: inherit;
            }
            .SeeUser .TableHead {
                font-size: 1rem;
            }

            .SeeUser .Tabledata>td {
            	padding:0rem;
                color: var(--orange);
                font-size:1rem;
            }
            .SeeUser .Tabledata td>a {
            	font-size:1rem;
            }
        }

        @media (max-width:768px) {
            #box1 .text {
                font-size: 2rem;
            }

            #box1 h2 {
                font-size: 1.5rem;
            }
            .container1{
            	width:100%;
            }
        }
        @media (max-width:575px){
        	.SeeUser .TableHead th{
                font-size: 1rem;
                padding: 1rem
            }

            .SeeUser .Tabledata>td {
            	padding:rem;
                color: var(--orange);
                font-size:1rem;
            }
            .SeeUser .Tabledata td>a {
            	font-size:.5rem;
            }
        }
    </style>
</head>

<body>
    <% String Adminname=request.getParameter("inemail"); if(Adminname.isBlank()) { } else { %>
        <div class="container">
            <div class="box">
                <button class="formbtn" id="btn">Bookings</button>
                <button class="formbtn1" id="btn">See Users</button>
                <button class="formbtn2" id="btn">Send Mails</button>
                <button class="formbtn3" id="btn">Search User</button>
                <button class="formbtn4" id="btn">Update User</button>
                <button class="formbtn5" id="btn">Add Packages</button>
            </div>
            <div class="" id="box1">
                <img src="./Images/Adminimageback.jpg" alt="img">
                <h1 class="text">Welcome Admin : <%=request.getAttribute("name")%>
                </h1>
                <input type="hidden" name="inemail" value="<%=request.getParameter(" inemail") %>"></input>
                <h2>For More Website Related Information Contact Us On : 7827836705 </h2>
            </div>

            <% int pages=Integer.parseInt(request.getParameter("Page")); int total=7; if(pages==1) { pages--; } else {
                pages=(pages-1)*total; } BookDataDao dao=new BookDataDao(); List<BookData> records =
                dao.getRecords(pages, total);
                %>

                <div class="Book">
                    <i class="fas fa-times" id="form-close"></i>
                    <div class="data">
                        <table width='100%' border='3'>
                            <tr class="TableHead">
                                <th>Destination</th>
                                <th>Guests</th>
                                <th>Phone</th>
                                <th>Arrival</th>
                                <th>Leaving</th>
                                <th>Where From</th>
                                <th>Booking Time</th>
                            </tr>
                            <% for(BookData u :records) { %>
                                <tr class="Tabledata">
                                    <td>
                                        <%= u.getDestination()%>
                                    </td>
                                    <td>
                                        <%= u.getGuests()%>
                                    </td>
                                    <td>
                                        <%= u.getPhone()%>
                                    </td>
                                    <td>
                                        <%= u.getArrival()%>
                                    </td>
                                    <td>
                                        <%= u.getLeaving()%>
                                    </td>
                                    <td>
                                        <%= u.getFrom()%>
                                    </td>
                                    <td>
                                        <%= u.getBooking_Time() %>
                                    </td>
                                </tr>
                                <% } %>
                        </table>
                        <% /* String name1=(String)request.getAttribute("name"); */ int count=dao.countRecords(); int
                            pagess=count/total; int mod=count%total; int npages=0; if(mod==0) { npages=pagess; } else {
                            npages=pagess+1; } if(npages!=0) { for(int i=1;i<=npages;i++) { %>
                            <a href='AdminProfile.jsp?Page=<%=i%>&inemail=<%=request.getParameter("inemail")%>'>Page
                                <%=i%></a>
                            <% } } %>
                    </div>
                </div>

                <% int pg=Integer.parseInt(request.getParameter("Page")); int total1=8; if(pg==1) { pg--; } else {
                    pg=(pg-1)*total1; } Datadao dao2=new Datadao(); List<Data> record = dao2.getRecords(pg, total1);
                    %>

                    <div class="SeeUser">
                        <i class="fas fa-times" id="form-close1"></i>
                        <div class="data">
                            <table width='100%' border='5'>
                                <tr class="TableHead">
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                    <th>Address</th>
                                    <th>Password</th>
                                    <th>update/Delete</th>
                                </tr>
                                <% for(Data u :record) { %>
                                    <tr class="Tabledata">
                                        <td>
                                            <%= u.getName()%>
                                        </td>
                                        <td>
                                            <%= u.getEmail()%>
                                        </td>
                                        <td>
                                            <%= u.getPhone()%>
                                        </td>
                                        <td>
                                            <%= u.getAddress()%>
                                        </td>
                                        <td>
                                            <%= u.getPassword()%>
                                        </td>
                                        <td><a
                                                href='UpdateUser.jsp?name=<%=u.getName()%>&email=<%= u.getEmail()%>&phone=<%= u.getPhone()%>&address=<%= u.getAddress()%>&pass=<%= u.getPassword()%>'>Update</a><a
                                                href='DeleteUser.jsp?email=<%=u.getEmail()%>'>Delete</a></td>

                                    </tr>
                                    <% } %>
                            </table>
                            <% int count1=dao2.countRecords(); int pagess1=count/total; int mod1=count%total; int
                                npages1=0; if(mod==0) { npages1=pagess1; } else { npages1=pagess1+1; } if(npages1!=0) {
                                for(int i=1;i<=npages1;i++) { %>
                                <a href='AdminProfile.jsp?Page=<%=i%>&inemail=<%=request.getParameter("inemail")%>'>Page
                                    <%=i%></a>
                                <% } } %>

                        </div>
                    </div>

                    <div class="SendMail">
                        <i class="fas fa-times" id="form-close2"></i>
                        <div class="container1">
                            <h2>Compose Email</h2>
                            <form action="MailServlet" method="get">
                                <div class="form-group">
                                    <label for="to">To:</label>
                                    <input type="text" id="to" name="to" placeholder="Enter recipient's email address">
                                </div>
                                <div class="form-group">
                                    <label for="subject">Subject:</label>
                                    <input type="text" id="subject" name="subject" placeholder="Enter email subject">
                                </div>
                                <div class="form-group">
                                    <label for="message">Message:</label>
                                    <textarea id="message" name="message" placeholder="Enter your message"></textarea>
                                </div>
                                <button class="btn-primary" type="submit">Send</button>
                            </form>
                        </div>
                    </div>
                    
                    <div class="updateuser">
                        <i class="fas fa-times" id="form-close3"></i>
                        <form action="UpdateUserbyAdminServlet" method="post">
                            <div class="form-group1">
                                <label for="to">Enter Email : </label>
                                <input type="text" id="email" name="email" placeholder="Enter Email">
                            </div>
                            <button class="btn" type="submit">Next</button>
                        </form>
                    </div>
                    
                    <div class="Searchuser">
                        <i class="fas fa-times" id="form-close4"></i>
                        <form action="SearchUserServlet" method="post">
                            <div class="form-group1">
                                <label for="to">Enter Email : </label>
                                <input type="text" id="email" name="email" placeholder="Enter Email">
                            </div>
                            <button class="btn" type="submit">Next</button>
                        </form>
                    </div>
        </div>
        <script src="./Script/script1.js"></script>
        <% } %>
</body>
</html>