<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--<script src="<c:url value="/resources/bootstrap/popper.min.js"/>"></script>
<script src="<c:url value="/resources/bootstrap/dist/js/bootstrap.min.js"/>"></script>--%>


<%--

<script src="<c:url value="/resources/bootstrap/dist/jquery.dataTables.min.js"/>"></script>
<script src="<c:url value="/resources/bootstrap/dist/dataTables.bootstrap4.min.js"/>"></script>


<script src="<c:url value="/resources/dataTable/jquery.base64.js"/>"></script>
<script src="<c:url value="/resources/dataTable/tableExport.js"/>"></script>
<script src="<c:url value="/resources/dataTable/tableExport.min.js"/>"></script>
<script src="<c:url value="/resources/dataTableJar/FileSaver/FileSaver.min.js"/>"></script>
<script src="<c:url value="/resources/dataTableJar/js-xlsx/xlsx.core.min.js"/>"></script>
<script src="<c:url value="/resources/dataTableJar/jsPDF/jspdf.min.js"/>"></script>
<script src="<c:url value="/resources/dataTableJar/jsPDF-AutoTable/jspdf.plugin.autotable.js"/>"></script>
--%>

<!-- Vendor JS Files -->
<script src="<c:url value="/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
<script src="<c:url value="/resources/assets/vendor/glightbox/js/glightbox.min.js"/>"></script>
<script src="<c:url value="/resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"/>"></script>
<script src="<c:url value="/resources/assets/vendor/swiper/swiper-bundle.min.js"/>"></script>

<!-- Template Main JS File -->
<script src="<c:url value="/resources/assets/js/main.js"/>"></script>

<script src="<c:url value="/resources/assets/js/jQuery-3.4.1.min.js"/>"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.blockUI/2.70/jquery.blockUI.min.js"></script>
<script src="<c:url value="/resources/assets/js/nprogress.js"/>"></script>
<script src="<c:url value="/resources/js/script.js" />"></script>
<script src="<c:url value="/resources/js/datepicker.min.js" />"></script>
<script src="<c:url value="/resources/js/sweetalert/sweetalert.min.js" />"></script>
<script src="<c:url value="/resources/bootstrap/jquery.form.js"/>"></script>
<script src="<c:url value="/resources/bootstrap/JqueryAjaxFormSubmit.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.validate.min.js"/>"></script>
<script src="<c:url value="/resources/js/shari.js"/>"></script>

<%--<script src="<c:url value="/resources/assets/js/jquery.dataTables.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/dataTables.bootstrap4.min.js"/>"></script>--%>


<script>
    $('.dropdown-menu a.dropdown-toggle').on('click', function (e) {
        if (!$(this).next().hasClass('show')) {
            $(this).parents('.dropdown-menu').first().find('.show').removeClass("show");
        }
        var $subMenu = $(this).next(".dropdown-menu");
        $subMenu.toggleClass('show');

        $(this).parents('li.nav-item.dropdown.show').on('hidden.bs.dropdown', function (e) {
            $('.dropdown-submenu .show').removeClass("show");
        });
        return false;
    });
</script>