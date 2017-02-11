<%@ Page Language="C#" AutoEventWireup="true" CodeFile="codigo/altas_usuario.aspx.cs" Inherits="altas_usuario" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/estilo.css" />
    <link rel="stylesheet" href="css/sty_mamalon.css" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script type="text/javascript" script-name="alfa-slab-one" src="http://use.edgefonts.net/alfa-slab-one.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="validacion/lib/jquery.js"></script>
    <script src="validacion/dist/jquery.validate.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type ="text/javascript">

    $(function () {
        jQuery('#alta_usuario').validate();
        $("#mensajes_exito").dialog({ title: "Exito" });
        $("#mensajes_error").dialog({title:"Error"});
    });


    window.onload = function () {
        $('#formulario').find("input[type=text], textarea").val("");
    }
</script>
</head>
<body>
    <form id="alta_usuario" runat="server">
    <div id="menu">
        <div id="menu_mobiles">
            <asp:LinkButton ID="boton_menu" runat="server"  ToolTip="Menu de opciones"><i class="fa fa-bars fa-2x"></i></asp:LinkButton>
            <asp:LinkButton ID="boton_menu_cerrar" runat="server"  ToolTip="Cerrar menu de opciones"><i class="fa fa-bars fa-2x"></i></asp:LinkButton>
        </div>
   
        <asp:Label ID="vendedor" runat="server" Text="Alta Usuarios" CssClass="nombre_vendedor"/>
    <!----- esto es un comentario ----->    
        <div class="botones_menu">               
            <asp:LinkButton ID="salir" runat="server" CssClass="fa fa-sign-out fa-2x" ToolTip="Salir" ></asp:LinkButton>
        </div> 
    </div>
    <div class="div_main">
        <div class="div_controles" >
            <div id="formulario">
                <ul>
                <li><label for="caja_nombre" class="texto_caja">Nombre </label>      
                <asp:TextBox ID="caja_nombre" runat="server" class="required textbox" ></asp:TextBox></li>
                <li><label for="caja_apellidos" class="texto_caja">Apellidos </label>
                <asp:TextBox ID="caja_apellidos" runat="server" class="required textbox"></asp:TextBox></li>
                <li><label for="caja_matricula" class="texto_caja">Matricula </label>
                <asp:TextBox ID="caja_matricula" runat="server" class="required number  textbox" minlength="1"></asp:TextBox></li>
                <li><label for="caja_telefono" class="texto_caja">Telefono </label>
                 <asp:TextBox ID="caja_telefono" runat="server" class="required number textbox" minlength="1"></asp:TextBox></li>
                 <li><label for="caja_pass" class="texto_caja">Password </label>
                 <asp:TextBox ID="caja_pass" runat="server" TextMode="Password"  class="required textbox"></asp:TextBox></li>
                 <li><label for="caja_pass" class="texto_caja">Re-Password </label>
                 <asp:TextBox ID="caja_repass" runat="server" TextMode="Password" equalto="#caja_pass" class="required textbox" ></asp:TextBox></li>
                </ul>
            
                <div class="centro">
                <asp:Button ID="btnSubmit" runat="server" CssClass="boton_aceptar " Text="Registrar" OnClick="boton_registrar_Click" />
                </div>             
            </div>
            <asp:Panel ID="mensajes_exito" runat="server" Visible="false">
                
            </asp:Panel>
            <asp:Panel ID="mensajes_error" runat="server" Visible="false">

            </asp:Panel>
        </div>
    </div>
    </form>
</body>
</html>
