<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand mb-0 h1" href="/">Deliver<span style="color: #f76e40;">it.</span></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <sec:authorize access="hasRole('ADMIN')">
        <div class="collapse navbar-collapse" id="navbarNav1">

            <div class="navbar-nav">
                <a class="nav-item nav-link ${param.page == "home" ? "active" : null}" href="/">Home</a>
                <a class="nav-item nav-link ${param.page == "shipments" ? "active" : null}"
                   href="/shipments">Shipments</a>
                <a class="nav-item nav-link ${param.page == "drivers" ? "active" : null}" href="/drivers">Drivers</a>
                <a class="nav-item nav-link ${param.page == "customers" ? "active" : null}" href="/customers">Customers</a>
                <a class="nav-item nav-link ${param.page == "inquires" ? "active" : null}" href="/all-inquires">Inquires</a>
                <a class="nav-item nav-link ${param.page == "warehouses" ? "active" : null}" href="/warehouses">Warehouses</a>
            </div>
        </div>
        </sec:authorize>

        <sec:authorize access="hasRole('SUPERVISOR')">
            <div class="collapse navbar-collapse" id="navbarNav3">

                <div class="navbar-nav">
                    <a class="nav-item nav-link ${param.page == "home" ? "active" : null}" href="/">Home</a>
                    <a class="nav-item nav-link ${param.page == "shipments" ? "active" : null}"
                       href="/shipmentsForWarehouse">Shipments</a>
                    <a class="nav-item nav-link ${param.page == "drivers" ? "active" : null}" href="/driversForWarehouse">Drivers</a>
                    <a class="nav-item nav-link ${param.page == "inquires" ? "active" : null}" href="/inquires">Inquires</a>
<%--                    <a class="nav-item nav-link ${param.page == "warehouses" ? "active" : null}" href="/warehouses">Warehouses</a>--%>
                </div>
            </div>
        </sec:authorize>

        <sec:authorize access="hasRole('CUSTOMER')">
        <div class="collapse navbar-collapse" id="navbarNav2">
            <div class="navbar-nav">
                <a class="nav-item nav-link ${param.page == "home" ? "active" : null}" href="/">Home</a>
                <a class="nav-item nav-link ${param.page == "sendPackage" ? "active" : null}" href="/createPackage">Send Package</a>
                <a class="nav-item nav-link ${param.page == "myPackages" ? "active" : null}"
                   href="/myPackages">My packages</a>
                <a class="nav-item nav-link ${param.page == "tracking" ? "active" : null}" href="/searchTrackingNumber">Tracking</a>
                <a class="nav-item nav-link ${param.page == "inquires" ? "active" : null}"
                   href="/myInquires">Inquires</a>
            </div>

        </div>
        </sec:authorize>

        <sec:authorize access="hasRole('DRIVER')">
            <div class="collapse navbar-collapse" id="navbarNav2">
                <div class="navbar-nav">
                    <a class="nav-item nav-link ${param.page == "home" ? "active" : null}" href="/">Home</a>
                    <a class="nav-item nav-link ${param.page == "deliveries" ? "active" : null}" href="/deliveries">Deliveries</a>
                    <a class="nav-item nav-link ${param.page == "pastRides" ? "active" : null}" href="/pastRides">Past Rides</a>
<%--                    <a class="nav-item nav-link ${param.page == "inquires" ? "active" : null}"--%>
<%--                       href="/myInquires">Inquires</a>--%>
                </div>

            </div>
        </sec:authorize>

        <div>
            <a class="btn btn-outline-secondary my-2 my-sm-0 logout-btn settings-btn" data-bs-toggle="modal"
               data-bs-target="#settingsModal">Settings</a>
            <a class="btn btn-outline-danger my-2 my-sm-0 logout-btn" href="/logout">
                Logout
            </a>
        </div>

    </div>

</nav>

<%@ include file="settings_modal.jsp" %>