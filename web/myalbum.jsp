<%-- 
    Document   : myimg
    Created on : 9 mars 2015, 17:35:53
    Author     : Jon
--%>
<%@ page language="java" 
         contentType="text/html; charset=windows-1256" 
         pageEncoding="windows-1256" 
         %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html>
    <head>
        <title>Responsive Image Gallery</title>
        <link rel="stylesheet" type="text/css" href="gallery/css/demo.css" />
        <link rel="stylesheet" type="text/css" href="gallery/css/style.css" />
        <link rel="stylesheet" type="text/css" href="gallery/css/elastislide.css" />
        <link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow&v1' rel='stylesheet' type='text/css' />
        <link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css' />

        <link href="css/style.css" rel="stylesheet" />
        <link href="css/bootstrap.min.css" rel="stylesheet" />


    <noscript>
        <style>
            .es-carousel ul{
                display:block;
            }
        </style>
    </noscript>
    <script id="img-wrapper-tmpl" type="text/x-jquery-tmpl">	
        <div class="rg-image-wrapper">
        {{if itemsCount > 1}}
        <div class="rg-image-nav">
        <a href="#" class="rg-image-nav-prev">Previous Image</a>
        <a href="#" class="rg-image-nav-next">Next Image</a>
        </div>
        {{/if}}
        <div class="rg-image"></div>
        <div class="rg-loading"></div>
        <div class="rg-caption-wrapper">
        <div class="rg-caption" style="display:none;">
        <p></p>
        </div>
        </div>
        </div>
    </script>
</head>

<body>


    <!-- start header -->
<header>
    <div class="navbar navbar-default navbar-static-top">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="welcome.jsp"><img src="img/logo.png" alt="logo"/></a>
            </div>
        </div>
        <br/><br/>
    </div><br/>
</header><!-- end header -->





<div class="content">
    <div id="rg-gallery" class="rg-gallery">
        <div class="rg-thumbs">
            <!-- Elastislide Carousel Thumbnail Viewer -->
            <div class="es-carousel-wrapper">
                <div class="es-nav">
                    <span class="es-nav-prev">Previous</span>
                    <span class="es-nav-next">Next</span>
                </div>

                <div class="es-carousel">
                    <ul>
                        <li><a href="#"><img src="gallery/images/1.jpg" data-large="gallery/images/1.jpg" alt="image01" data-description="From off a hill whose concave womb reworded" /></a></li>
                        <li><a href="#"><img src="gallery/images/2.jpg" data-large="gallery/images/2.jpg" alt="image02" data-description="A plaintful story from a sistering vale" /></a></li>
                        <li><a href="#"><img src="gallery/images/3.jpg" data-large="gallery/images/3.jpg" alt="image03" data-description="A plaintful story from a sistering vale" /></a></li>
                        <li><a href="#"><img src="gallery/images/4.jpg" data-large="gallery/images/4.jpg" alt="image04" data-description="My spirits to attend this double voice accorded" /></a></li>
                        <li><a href="#"><img src="gallery/images/5.jpg" data-large="gallery/images/5.jpg" alt="image05" data-description="And down I laid to list the sad-tuned tale" /></a></li>
                        <li><a href="#"><img src="gallery/images/6.jpg" data-large="gallery/images/6.jpg" alt="image06" data-description="Ere long espied a fickle maid full pale" /></a></li>
                        <li><a href="#"><img src="gallery/images/7.jpg" data-large="gallery/images/7.jpg" alt="image07" data-description="Tearing of papers, breaking rings a-twain" /></a></li>
                        <li><a href="#"><img src="gallery/images/8.jpg" data-large="gallery/images/8.jpg" alt="image08" data-description="Storming her world with sorrow's wind and rain" /></a></li>
                        <li><a href="#"><img src="gallery/images/9.jpg" data-large="gallery/images/9.jpg" alt="image09" data-description="Upon her head a platted hive of straw" /></a></li>
                        <li><a href="#"><img src="gallery/images/10.jpg" data-large="gallery/images/10.jpg" alt="image10" data-description="Which fortified her visage from the sun" /></a></li>
                        <li><a href="#"><img src="gallery/images/11.jpg" data-large="gallery/images/11.jpg" alt="image11" data-description="Whereon the thought might think sometime it saw" /></a></li>
                        <li><a href="#"><img src="gallery/images/12.jpg" data-large="gallery/images/12.jpg" alt="image12" data-description="The carcass of beauty spent and done" /></a></li>
                        <li><a href="#"><img src="gallery/images/13.jpg" data-large="gallery/images/13.jpg" alt="image13" data-description="Time had not scythed all that youth begun" /></a></li>
                        <li><a href="#"><img src="gallery/images/14.jpg" data-large="gallery/images/14.jpg" alt="image14" data-description="Nor youth all quit; but, spite of heaven's fell rage" /></a></li>
                        <li><a href="#"><img src="gallery/images/15.jpg" data-large="gallery/images/15.jpg" alt="image15" data-description="Some beauty peep'd through lattice of sear'd age" /></a></li>
                        <li><a href="#"><img src="gallery/images/16.jpg" data-large="gallery/images/16.jpg" alt="image16" data-description="Oft did she heave her napkin to her eyne" /></a></li>
                        <li><a href="#"><img src="gallery/images/17.jpg" data-large="gallery/images/17.jpg" alt="image17" data-description="Which on it had conceited characters" /></a></li>
                        <li><a href="#"><img src="gallery/images/18.jpg" data-large="gallery/images/18.jpg" alt="image18" data-description="Laundering the silken figures in the brine" /></a></li>
                        <li><a href="#"><img src="gallery/images/19.jpg" data-large="gallery/images/19.jpg" alt="image19" data-description="That season'd woe had pelleted in tears" /></a></li>
                        <li><a href="#"><img src="gallery/images/20.jpg" data-large="gallery/images/20.jpg" alt="image20" data-description="And often reading what contents it bears" /></a></li>
                        <li><a href="#"><img src="gallery/images/21.jpg" data-large="gallery/images/21.jpg" alt="image21" data-description="As often shrieking undistinguish'd woe" /></a></li>
                        <li><a href="#"><img src="gallery/images/22.jpg" data-large="gallery/images/22.jpg" alt="image22" data-description="In clamours of all size, both high and low" /></a></li>
                        <li><a href="#"><img src="gallery/images/23.jpg" data-large="gallery/images/23.jpg" alt="image23" data-description="Sometimes her levell'd eyes their carriage ride" /></a></li>
                        <li><a href="#"><img src="gallery/images/24.jpg" data-large="gallery/images/24.jpg" alt="image24" data-description="As they did battery to the spheres intend" /></a></li>
                    </ul>
                </div>

            </div>
            <!-- End Elastislide Carousel Thumbnail Viewer -->
        </div><!-- rg-thumbs -->
    </div><!-- rg-gallery -->
</div><!-- content -->
<br/>
<footer>
    <div id="sub-footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="copyright">
                        <p>
                            &copy; UPEM 2015 All right reserved. By Jonathan THAMBIRAJAH & Alexandre PARIS  
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>


<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="gallery/js/jquery.tmpl.min.js"></script>
<script type="text/javascript" src="gallery/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="gallery/js/jquery.elastislide.js"></script>
<script type="text/javascript" src="gallery/js/gallery.js"></script>
</body>
</html>