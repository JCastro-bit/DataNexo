<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="DataNexo.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>DataNexo</title>

    <%--Links--%>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Assets/style.css" rel="stylesheet" />

    <%--Scripts--%>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://kit.fontawesome.com/2237d5d0c6.js" crossorigin="anonymous"></script>

    <%--Favicon--%>
    <link rel="apple-touch-icon" sizes="57x57" href="Assets/Favicon/apple-icon-57x57.png" />
    <link rel="apple-touch-icon" sizes="60x60" href="Assets/Favicon/apple-icon-60x60.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="Assets/Favicon/apple-icon-72x72.png" />
    <link rel="apple-touch-icon" sizes="76x76" href="Assets/Favicon/apple-icon-76x76.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="Assets/Favicon/apple-icon-114x114.png" />
    <link rel="apple-touch-icon" sizes="120x120" href="Assets/Favicon/apple-icon-120x120.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="Assets/Favicon/apple-icon-144x144.png" />
    <link rel="apple-touch-icon" sizes="152x152" href="Assets/Favicon/apple-icon-152x152.png" />
    <link rel="apple-touch-icon" sizes="180x180" href="Assets/Favicon/apple-icon-180x180.png" />
    <link rel="icon" type="image/png" sizes="192x192" href="Assets/Favicon/android-icon-192x192.png" />
    <link rel="icon" type="image/png" sizes="32x32" href="Assets/Favicon/favicon-32x32.png" />
    <link rel="icon" type="image/png" sizes="96x96" href="Assets/Favicon/favicon-96x96.png" />
    <link rel="icon" type="image/png" sizes="16x16" href="Assets/Favicon/favicon-16x16.png" />
    <link rel="manifest" href="Assets/Favicon/manifest.json" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="msapplication-TileImage" content="Assets/Favicon/ms-icon-144x144.png" />
    <meta name="theme-color" content="#ffffff" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container py-4">
                <div class="row">
                    <div class="col-md-12">
                        <div class="px-4 py-5 my-5 text-center">
                            <h1 class="display-5 fw-bold">DataNexo</h1>
                            <div class="col-lg-6 mx-auto">
                                <p class="lead mb-1">
                                    Bienvenido a DataNexo, su gestor de datos. Nuestro servicio ofrece una amplia gama de 
                                    herramientas para ayudarle a manejar sus datos de manera eficiente y efectiva.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="row align-items-md-stretch">
                        <div class="col-md-6">
                            <div class="h-100 p-5 text-bg-dark rounded-3 shadow-sm">
                                <h2>Registrar</h2>
                                <p>En esta opción, podrás realizar todos los registros que necesites sin ninguna limitación.</p>
                                <a href="Registrar.aspx" class="btn btn-outline-light">Registrar&nbsp&nbsp<i class="fa-solid fa-right-to-bracket"></i></a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="h-100 p-5 bg-light border rounded-3 shadow-sm">
                                <h2>Consultar</h2>
                                <p>En esta sección, podrás encontrar todos los registros disponibles para su consulta.</p>
                                <a href="Consultar.aspx" class="btn btn-outline-dark">Consultar&nbsp&nbsp<i class="fa-solid fa-magnifying-glass"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
