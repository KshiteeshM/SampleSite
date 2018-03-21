<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProjectCompilation.aspx.cs" Inherits="ProjectCompilation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link href="App_StyleSheets/ParentStyleSheet.css" rel="stylesheet" />
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
                            <a class="dropdown-toggle" data-toggle="dropdown" href="ProjectCompilation.aspx">Projects<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="Default.aspx">ProjectMQ</a></li>
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
        <div class="container w-100 h-100" style="background-color: white;">
            <br />
            <h2 style="color: #0D47A1;">Projects</h2>
            <hr />
            <div class="container-fluid">
                <asp:ListView runat="server" ID="Projects_LV" OnSelectedIndexChanged="Projects_LV_SelectedIndexChanged">
                    <ItemTemplate>
                        <div class="container-fluid">
                            <div class="card" style="box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);">
                                <div class="row">
                                    <div class ="bo">
                                        <div class="col-md-1 px-0.5">
                                            <div class="h-25"></div>
                                            <!--<asp:Image ID="Project_Image" CssClass="img-responsive" runat="server" ImageUrl='<%# Eval("m_Imageurl") %>' />-->
                                        </div>
                                    </div>
                                    <div class="col-md-3 px-8">
                                        <br />
                                        <asp:LinkButton ID="Project_Title_Label" CssClass="project-title" runat="server" Text='<%# Eval("m_Title") %>' ForeColor="#0D47A1" PostBackUrl='<%# Eval("m_ProjectUrl") %>'/>
                                        <br />
                                        <br />
                                        <asp:Label ID="Project_Description_Label" CssClass="project-desc" runat="server" Text='<%# Eval("m_Description") %>' ForeColor="#1E88E5" />
                                    </div>
                                </div>
                                <br />
                            </div>
                            <br />
                        </div>

                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>

    </form>
</body>
</html>
