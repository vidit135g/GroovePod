<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signin.aspx.cs" Inherits="Index_signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
  <title>GroovePod</title>
  <meta name="description" content="Music, Musician, Bootstrap" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimal-ui" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <!-- for ios 7 style, multi-resolution icon of 152x152 -->
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-barstyle" content="black-translucent">
  <link rel="apple-touch-icon" href="images/logo.png">
  <meta name="apple-mobile-web-app-title" content="Flatkit">
  <!-- for Chrome on Android, multi-resolution icon of 196x196 -->
  <meta name="mobile-web-app-capable" content="yes">
  <link rel="shortcut icon" sizes="196x196" href="images/logo.png">
  
  <!-- style -->
  <link rel="stylesheet" href="css/animate.css/animate.min.css" type="text/css" />
  <link rel="stylesheet" href="css/glyphicons/glyphicons.css" type="text/css" />
  <link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css" type="text/css" />
  <link rel="stylesheet" href="css/material-design-icons/material-design-icons.css" type="text/css" />
  <link rel="stylesheet" href="css/bootstrap/dist/css/bootstrap.min.css" type="text/css" />

  <!-- build:css css/styles/app.min.css -->
  <link rel="stylesheet" href="css/styles/app.css" type="text/css" />
  <link rel="stylesheet" href="css/styles/style.css" type="text/css" />
  <link rel="stylesheet" href="css/styles/font.css" type="text/css" />
  
  <link rel="stylesheet" href="libs/owl.carousel/dist/assets/owl.carousel.min.css" type="text/css" />
  <link rel="stylesheet" href="libs/owl.carousel/dist/assets/owl.theme.css" type="text/css" />
  <link rel="stylesheet" href="libs/mediaelement/build/mediaelementplayer.min.css" type="text/css" />
  <link rel="stylesheet" href="libs/mediaelement/build/mep.css" type="text/css" />

</head>
<body>
    <div class="app dk" id="app">

<!-- ############ LAYOUT START-->

  <div class="padding">
    <div class="navbar">
      <div class="pull-center">
        <!-- brand -->
        <a href="index.html" class="navbar-brand md">
        	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48" width="32" height="32">
        		<circle cx="24" cy="24" r="24" fill="rgba(255,255,255,0.2)"/>
        		<circle cx="24" cy="24" r="22" fill="#1c202b" class="brand-color"/>
        		<circle cx="24" cy="24" r="10" fill="#ffffff"/>
        		<circle cx="13" cy="13" r="2"  fill="#ffffff" class="brand-animate"/>
        		<path d="M 14 24 L 24 24 L 14 44 Z" fill="#FFFFFF" />
        		<circle cx="24" cy="24" r="3" fill="#000000"/>
        	</svg>
        
        	<img src="images/logo.png" alt="." class="hide">
        	<span class="hidden-folded inline">GroovePod</span>
        </a>
        <!-- / brand -->
      </div>
    </div>
  </div>
  <div class="b-t">
    <div class="center-block w-xxl w-auto-xs p-y-md text-center">
      <div class="p-a-md">
        <div>
          <a href="https://vidit135g.auth0.com/authorize?client_id=BodVOuePe110aK7JcVylJ8psGTmATwAp&response_type=code&connection=facebook&prompt=consent&redirect_uri=https://manage.auth0.com/tester/callback?connection=facebook" class="btn btn-block indigo text-white m-b-sm">
            <i class="fa fa-facebook pull-left"></i>
            Sign in with Facebook
          </a>
          <a href="https://vidit135g.auth0.com/authorize?client_id=BodVOuePe110aK7JcVylJ8psGTmATwAp&response_type=code&connection=google-oauth2&prompt=consent&redirect_uri=https://manage.auth0.com/tester/callback?connection=google-oauth2" class="btn btn-block red text-white">
            <i class="fa fa-google-plus pull-left"></i>
            Sign in with Google+
          </a>
        </div>
        <div class="m-y text-sm">
          OR
        </div>
          <form runat="server">
        <div class="form-group">
            <input type="email" class="form-control" id="text1" runat="server" placeholder="Email" required/>
          </div>
          <div class="form-group">
            <input type="password" class="form-control" id="text2" runat="server" placeholder="password" required/>
          </div>
          <div>
         <asp:Button ID="Button1" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="Solid" ForeColor="White" OnClick="Button1_Click" Text="Sign In" Width="131px" />
        </div>
        <div class="m-y">
          <a href="forgot-password.html" class="_600">Forgot password?</a>
        </div>
              </form>
        <div>
          Do not have an account? 
          <a href="signup.aspx" class="text-primary _600">Sign up</a>
            <br />
        </div>
      </div>
    </div>
  </div>

<!-- ############ LAYOUT END-->
  </div>

<!-- build:js scripts/app.min.js -->
<!-- jQuery -->
  <script src="libs/jquery/dist/jquery.js"></script>
<!-- Bootstrap -->
  <script src="libs/tether/dist/js/tether.min.js"></script>
  <script src="libs/bootstrap/dist/js/bootstrap.js"></script>
<!-- core -->
  <script src="libs/jQuery-Storage-API/jquery.storageapi.min.js"></script>
  <script src="libs/jquery.stellar/jquery.stellar.min.js"></script>
  <script src="libs/owl.carousel/dist/owl.carousel.min.js"></script>
  <script src="libs/jscroll/jquery.jscroll.min.js"></script>
  <script src="libs/PACE/pace.min.js"></script>
  <script src="libs/jquery-pjax/jquery.pjax.js"></script>

  <script src="libs/mediaelement/build/mediaelement-and-player.min.js"></script>
  <script src="libs/mediaelement/build/mep.js"></script>
  <script src="scripts/player.js"></script>

  <script src="scripts/config.lazyload.js"></script>
  <script src="scripts/ui-load.js"></script>
  <script src="scripts/ui-jp.js"></script>
  <script src="scripts/ui-include.js"></script>
  <script src="scripts/ui-device.js"></script>
  <script src="scripts/ui-form.js"></script>
  <script src="scripts/ui-nav.js"></script>
  <script src="scripts/ui-screenfull.js"></script>
  <script src="scripts/ui-scroll-to.js"></script>
  <script src="scripts/ui-toggle-class.js"></script>
  <script src="scripts/ui-taburl.js"></script>
  <script src="scripts/app.js"></script>
  <script src="scripts/site.js"></script>
  <script src="scripts/ajax.js"></script>
<!-- endbuild -->
</body>
</html>
