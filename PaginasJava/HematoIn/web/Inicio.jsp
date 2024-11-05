<%-- 
    Document   : Inicio =  Original 
    Created on : 16/07/2019, 03:26:09 PM
    Author     : jvaldes
--%>
<%
// Evitar que la página se almacene en caché
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>

<!-- Aquí va el código HTML de la página "inicio.jsp" -->


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio Llamadas sin tipificar</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        <script src="https://kit.fontawesome.com/2c36e9b7b1.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script>
            window.onload = function () {
            <% if (request.getParameter("error") != null) { %>
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Usuario o Contraseña incorrecta',
                });
            <% }%>
            }
        </script>


        <script>





//-----------------------------------------------------------------------------------

//Script de Animacion en el loguin 
            $('input[type="submit"]').click(function () {
                $('.login').addClass('test')
                setTimeout(function () {
                    $('.login').addClass('testtwo')
                }, 300);
                setTimeout(function () {
                    $(".authent").show().animate({right: -320}, {easing: 'easeOutQuint', duration: 600, queue: false});
                    $(".authent").animate({opacity: 1}, {duration: 200, queue: false}).addClass('visible');
                }, 500);
                setTimeout(function () {
                    $(".authent").show().animate({right: 90}, {easing: 'easeOutQuint', duration: 600, queue: false});
                    $(".authent").animate({opacity: 0}, {duration: 200, queue: false}).addClass('visible');
                    $('.login').removeClass('testtwo')
                }, 2500);
                setTimeout(function () {
                    $('.login').removeClass('test')
                    $('.login div').fadeOut(123);
                }, 2800);
                setTimeout(function () {
                    $('.success').fadeIn();
                }, 3200);
            });

            $('input[type="text"],input[type="password"]').focus(function () {
                $(this).prev().animate({'opacity': '1'}, 200)
            });
            $('input[type="text"],input[type="password"]').blur(function () {
                $(this).prev().animate({'opacity': '.5'}, 200)
            });

            $('input[type="text"],input[type="password"]').keyup(function () {
                if (!$(this).val() == '') {
                    $(this).next().animate({'opacity': '1', 'right': '30'}, 200)
                } else {
                    $(this).next().animate({'opacity': '0', 'right': '20'}, 200)
                }
            });

            var open = 0;
            $('.tab').click(function () {
                $(this).fadeOut(200, function () {
                    $(this).parent().animate({'left': '0'})
                });
            });

//----------------------------------------------------------------------------------


        </script>
        <link rel="stylesheet"  type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
        <link href="css/Lista.css" rel="stylesheet" type="text/css" >
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <div id="wrapper">

            <form  name="login-form" class="login-form" action="login.jsp" method="post">
                <div class="header" style="text-align: center;">
                    <img style="position:relative;" src="img/Asertis.png" alt="Asertis" width="200px" >
                </div>
                <div class="content" style="text-align: center;">
                    <input name="username" type="text" class="input username" placeholder="USUARIO" required="" style="font-size: 14px;font-weight: bold"/>
                    <div class="user-icon"></div>
                    <input name="contrasena" type="password" class="input password" placeholder="CONTRASEÑA" required=""/>
                    <div class="pass-icon"></div>		
                </div>
                <div class="footer" style="text-align: center;">
                    <input  type="submit" name="submit" value="INICIAR SESIÓN" class="button" />
                </div>
            </form>

        </div>              

        <style>


            @import url(https://fonts.googleapis.com/css?family=Poppins);

            /*******************
            SELECTION STYLING
            *******************/

            ::selection {
                color: #fff;
                background: #f676b2; /* Safari */
            }
            ::-moz-selection {
                color: #fff;
                background: #f676b2; /* Firefox */
            }

            /*******************
            BODY STYLING
            *******************/

            * {
                margin: 0;
                padding: 0;
                border: none;
                outline: none;
            }

            body {
                background: #ed7203;
                font-family: 'Poppins', sans-serif;
                font-weight:300;
                text-align: left;
                text-decoration: none;
                height: 500px;
            }

            #wrapper {
                /* Center wrapper perfectly */
                width: 300px;
                height: 300px;
                margin: 150px auto;
            }

            /* Download Button (Demo Only) */
            .download {
                display: block;
                position: absolute;
                float: right;
                right: 25px;
                bottom: 25px;
                padding: 5px;

                font-weight: bold;
                font-size: 11px;
                text-align: right;
                text-decoration: none;
                color: rgba(0,0,0,0.5);
                text-shadow: 1px 1px 0 rgba(256,256,256,0.5);
            }

            .download:hover {
                color: rgba(0,0,0,0.75);
                text-shadow: 1px 1px 0 rgba(256,256,256,0.5);
            }

            .download:focus {
                bottom: 24px;
            }

            /*
            .gradient {
                    width: 600px;
                    height: 600px;
                    position: fixed;
                    left: 50%;
                    top: 50%;
                    margin-left: -300px;
                    margin-top: -300px;
                    
                    background: url(http://www.demo.amitjakhu.com/login-form/images/gradient.png) no-repeat;
            }
            */

            .gradient {
                /* Center Positioning */
                width: 600px;
                height: 600px;
                position: fixed;
                left: 50%;
                top: 50%;
                margin-left: -300px;
                margin-top: -300px;
                z-index: -2;

                /* Fallback */
                background-image: url(http://www.demo.amitjakhu.com/login-form/images/gradient.png);
                background-repeat: no-repeat;

                /* CSS3 Gradient */
                background-image: -webkit-gradient(radial, 0% 0%, 0% 100%, from(rgba(213,246,255,1)), to(rgba(213,246,255,0)));
                background-image: -webkit-radial-gradient(50% 50%, 40% 40%, rgba(213,246,255,1), rgba(213,246,255,0));
                background-image: -moz-radial-gradient(50% 50%, 50% 50%, rgba(213,246,255,1), rgba(213,246,255,0));
                background-image: -ms-radial-gradient(50% 50%, 50% 50%, rgba(213,246,255,1), rgba(213,246,255,0));
                background-image: -o-radial-gradient(50% 50%, 50% 50%, rgba(213,246,255,1), rgba(213,246,255,0));
            }

            /*******************
            LOGIN FORM
            *******************/

            .login-form {
                width: 300px;
                margin: 0 auto;
                position: relative;
                background: #eaeaea;
                border: 1px solid #24a26f;
                /*border-radius: 5px;*/
                box-shadow: 0 1px 3px rgba(0,0,0,0.5);
                -moz-box-shadow: 0 1px 3px rgba(0,0,0,0.5);
                -webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.5);
            }

            /*******************
            HEADER
            *******************/

            .login-form .header {
                background-color: white;
                padding: 10px;
            }

            .login-form .header h1 {
                font-family: 'Poppins', sans-serif;
                font-weight: 300;
                font-size: 28px;
                line-height:34px;
                color: #414848;
                position: relative;
                text-shadow: 1px 1px 0 rgba(256,256,256,1.0);
                margin-bottom: 10px;
            }

            .login-form .header span {
                font-size: 11px;
                line-height: 16px;
                color: #678889;
                text-shadow: 1px 1px 0 rgba(256,256,256,1.0);
            }

            /*******************
            CONTENT
            *******************/

            .login-form .content {
                font-family: 'Poppins', sans-serif;
                background-color: white;
                padding: 10px;
                position: relative;

            }

            /* Input field */
            .login-form .content .input {
                width: 188px;
                padding: 15px 25px;
                font-family: 'Poppins', sans-serif;
                font-weight: 400;
                font-size: 14px;
                color: #24a26f;
                text-shadow: 1px 1px 0 rgba(256,256,256,1.0);

                background: #fff;
                border: 1px solid #24a26f;
                border-radius: 5px;

                box-shadow: inset 0 1px 3px rgba(0,0,0,0.50);
                -moz-box-shadow: inset 0 1px 3px rgba(0,0,0,0.50);
                -webkit-box-shadow: inset 0 1px 3px rgba(0,0,0,0.50);
            }

            /* Second input field */
            .login-form .content .password, .login-form .content .pass-icon {
                margin-top: 25px;
            }

            .login-form .content .input:hover {
                background: #dfe9ec;
                color: #24a26f;
            }

            .login-form .content .input:focus {
                background: #dfe9ec;
                color: #24a26f;
                box-shadow: inset 0 1px 2px rgba(0,0,0,0.25);
                -moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.25);
                -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.25);
            }

            .user-icon, .pass-icon {
                width: 46px;
                height: 47px;
                display: block;
                position: absolute;

                left: 0px;
                padding-right: 2px;
                z-index: -1;

                -moz-border-radius-topleft: 5px;
                -moz-border-radius-bottomleft: 5px;
                -webkit-border-top-left-radius: 5px;
                -webkit-border-bottom-left-radius: 5px;
            }

            .user-icon {
                top:10px; /* Positioning fix for slide-in, got lazy to think up of simpler method. */
                background: rgba(65,72,72,0.75) url(http://www.demo.amitjakhu.com/login-form/images/user-icon.png) no-repeat center;
                left: 50px;
            }

            .pass-icon {
                top:60px;
                background: rgba(65,72,72,0.75) url(http://www.demo.amitjakhu.com/login-form/images/pass-icon.png) no-repeat center;
            }

            .content input:focus + div{
                left: -46px;
            }

            /* Animation */
            .input, .user-icon, .pass-icon, .button, .register {
                transition: all 0.5s ease;
                -moz-transition: all 0.5s ease;
                -webkit-transition: all 0.5s ease;
                -o-transition: all 0.5s ease;
                -ms-transition: all 0.5s ease;
            }

            /*******************
            FOOTER
            *******************/

            .login-form .footer {
                padding: 10px;
                overflow: auto;
                background: white;
            }

            /* Login button */
            .login-form .footer .button {
                float:right;
                padding: 10px;
                font-family: 'Poppins', sans-serif;
                font-weight: 300;
                font-size: 14px;
                color: #fff;
                text-shadow: 0px 1px 0 rgba(0,0,0,0.25);
                position: relative;
                background: #24a26f;
                border-radius: 5px;
                cursor: pointer;
                left: -25%;
                width: 50%;
                box-shadow: inset 0 0 2px rgba(256,256,256,0.75);
                -moz-box-shadow: inset 0 0 2px rgba(256,256,256,0.75);
                -webkit-box-shadow: inset 0 0 2px rgba(256,256,256,0.75);
            }

            .login-form .footer .button:hover {
                background: #24a26f;
                border: 1px solid rgba(256,256,256,0.75);

                box-shadow: inset 0 1px 3px rgba(0,0,0,0.5);
                -moz-box-shadow: inset 0 1px 3px rgba(0,0,0,0.5);
                -webkit-box-shadow: inset 0 1px 3px rgba(0,0,0,0.5);
            }

            .login-form .footer .button:focus {
                position: relative;
                bottom: -1px;
                background: #24a26f;
                box-shadow: inset 0 1px 6px rgba(256,256,256,0.75);
                -moz-box-shadow: inset 0 1px 6px rgba(256,256,256,0.75);
                -webkit-box-shadow: inset 0 1px 6px rgba(256,256,256,0.75);
            }

            /* Register button */
            .login-form .footer .register {
                display: block;
                float: right;
                padding: 10px;
                margin-right: 20px;

                background: none;
                border: none;
                cursor: pointer;

                font-family: 'Bree Serif', serif;
                font-weight: 300;
                font-size: 18px;
                color: #414848;
                text-shadow: 0px 1px 0 rgba(256,256,256,0.5);
            }

            .login-form .footer .register:hover {
                color: #3f9db8;
            }

            .login-form .footer .register:focus {
                position: relative;
                bottom: -1px;
            }

        </style>



    </body>
</html>