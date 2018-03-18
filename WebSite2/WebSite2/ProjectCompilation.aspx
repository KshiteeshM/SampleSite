﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProjectCompilation.aspx.cs" Inherits="ProjectCompilation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link href="App_StyleSheets/ProjectCompilation.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">

        <nav class="navbar navbar-inverse bg-white" style="background-color: white; border: none;">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#ProjectsNavbar" runat="server">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <img runat="server" class="navbar-brand h-100" src="~/Images/philips-new-logo-brand-3a6e21c0797fec97-128x128.png" />
                </div>
                <div class="collapse navbar-collapse" id="ProjectsNavbar">
                    <ul class="nav navbar-nav" id="nav-list">
                        <li><a href="Login.aspx">Home</a></li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Projects<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">ProjectMQ</a></li>
                                <li><a href="#">Lookup</a></li>
                            </ul>
                        </li>
                        <li><a href="#">About</a></li>
                    </ul>
                    <!--
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
                    </ul>
                    -->
                </div>
            </div>
        </nav>
    </form>
</body>
</html>
