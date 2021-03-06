<%-- 
    Document   : AdminDisplayProduct
    Created on : Nov 19, 2020, 2:14:19 PM
    Author     : Administrator
--%>


<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <title>List Orders</title>
    </head>
    <body>
        <!-- start navbar -->
        <nav class="navbar navbar-expand-sm navbar-dark bg-dark p-0">
            <div class="container">
                <a href="admin-display-product" class="navbar-brand">Blogen</a>
                <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">

                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item dropdown mr-3">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
                                <i class="fas fa-user"></i> Welcome, ${sessionScope.admin.name}
                            </a>
                            <div class="dropdown-menu">
                                <a href="profile.html" class="dropdown-item">
                                    <i class="fas fa-user-circle"></i> Profile
                                </a>
                                <a href="settings.html" class="dropdown-item">
                                    <i class="fas fa-user-friends"></i> User
                                </a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a href="admin-logout" class="nav-link">
                                <i class="fas fa-user-times"></i> Logout
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- end navbar -->

        <!-- table here -->


        <!-- upgrade table -->

        <section id="posts">
            <div class="container">
                
                <a href="admin-display-product" class="btn btn-dark btn-lg my-5" role="button" aria-pressed="true">Back</a>
                
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <h4>All Products</h4>
                            </div>
                            <table class="table table-striped">
                                <thead class="thead-dark">
                                    <tr>
                                        <th>ID</th>
                                        <th>Customer ID</th>
                                        <th>City</th>
                                        <th>Address</th>
                                        <th>Phone</th>
                                        <th>Email</th>
                                        <th>Note</th>
                                        <th>Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${requestScope.orders}" var="o" >
                                        <tr>
                                            <td>#${o.id}</td>
                                            <td>${o.customerId}</td>
                                            <td>${o.city}</td>
                                            <td>${o.address}</td>
                                            <td>${o.phone}</td>
                                            <td>${o.email}</td>
                                            <td>${o.note}</td>
                                            <td><fmt:formatNumber value="${o.totalValue}"  type="number" pattern="###,###,### VND"/></td>
                                            <!-- Approach Order -->
<!--                                            <td>
                                                <a href="admin-display-product?id=${p.id}" class="btn btn-secondary">
                                                    <i class="fas fa-angle-double-right"></i> Delete
                                                </a>
                                            </td>-->
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div class="container mt-5">
            <!-- PAGINATION -->
            <nav class="ml-4">
                <ul class="pagination justify-content-center">
					<c:forEach var="page" items="${pages}">
						<li class="page-item">
                            <a class="page-link" href="admin-display-orders?page=${page}">${page}</a>
						</li>
					</c:forEach>
                </ul>
            </nav>
        </div>


        <!-- FOOTER PART -->
        <footer id="main-footer" class="bg-dark text-white mt-5 p-5">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <p class="lead text-center">
                            Quán Anh Đeo Kính 2020 &copy;
                            <span id="year"></span> Blogen
                        </p>
                    </div>
                </div>
            </div>
        </footer>


        <!-- ALL JS FILES -->
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
