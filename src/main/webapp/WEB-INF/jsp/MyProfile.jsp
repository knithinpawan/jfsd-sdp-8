  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Profile</title>
    <link rel="icon" type="image/x-icon" href="https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Emblem_of_Andhra_Pradesh.svg/450px-Emblem_of_Andhra_Pradesh.svg.png">

    <style>
        .middle {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url('https://uxdt.nic.in/wp-content/uploads/2020/01/NE_Preview1.png?x69772');
            background-size: cover;
            background-position: center;
        }

        .boxing {
            background: rgba(255, 255, 255, 0.8); /* Transparent white background */
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
            max-width: 600px;
            width: 100%;
        }

        /* Flex container for profile details */
        .profile-details {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            gap: 10px; /* Add spacing between details */
            padding: 10px;
        }

        /* Style for individual detail blocks */
        .detail-block {
            flex: 1 1 48%; /* Make each block take up 48% of width */
            background-color: #f0f0f0;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
        }

        /* Style for headings */
           h1 {
        text-align: center;
        background-color: #ff1493; /* Dark pink background */
        color: white;
        padding: 10px;
        border-radius: 5px;
        border: 2px solid #e0137a; /* Darker border */
        display: inline-block; /* To make the box fit content */
        box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3); /* Optional: box shadow */
    }
         h2 {
            text-align: center;
            color: white;
            background-color: #ff1493; /* Dark pink background */
            padding: 10px;
            border-radius: 5px; /* Rounded corners */
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3); /* Optional: box shadow */
            margin: 10px 0; /* Spacing above and below headings */
        }

        a {
            color: white; /* Link color */
            text-decoration: none; /* Remove underline from links */
            font-weight: bold; /* Make link bold */
        }

        a:hover {
            text-decoration: underline; /* Underline on hover */
        }
    </style>
</head>
<body>

<section class="middle">
    <div class="boxing">
        <h1>My Profile</h1>
         
        <section class="profile-details">
            <!-- Profile details wrapped in flex containers -->
            <div class="detail-block">
                <strong>Aadhar:</strong> ${Myprofile.adno}
            </div>
            <div class="detail-block">
                <strong>Name:</strong> ${Myprofile.fname}
            </div>
            <div class="detail-block">
                <strong>Age:</strong> ${Myprofile.age}
            </div>
            <div class="detail-block">
                <strong>Email:</strong> ${Myprofile.email}
            </div>
            <div class="detail-block">
                <strong>Phone:</strong> ${Myprofile.phone}
            </div>
            <div class="detail-block">
                <strong>Gender:</strong> ${Myprofile.gender}
            </div>
            <div class="detail-block">
                <strong>Consistency:</strong> ${Myprofile.mandal}
            </div>
            <div class="detail-block">
                <strong>Village:</strong> ${Myprofile.village}
            </div>
            <div class="detail-block">
                <strong>District:</strong> ${Myprofile.dist}
            </div>
        </section>
        <h2><a href="complain/${Myprofile.adno}">Complaint</a></h2> <!-- Updated heading -->
    </div>
     
</section>

</body>
</html>
  