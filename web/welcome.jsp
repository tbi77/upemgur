<%-- 
    Document   : welcome
    Created on : 8 mars 2015, 15:59:21
    Author     : Jon
--%>

<%@ page language="java" 
         contentType="text/html; charset=windows-1256" 
         pageEncoding="windows-1256" 
         import="fr.upem.connection.UserBean" 
         %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html>
    <head>
        <meta charset="utf-8">
        <title>Free Bootstrap website | webthemez</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <!-- css -->
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="css/fancybox/jquery.fancybox.css" rel="stylesheet">
        <link href="css/jcarousel.css" rel="stylesheet" />
        <link href="css/flexslider.css" rel="stylesheet" />
        <link href="css/style.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/menu3.css" media="screen" type="text/css" />

    </head>
    <body>
        <div id="wrapper">

            <!-- start header -->
            <header>
                <div class="navbar navbar-default navbar-static-top">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="#"><img src="img/logo.png" alt="logo"/></a>
                        </div>
                        <div class="navbar-collapse collapse ">
                            <ul class="nav navbar-nav">
                                <li><a href="upload.jsp">Upload</a></li>
                                <li><a href="DeconnexionServlet">Deconnexion</a></li>
                            </ul>
                        </div>

                    </div>
                </div>
            </header><!-- end header -->
            
            <div class="dropdown-menu ddm1">	
                <input type="checkbox" name="toggle" id="toggle">
                <label for="toggle">Menu</label>
                <ul>
                    <li><a href="#" title="Do something">é</a></li>
                    <li><a href="#" title="Do something else">Do something else</a></li>
                    <li><a href="#" title="Options">Options</a></li>
                </ul>
            </div>
            
      
            <section id="inner-headline">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <% UserBean currentUser = (UserBean) (session.getAttribute("currentSessionUser"));%>
                            <h2 class="pageTitle">Bienvenu <%= currentUser.getUserpseudo()%> </h2>
                        </div>
                    </div>
                </div>
            </section>


            <section id="content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <ul class="portfolio-categ filter">
                                <li class="all active"><a href="#">Images publiques</a></li>
                                <li class="web"><a href="#" title="">Mes images</a></li>
                                <!--
                                <li class="icon"><a href="#" title="">Mobile App</a></li>
                                <li class="graphic"><a href="#" title="">UI design</a></li>
                                -->

                            </ul>
                            <div class="clearfix">
                            </div>
                            <div class="row">
                                <section id="projects">
                                    <ul id="thumbs" class="portfolio">
                                        <!-- Item Project and Filter Name -->
                                        <li class="item-thumbs col-lg-3 design" data-id="id-0" data-type="web">
                                            <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                                            <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Portfolio name" href="img2/2.jpg">
                                                <span class="overlay-img"></span>
                                                <span class="overlay-img-thumb"><i class="icon-info-blocks fa fa-code"></i></span>
                                            </a>
                                            <!-- Thumb Image and Description -->
                                            <img src="img/works/1.jpg" alt="">
                                        </li>
                                        <!-- End Item Project -->
                                        <!-- Item Project and Filter Name -->
                                        <li class="item-thumbs col-lg-3 design" data-id="id-1" data-type="icon">
                                            <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                                            <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Portfolio name" href="img2/2.jpg">
                                                <span class="overlay-img"></span>
                                                <span class="overlay-img-thumb"><i class="icon-info-blocks fa fa-code"></i></span>
                                            </a>
                                            <!-- Thumb Image and Description -->
                                            <img src="img/works/2.jpg" alt="">
                                        </li>
                                        <!-- End Item Project -->
                                        <!-- Item Project and Filter Name -->
                                        <li class="item-thumbs col-lg-3 photography" data-id="id-2" data-type="graphic">
                                            <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                                            <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Portfolio name" href="img2/2.jpg">
                                                <span class="overlay-img"></span>
                                                <span class="overlay-img-thumb"><i class="icon-info-blocks fa fa-code"></i></span>
                                            </a>
                                            <!-- Thumb Image and Description -->
                                            <img src="img/works/3.jpg" alt="">
                                        </li>
                                        <!-- End Item Project -->
                                        <!-- Item Project and Filter Name -->
                                        <li class="item-thumbs col-lg-3 design" data-id="id-0" data-type="web">
                                            <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                                            <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Portfolio name" href="img2/2.jpg">
                                                <span class="overlay-img"></span>
                                                <span class="overlay-img-thumb"><i class="icon-info-blocks fa fa-code"></i></span>
                                            </a>
                                            <!-- Thumb Image and Description -->
                                            <img src="img/works/4.jpg" alt="">
                                        </li>
                                        <!-- End Item Project -->
                                        <!-- Item Project and Filter Name -->
                                        <li class="item-thumbs col-lg-3 photography" data-id="id-4" data-type="web">
                                            <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                                            <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Portfolio name" href="img2/2.jpg">
                                                <span class="overlay-img"></span>
                                                <span class="overlay-img-thumb"><i class="icon-info-blocks fa fa-code"></i></span>
                                            </a>
                                            <!-- Thumb Image and Description -->
                                            <img src="img/works/5.jpg" alt="">
                                        </li>
                                        <!-- End Item Project -->
                                        <!-- Item Project and Filter Name -->
                                        <li class="item-thumbs col-lg-3 photography" data-id="id-5" data-type="icon">
                                            <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                                            <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Portfolio name" href="img2/2.jpg">
                                                <span class="overlay-img"></span>
                                                <span class="overlay-img-thumb"><i class="icon-info-blocks fa fa-code"></i></span>
                                            </a>
                                            <!-- Thumb Image and Description -->
                                            <img src="img/works/6.jpg" alt="">
                                        </li>
                                        <!-- End Item Project -->
                                        <li class="item-thumbs col-lg-3 design" data-id="id-0" data-type="web">
                                            <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                                            <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Portfolio name" href="img2/2.jpg">
                                                <span class="overlay-img"></span>
                                                <span class="overlay-img-thumb"><i class="icon-info-blocks fa fa-code"></i></span>
                                            </a>
                                            <!-- Thumb Image and Description -->
                                            <img src="img/works/7.jpg" alt="">
                                        </li>
                                        <!-- End Item Project -->
                                        <!-- Item Project and Filter Name -->
                                        <li class="item-thumbs col-lg-3 design" data-id="id-0" data-type="graphic">
                                            <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                                            <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Portfolio name" href="img2/2.jpg">
                                                <span class="overlay-img"></span>
                                                <span class="overlay-img-thumb"><i class="icon-info-blocks fa fa-code"></i></span>
                                            </a>
                                            <!-- Thumb Image and Description -->
                                            <img src="img/works/8.jpg" alt="">
                                        </li>
                                        <!-- End Item Project -->
                                    </ul>
                                </section>
                            </div>
                        </div>
                    </div>
                </div>
            </section>


            <footer>
                <div id="sub-footer">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="copyright">
                                    <p>
                                        <span>&copy; Target 2015 All right reserved. By </span>WebThemez
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>

        </div>
        <a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
        <!-- javascript
            ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="js/jquery.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.fancybox.pack.js"></script>
        <script src="js/jquery.fancybox-media.js"></script> 
        <script src="js/portfolio/jquery.quicksand.js"></script>
        <script src="js/portfolio/setting.js"></script>
        <script src="js/jquery.flexslider.js"></script>
        <script src="js/animate.js"></script>
        <script src="js/custom.js"></script>
    </body>
</html>