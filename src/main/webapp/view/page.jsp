<%--
  Created by IntelliJ IDEA.
  User: huuth
  Date: 7/16/2023
  Time: 11:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta content="Codescandy" name="author">
        <title>Shop Wishlist eCommerce HTML Template - FreshCart </title>
        <!-- Favicon icon-->
        <link rel="shortcut icon" type="image/x-icon" href="../assets/images/favicon/favicon.ico">


        <!-- Libs CSS -->
        <link href="../assets/libs/bootstrap-icons/font/bootstrap-icons.min.css" rel="stylesheet">
        <link href="../assets/libs/feather-webfont/dist/feather-icons.css" rel="stylesheet">
        <link href="../assets/libs/simplebar/dist/simplebar.min.css" rel="stylesheet">


        <!-- Theme CSS -->
        <link rel="stylesheet" href="../assets/css/theme.min.css">
        <!-- Google tag (gtag.js) -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=G-M8S4MT3EYG"></script>
        <script>
            window.dataLayer = window.dataLayer || [];

            function gtag() {
                dataLayer.push(arguments);
            }

            gtag('js', new Date());

            gtag('config', 'G-M8S4MT3EYG');
        </script>
    </head>
<body>
<%--Header--%>
<%@ include file="header.jsp" %>

<section class="mt-8 mb-14">
    <div class="container">
        <!-- row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="mb-8">
                    <!-- heading -->
                    <h1 class="mb-1">My Wishlist</h1>
                    <p>There are 5 products in this wishlist.</p>
                </div>
                <div>
                    <!-- table -->
                    <div class="table-responsive">
                        <table class="table text-nowrap table-with-checkbox">
                            <thead class="table-light">
                            <tr>
                                <th>
                                    <!-- form check -->
                                    <div class="form-check">
                                        <!-- input --><input class="form-check-input" type="checkbox" value=""
                                                             id="checkAll">
                                        <!-- label --><label class="form-check-label" for="checkAll">
                                    </label>
                                    </div>
                                </th>
                                <th></th>
                                <th>Product</th>
                                <th>Amount</th>
                                <th>Status</th>
                                <th>Actions</th>
                                <th>Remove</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${listProduct}" var="x">
                                <tr>
                                    <td class="align-middle">
                                        <!-- form check -->
                                        <div class="form-check">
                                            <!-- input --><input class="form-check-input" type="checkbox" value=""
                                                                 id="chechboxTwo">
                                            <!-- label --><label class="form-check-label" for="chechboxTwo">
                                        </label>
                                        </div>
                                    </td>
                                    <td class="align-middle">
                                        <a href="#"><img src="${x.img}"
                                                         class="icon-shape icon-xxl" alt=""></a>
                                    </td>
                                    <td class="align-middle">
                                        <div>
                                            <h5 class="fs-6 mb-0"><a href="#" class="text-inherit">${x.name}</a>
                                            </h5>
                                        </div>
                                    </td>
                                    <td class="align-middle">$${x.price}</td>
                                    <td class="align-middle"><span class="badge bg-success">${x.status}</span></td>
                                    <td class="align-middle">
                                        <div class="btn btn-primary btn-sm">Add to Cart</div>
                                    </td>
                                    <td class="align-middle "><a href="#" class="text-muted" data-bs-toggle="tooltip"
                                                                 data-bs-placement="top" title="Delete">
                                        <i class="feather-icon icon-trash-2"></i>
                                    </a></td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

</section>

<%--Footer--%>
<%@ include file="footer.jsp" %>

<!-- Javascript-->
<!-- Libs JS -->
<script src="../assets/libs/jquery/dist/jquery.min.js"></script>
<script src="../assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="../assets/libs/simplebar/dist/simplebar.min.js"></script>

<!-- Theme JS -->
<script src="../assets/js/theme.min.js"></script>

</body>
</html>
