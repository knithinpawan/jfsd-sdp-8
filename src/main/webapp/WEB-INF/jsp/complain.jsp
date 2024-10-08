<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Feedback Form</title>
<link rel="icon" type="image/x-icon" href="https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Emblem_of_Andhra_Pradesh.svg/450px-Emblem_of_Andhra_Pradesh.svg.png">
<style>
    /* Star rating styling */
    .star-rating {
        display: inline-block;
        direction: rtl; /* Right to left alignment for reverse star order */
    }

    .star-rating input[type="radio"] {
        display: none; /* Hide the radio buttons */
    }

    .star-rating label {
        font-size: 30px;
        color: #ccc;
        cursor: pointer;
        display: inline-block; /* Ensure stars are inline */
        position: relative;
    }

    .star-rating label:before {
        content: "\2605"; /* Unicode star character */
    }

    .star-rating input[type="radio"]:checked ~ label {
        color: #f5b301; /* Gold color for selected stars */
    }

    .star-rating label:hover,
    .star-rating label:hover ~ label {
        color: #f5b301; /* Gold color on hover */
    }

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
        max-width: 800px;
        width: 100%;
        display: flex; /* Flexbox for side-by-side layout */
    }

    .image-container {
        flex: 1; /* Make image take up 1 part of the flex space */
        margin-right: 20px; /* Space between image and form */
    }

    .form-container {
        flex: 2; /* Make form take up 2 parts of the flex space */
    }

    .image-container img {
        max-width: 100%; /* Ensure the image fits the container */
        border-radius: 10px; /* Optional: rounded corners for image */
    }

    h1 {
        text-align: center;
        background-color: #ff1493; /* Dark pink background */
        color: white;
        padding: 10px;
        border-radius: 5px;
        border: 2px solid #e0137a; /* Darker border */
        display: inline-block;
        box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3); /* Optional: box shadow */
    }

    .error {
        color: red;
        font-size: 12px;
    }

    form label {
        display: block;
        margin-top: 5px;
        font-size: 14px;
    }

    form input, form select, form textarea {
        width: 100%;
        padding: 6px;
        margin-top: 3px;
        border-radius: 5px;
        border: 1px solid #ccc;
    }

    form input[type="submit"] {
        background-color: #ff1493;
        color: white;
        border: none;
        cursor: pointer;
        padding: 8px;
        font-size: 16px;
        margin-top: 10px;
    }

    form input[type="submit"]:hover {
        background-color: #e01483;
    }
</style>
</head>
<body>
<section class="middle"> 
    <center>
        <section class="boxing"> 
            <div class="image-container">
                <img src= "https://nocorruption.in/files/JOGESWARA-RAO.-V.jpg" alt="Related Image">
                <h4>Name:V jogeswara rao</h4>
                <h4>Time-period:2009-2029</h4>
            </div>
            <div class="form-container">
                <h1>Report</h1>
                <form:form method="post" action="/Jsfdspring/Complain" modelAttribute="com">
                    <label for="adno"> Citizen Aadhar No:</label>
                    <form:input path="Adno" required="true" value="${sin.adno}" readonly="true" />
                    <form:errors path="Adno" cssClass="error" />
                    <br>

                    <label for="name">Citizen Name:</label>
                    <form:input path="Name" required="true" value="${sin.fname}" readonly="true" />
                    <form:errors path="Name" cssClass="error" />
                    <br>

                    <label for="mandal">Citizen Mandal:</label>
                    <form:input path="Mandal" required="true" value="${sin.mandal}" readonly="true" />
                    <form:errors path="Mandal" cssClass="error" />
                    <br>

                    <label for="complain">Complain:</label>
                    <form:textarea path="Complain" required="true" />
                    <form:errors path="Complain" cssClass="error" />
                    <br>

                    <label for="Feedback">Feedback:</label>
                    <div class="star-rating">
                        <form:radiobutton path="Feedback" value="5" id="star5" />
                        <label for="star5" title="5 stars">★</label>

                        <form:radiobutton path="Feedback" value="4" id="star4" />
                        <label for="star4" title="4 stars">★</label>

                        <form:radiobutton path="Feedback" value="3" id="star3" />
                        <label for="star3" title="3 stars">★</label>

                        <form:radiobutton path="Feedback" value="2" id="star2" />
                        <label for="star2" title="2 stars">★</label>

                        <form:radiobutton path="Feedback" value="1" id="star1" />
                        <label for="star1" title="1 star">★</label>
                    </div>
                    <form:errors path="Feedback" cssClass="error" />

                    <input type="submit" value="Submit" />
                </form:form>
            </div>
        </section>
    </center>
</section>
</body>
</html>
