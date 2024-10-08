 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
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
            background: rgba(255, 255, 255, 0.8);
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
            max-width: 600px;
            min-width: 400px;
            width: 100%;
        }

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
            background-color: #ff1493;
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
            background-color: #e0137a; /* Darker pink on hover */
        }

        /* Accent color for radio buttons */
        input[type="radio"] {
            accent-color: #ff1493;
        }
    </style>
</head>
<body>
    <section class="middle">
        <center>
            <section class="boxing">
                <h1>Login</h1>

                <form:form method="post" action="/Jsfdspring/Login" modelAttribute="sin">
                    <label>Enter Citizen Aadhar no:</label>
                    <form:input path="adno" required="true" minlength="12" maxlength="12" />
                    <form:errors path="adno" cssClass="error" />
                    <br>

                    <label>Enter Citizen Password:</label>
                    <form:input path="password" required="true" minlength="6" type="password" />
                    <form:errors path="password" cssClass="error" />
                    <br>

                    <input type="submit" value="Login">
                </form:form>

                <!-- Display error message if credentials are invalid -->
                <c:if test="${not empty error}">
                    <div style="color:red;">${error}</div>
                </c:if>
            </section>
        </center>
    </section>
</body>
</html>
 