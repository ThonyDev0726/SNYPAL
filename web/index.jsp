<%-- 
    Document   : index
    Created on : 1 dic. 2022, 23:10:01
    Author     : perez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!--=============== FAVICON ===============-->
        <link rel="shortcut icon" href="assets/img/imgHomeInicio.png" type="image/x-icon">

        <!--=============== BOXICONS ===============-->
        <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">

        <!--=============== SWIPER CSS ===============--> 
        <link rel="stylesheet" href="assets/css/swiper-bundle.min.css">

        <!--=============== CSS ===============-->
        <link rel="stylesheet" href="assets/css/styles.css">
        <title>SNYPAL</title>
    </head>
    <body>
        <!--==================== HEADER ====================-->
        <header class="header" id="header">
            <nav class="nav container">
                <a href="#" class="nav__logo">
                    SNYPAL
                </a>

                <div class="nav__menu" id="nav-menu">
                    <ul class="nav__list">
                        <li class="nav__item">
                            <a href="#home" class="nav__link active-link">Home</a>
                        </li>
                        <li class="nav__item">
                            <a href="Controller?accion=iniciar-sesion" class="nav__link ">Iniciar sesion</a>
                        </li>
                        <li class="nav__item">
                            <a href="Controller?accion=unirme" class="nav__link">Registrarme</a>
                        </li>                       
                        <li class="nav__item">
                            <a href="#productos" class="nav__link">Productos</a>
                        </li>
                    </ul>

                    <div class="nav__close" id="nav-close">
                        <i class='bx bx-x' ></i>
                    </div>

                </div>
                <div class="nav__btns">
                    <!-- Theme change button -->
                    <i class='bx bx-moon change-theme' id="theme-button"></i>

                    <!-- Toggle button -->
                    <div class="nav__toggle" id="nav-toggle">
                        <i class='bx bx-grid-alt' ></i>
                    </div>
                </div>

            </nav>
        </header>

        <!--==================== MAIN ====================-->
        <main class="main">
            <!--==================== HOME ====================-->
            <section class="home" id="home">
                <div class="home__container container grid">
                    <img src="assets/img/imgHomeInicio.png" alt="" class="home__img">

                    <div class="home__data">
                        <h1 class="home__title">Bienvenido a<br> SNYPAL!</h1>
                        <p class="home__description">
                            Profesionales que tienen como lienzo una pantalla y como pincel un teclado.
                        </p>
                        <a href="Controller?accion=iniciar-sesion" class="button">INICIAR SESION</a>
                    </div>
                </div>
            </section>

            <!--==================== GIVING ====================-->
            <section class="giving section container">
                <h2 class="section__title">
                    Nosotros nos<br> dedicamos a
                </h2>

                <div class="giving__container grid">
                    <div class="giving__content">
                        <img src="img/m001t0306_a_e_commerce_26aug22.png" class="giving__img" alt=""/>
                        <h3 class="giving__title">Desarrollo movil</h3>
                        <p class="giving__description">Lo plasmamos a tus dispositivos moviles Android / iOS.</p>
                    </div>

                    <div class="giving__content">
                        <img src="img/developer_male.png" class="giving__img" alt=""/>
                        <h3 class="giving__title">Desarrollo web</h3>
                        <p class="giving__description">Lo plasmamos a la web para cualquier tipo de dispositivo pc, tablets, Celulares.</p>
                    </div>

                    <div class="giving__content">
                        <img src="img/hacker.png" class="giving__img" alt=""/>
                        <h3 class="giving__title">Ciberseguridad</h3>
                        <p class="giving__description">Prevenimos, blindamos y agregamos una seguridad a nivel global de tus sistemas.</p>
                    </div>
                </div>
            </section>

            <!--==================== CELEBRATE ====================-->
            <section class="celebrate section container" id="celebrate">
                <div class="celebrate__container grid">
                    <div class="celebrate__data">
                        <h2 class="section__title celebrate__title">
                            ¿Quienes somos? <br>
                        </h2>
                        <p class="celebrate__description">
                            Somos una empresa que promueve el desarrollo económico del país, 
                            nos aseguramos de proporcionar un determinado servicio o producto
                            de calidad a nuestros a sus consumidores.
                        </p>                      
                        <button id="upload_widget" class="button">Saber mas</button>
                    </div>
                    <img id="imagen_bd" src="img/129.png" class="celebrate__img" alt=""/>
                </div>
            </section>           

            <!--==================== NEW ====================-->
            <section class="new section container" id="productos">
                <h2 class="section__title">Nuestros productos</h2>

                <div class="new__container">
                    <div class="swiper new-swiper">
                        <div class="swiper-wrapper">
                            <article class="new__card swiper-slide">
                                <div class="new__overlay"></div>

                                <img src="img/factura.png" alt="" class="new__img">
                                <!--<h3 class="new__price">$95</h3>-->
                                <span class="new__title">Facturacion</span>

                                <button class="button new__button">
                                    <i class='bx bx-heart new__icon'></i>
                                </button>
                            </article>

                            <article class="new__card swiper-slide">
                                <div class="new__overlay"></div>

                                <img src="img/ecommerce.png" alt="" class="new__img">
                                <!--<h3 class="new__price">$20</h3>-->
                                <span class="new__title">Tiendas virtuales</span>

                                <button class="button new__button">
                                    <i class='bx bx-heart new__icon'></i>
                                </button>
                            </article>

                            <article class="new__card swiper-slide">
                                <div class="new__overlay"></div>

                                <img src="img/softMedida.png" alt="" class="new__img">
                                <!--<h3 class="new__price">$75</h3>-->
                                <span class="new__title">Software a medida</span>

                                <button class="button new__button">
                                    <i class='bx bx-heart new__icon'></i>
                                </button>
                            </article>

                        </div>

                        <div class="swiper-pagination"></div>
                    </div>
                </div>
            </section>

            <!--==================== MESSAGE ====================-->
            <section class="message section container">
                <div class="message__container grid">
                    <form action="" class="message__form">
                        <h2 class="message__title">Contactate con <br> nosotros!</h2>
                        <input type="email" placeholder="Escribe tu mensaje" class="message__input">
                        <button class="button message__button">Enviar</button>
                    </form>

                    <img src="assets/img/message.png" alt="" class="message__img">
                </div>
            </section>
        </main>


        <!--==================== FOOTER ====================-->
        <footer class="footer section">
            <span id="tag-id" class="footer__copy">&#169; SNYPAL<br> Todos los derechos reservados</span>
        </footer>


        <!--=============== SCROLL UP ===============-->
        <a href="#" class="scrollup" id="scroll-up"> 
            <i class='bx bx-up-arrow-alt scrollup__icon' ></i>
        </a>

        <!--=============== SCROLL REVEAL ===============-->
        <script src="assets/js/scrollreveal.min.js"></script>

        <!--=============== SWIPER JS ===============-->
        <script src="assets/js/swiper-bundle.min.js"></script>

        <!--=============== MAIN JS ===============-->
        <script src="assets/js/main.js"></script>
        <script src="//code.tidio.co/syaqiyggc2lpyqv3uh9ibui5u0gc1m9e.js" async></script>
        <script src="assets/js/foto.js" type="text/javascript"></script>



        <!--<button id="upload_widget" class="cloudinary-button">Upload files</button>-->

        <script src="https://upload-widget.cloudinary.com/global/all.js" type="text/javascript"></script>  

        <script type="text/javascript">
            var myWidget = cloudinary.createUploadWidget({
                cloudName: 'dtzp3trnp',
                uploadPreset: 'preset_ant'}, (error, result) => {
                if (!error && result && result.event === "success") {
                    const imagen = document.querySelector('#imagen_bd');
                    console.log('Done! Here is the image info: ', result.info);
                    document.getElementById('tag-id').innerHTML = result.info.secure_url;
                    imagen.src = result.info.secure_url;
                }
            }
            )

            document.getElementById("upload_widget").addEventListener("click", function () {
                myWidget.open();
            }, false);
        </script>


    </body>
</html>
