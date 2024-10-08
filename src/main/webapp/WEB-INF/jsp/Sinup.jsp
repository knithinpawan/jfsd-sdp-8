 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
 <html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
<link rel="icon" type="image/x-icon" href="https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Emblem_of_Andhra_Pradesh.svg/450px-Emblem_of_Andhra_Pradesh.svg.png">
<style>
       body, html {
        height: 100%;
        margin: 0;
        font-family: Arial, sans-serif;
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
        background: rgba(255, 255, 255, 0.8);
        padding: 15px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
        max-width: 600px;
        min-width: 400px;
        width: 100%;
    }

    /* Styling for the h1 tag */
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

    .error {
        color: red;
        font-size: 12px;
    }

form label {
    display: block;
    margin-top: 5px;
    font-size: 14px;
    color: #A52A2A; /* Light brown color */
}
    form input, form select, form textarea {
        width: 100%;
        padding: 6px;
        margin-top: 3px;
        border-radius: 5px;
        border: 1px solid #ccc;
    }

    /* Dark pink color for submit button */
    form input[type="submit"] {
        background-color: #ff1493; /* Dark pink color */
        color: white;
        border: none;
        cursor: pointer;
        padding: 8px;
        font-size: 16px;
        margin-top: 10px;
        border-radius: 5px;
    }

    /* Hover effect for submit button */
    form input[type="submit"]:hover {
        background-color: #e0137a; /* Darker shade of pink */
    }

    /* Styling for radio buttons and labels */
    .gender-group {
        display: flex;
        align-items: center;
        margin-top: 5px;
        background-color: #f0f8ff; /* Light blue background */
        padding: 10px;
        border-radius: 5px;
    }

    .gender-group label {
        margin-right: 10px;
        color: #333; /* Dark text color */
    }

    /* Styling for radio button inputs */
    .gender-group input[type="radio"] {
        accent-color: #ff1493; /* Dark pink color for radio buttons */
        margin-right: 5px;
    }
    
</style>
</head>
<body>
<section class="middle">
<center>
<section class="boxing">
<h1>Sign Up</h1>
 <form:form method="post" action="/Jsfdspring/addsave" modelAttribute="sin" >
         <label>Enter Citizen Aadhar no:</label>
    <form:input path="adno" required="true" minlength="12" maxlength="12" />
  <form:errors path="adno" cssClass="error" />
    <br>

    <label>Enter Citizen Name:</label>
    <form:input path="fname" required="true" minlength="2" />
 <form:errors path="fname" cssClass="error" />
    <br>

    <label>Enter Citizen Age:</label>
    <form:input path="age" required="true" type="number"  min="18" max="120" />
       <form:errors path="age" cssClass="error" />
    <br>

 <div class="gender-group">
        <label>Citizen Gender:</label>
        <form:radiobutton path="gender" value="Male" /> Male
        <form:radiobutton path="gender" value="Female" /> Female
    </div>
     <form:errors path="gender" cssClass="error" />
    <br>

    <label>Enter Citizen Village:</label>
    <form:input path="village" required="true" />
    <form:errors path="village" cssClass="error" />
    <br>

    <label>Enter Citizen Mandal:</label>
    <form:input path="mandal" required="true" />
 <form:errors path="mandal" cssClass="error" />
    <br>

    <label>Enter Citizen District:</label>
    <form:input path="dist" required="true" />
   <form:errors path="dist" cssClass="error" />
    <br>

    <label>Enter Citizen Phone:</label>
    <form:input path="phone" required="true" minlength="10" maxlength="10" pattern="[0-9]{10}" />
 <form:errors path="phone" cssClass="error" />
    <br>

    <label>Enter Citizen Email:</label>
    <form:input path="email" required="true" type="email" />
   <form:errors path="email" cssClass="error" />
    <br>

    <label>Enter Citizen Password:</label>
    <form:input path="password" required="true" minlength="6" type="password" />
    <form:errors path="password" cssClass="error" />
    <br>
         
        <input type="submit" value="save">
    </form:form></center></section>
    </section>
</body>
</html>
 