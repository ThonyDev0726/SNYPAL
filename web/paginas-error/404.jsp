<%-- 
    Document   : 404
    Created on : 15 ene 2023, 21:36:05
    Author     : perez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" oncontextmenu="return false">    
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="format-detection" content="telephone=no">
        <!-- =========== ICONO PARA EL TAB DE LA PESTANA=========== -->
        <link rel="icon" href="img/notebooks.svg"/>

        <!-- PAGE TITLE HERE -->
        <title>FACTURING - ADMINISTRADOR</title>
        <!-- Datatable -->
        <link href="vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet">
        <!-- FAVICONS ICON -->
        <link href="vendor/jquery-nice-select/css/nice-select.css" rel="stylesheet">
        <link href="vendor/owl-carousel/owl.carousel.css" rel="stylesheet">
        <link rel="stylesheet" href="vendor/nouislider/nouislider.min.css">
        <!-- Style css -->
        <link href="css/style.css" rel="stylesheet">
        <script src=
                "https://code.jquery.com/jquery-3.6.0.min.js" 
                integrity=
                "sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
                crossorigin="anonymous">
        </script>
    </head>

    <body class="vh-100">
        <!--*******************
            Preloader start
        ********************-->
        <div id="preloader">
            <div class="lds-ripple">
                <div></div>
                <div></div>               
            </div>
        </div>
        <!--*******************
            Preloader end
        ********************-->

        <!--**********************************
            Content body start
        ***********************************-->

        <div class="authincation h-100">
            <div class="container h-100">
                <div class="row justify-content-center h-100 align-items-center">
                    <div class="col-md-7">
                        <div class="form-input-content text-center error-page">
                            <h1 class="error-text fw-bold text-danger">&#128561;</h1>
                            <br>
                            <h4><strong class="text-danger">¡ERROR 404!</strong></h4>
                            <h4>¡La página solicitada no esta disponible!</h4>
                            <p>Es posible que haya escrito mal la dirección o que la página se haya movido.</p>
                            <div>
                                <!--<a class="btn btn-lg btn-primary" href="Dashboard?accion=${usuCargo_global}">Volver al inicio</a>-->
                                <a class="btn btn-lg btn-primary" href="javascript:history.go(-1);">Regresar</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--**********************************
            Content body end
        ***********************************-->        

        <!--**********************************
            Scripts
        ***********************************-->
        <!-- Required vendors -->
        <script src="vendor/global/global.min.js"></script>
        <script src="vendor/chart.js/Chart.bundle.min.js"></script>
        <!-- Apex Chart -->

        <!-- Datatable -->
        <script src="vendor/datatables/js/jquery.dataTables.min.js"></script>
        <script src="js/plugins-init/datatables.init.js"></script>
        <script src="vendor/jquery-nice-select/js/jquery.nice-select.min.js"></script>
        <script src="js/custom.min.js"></script>
        <script src="js/dlabnav-init.js"></script>
        <script src="js/demo.js"></script>
        <script src="vendor/dropzone/dist/dropzone.js"></script>
        <script src="//code.tidio.co/5cnpqyt88tjjrneu0j7dvg2crxsb03s3.js" async></script>     
    </body>
</html>
