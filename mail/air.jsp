<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page import="java.io.*, javax.servlet.*, javax.servlet.http.*" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Book Airplane Ticket</title>
        </head>

        <body>
            <h1>Book Your Airplane Ticket</h1>

            <%  String name=request.getParameter("name"); 
                String email=request.getParameter("email"); 
                String from=request.getParameter("from"); 
                String to=request.getParameter("to"); String date=request.getParameter("date"); if (name !=null && email !=null
                && from !=null && to !=null && date !=null) { // Display booking confirmation out.println("<h2>Booking
                Confirmation</h2>");
                out.println("<p>Name: " + name + "</p>");
                out.println("<p>Email: " + email + "</p>");
                out.println("<p>From: " + from + "</p>");
                out.println("<p>To: " + to + "</p>");
                out.println("<p>Date of Journey: " + date + "</p>");
                out.println("<p>Thank you for booking with us!</p>");
                } else {
                %>

                <form action="bookTicket.jsp" method="post">
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" required><br><br>

                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required><br><br>

                    <label for="from">From:</label>
                    <input type="text" id="from" name="from" required><br><br>

                    <label for="to">To:</label>
                    <input type="text" id="to" name="to" required><br><br>

                    <label for="date">Date of Journey:</label>
                    <input type="date" id="date" name="date" required><br><br>

                    <input type="submit" value="Book Ticket">
                </form>

                <% } %>
        </body>

        </html>