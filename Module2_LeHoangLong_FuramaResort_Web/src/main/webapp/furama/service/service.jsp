<%--
  Created by IntelliJ IDEA.
  User: lelon
  Date: 9/3/2021
  Time: 6:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="shortcut icon" href="<c:url value="/image/favicon.ico"/>"/>
    <title>Service</title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/bootstrap-4.6.0-dist/css/bootstrap.min.css"/>">
    <style>
        html, body {
            width: 100%;
            height: 100%;
        }
        td {
            color: black;
        }
        table {
            margin: 0 auto;
            text-align: center;
        }
        label {
            font-weight: bold;
            font-size: 20px;
        }
        input {
            min-width: 80px;
        }
        .contain {
            background-image: url("/image/furama-resort-da-nang-1-cr-800x450.jpg");
            background-repeat: no-repeat;
            background-size: 100% 100%;
            width: 100%;
            height: 100%;
            position: relative;
        }
        .main {
            margin: auto;
            width: 33em;
            height: 33em;
            text-align: center;
            position: absolute;
            top: 0;
            left: 0;
            bottom: 0;
            right: 0;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            background-color: #2098bd;
            opacity: 0.8;
        }
        .message {
            font-size: 24px;
            font-weight: bold;
            color: #046056;
            opacity: 1.0;
        }
    </style>
</head>
<body>
<div class="contain">
    <div class="main">
        <form action="${pageContext.request.contextPath}/furamaResort" method="post">
            <fieldset style="opacity: 0.7">
                <legend style="color: black; font-weight: bold; font-size: 24px; text-align: center">D???ch V??? M???i</legend>
                <p>
                    <c:if test='${requestScope["message"] != null}'>
                        <span class="message">${requestScope["message"]}</span>
                    </c:if>
                </p>
                <table>
                    <thead>
                    <tr>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>
                            <label for="service-id">M?? d???ch v???:</label>
                        </td>
                        <td>
                            <input type="text" name="service-id" id="service-id">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="service-name">T??n d???ch v???:</label>
                        </td>
                        <td>
                            <input type="text" name="service-name" id="service-name">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="service-area">Di???n t??ch s??? d???ng:</label>
                        </td>
                        <td>
                            <input type="text" name="service-area" id="service-area">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="service-cost">Chi ph?? thu?? (????n v??? VND):</label>
                        </td>
                        <td>
                            <input type="text" name="service-cost" id="service-cost">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="service-max-people">S??? l?????ng ng?????i t???i ??a:</label>
                        </td>
                        <td>
                            <input type="text" name="service-max-people" id="service-max-people">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Ki???u thu??:</label>
                        </td>
                        <td>
                            <select name="rent-type">
                                <option value="year">N??m</option>
                                <option value="month">Th??ng</option>
                                <option value="day">Ng??y</option>
                                <option value="hour">Gi???</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>D???ch v??? cho thu??:</label>
                        </td>
                        <td>
                            <select name="service-type">
                                <option value="villa">Villa</option>
                                <option value="house">House</option>
                                <option value="room">Room</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="color: #046056; font-weight: bold; font-size: 24px">
                            C??c d???ch v??? thu?? Villa, House c???n th??m th??ng tin d?????i ????y:</td>
                    </tr>
                    <tr>
                        <td>
                            <label>Ti??u chu???n ph??ng:</label>
                        </td>
                        <td>
                            <select name="standard-room">
                                <option value="year">Bungalow</option>
                                <option value="month">Superior (SUP)</option>
                                <option value="day">Deluxe (DLX)</option>
                                <option value="hour">Suite (SUT)</option>
                                <option value="hour">Junior Suite</option>
                                <option value="hour">Executive</option>
                                <option value="hour">Premier</option>
                                <option value="hour">King</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>M?? t??? c??c ti???n nghi kh??c:</label>
                        </td>
                        <td>
                            <select name="rent-type">
                                <option value="food">Food</option>
                                <option value="drink">Drink</option>
                                <option value="karaoke">Karaoke</option>
                                <option value="car">Car</option>
                                <option value="massage">Massage</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="pool-area">Di???n t??ch h??? b??i (?????i v???i Villa):</label>
                        </td>
                        <td>
                            <input type="text" name="pool-area" id="pool-area">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="number-of-floors">S??? t???ng:</label>
                        </td>
                        <td>
                            <input type="text" name="number-of-floors" id="number-of-floors">
                        </td>
                    </tr>
                    <input type="hidden" name="action" value="service"/>
                    </tbody>
                </table>
            </fieldset>
        </form>
    </div>
</div>
</body>
</html>

