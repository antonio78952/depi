<%@ Page Language="C#" AutoEventWireup="true" CodeFile="codigo/altas_inventario.aspx.cs" Inherits="altas_inventario" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inventario</title>
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

<script type ="text/javascript">

$(function (){
    jQuery('#alta_inventario').validate();
});


window.onload = function () {
    $('#formulario').find("input[type=text], textarea").val("");
}



</script>


</head>


<body>
    <form id="alta_inventario" runat="server">
     <div id="menu">
        <div id="menu_mobiles">
            <asp:LinkButton ID="boton_menu" runat="server"  ToolTip="Menu de opciones"><i class="fa fa-bars fa-2x"></i></asp:LinkButton>
            <asp:LinkButton ID="boton_menu_cerrar" runat="server"  ToolTip="Cerrar menu de opciones"><i class="fa fa-bars fa-2x"></i></asp:LinkButton>
        </div>
   
        <asp:Label ID="vendedor" runat="server" Text="Inventario" CssClass="nombre_vendedor"/>
    <!----- esto es un comentario ----->    
        <div class="botones_menu">               
            <asp:LinkButton ID="salir" runat="server" CssClass="boton" ToolTip="Salir" ><img id="f" class="icono" src=""></asp:LinkButton>
        </div> 
    </div>
    <div id="main">
        <div id="main_izquierdo">
            <div class ="paneles_graficas">
            <div class = "controles_busqueda">
            <div class="cabecera_informacion"><asp:Label ID="Label1" runat="server" CssClass="texto_cabecera">Nuevo Producto</asp:Label></div>
            <div id="formulario">
                <ul>
                <li><label for="producto" class="texto_caja">Producto: </label>      
                <asp:TextBox ID="producto" runat="server" class="required textbox" ></asp:TextBox></li>
                <li><label for="descripcion" class="texto_caja">Descripcion: </label>
                <asp:TextBox ID="descripcion" runat="server" class="required textbox"></asp:TextBox></li>
                <li><label for="cantidad" class="texto_caja">Cantidad: </label>
                <asp:TextBox ID="cantidad" runat="server" class="required number textbox" minlength="1"></asp:TextBox></li>
                <li><label for="proveedor" class="texto_caja">Proveedor: </label>
                 <asp:DropDownList ID="lista_proveedores" runat="server" Width="200px">
                 </asp:DropDownList></li>
                </ul>
            
                <div class="centro">
                <asp:Button ID="btnSubmit" runat="server" CssClass="boton_aceptar " Text="Registrar" OnClick="boton_registrar_Click" />
                </div>             
            </div>
            </div>
            </div>     
        </div>

        <div id="main_derecho">
             <div class ="paneles_graficas">
             <div class="cabecera_informacion"><asp:Label ID="Label2" runat="server" CssClass="texto_cabecera">Productos</asp:Label></div>
             <div>
             <asp:GridView ID="inventario" runat="server" CssClass="tabla" DataSource='<%# tabla_inventario() %>' AutoGenerateColumns="false" >
                   
                        <Columns>
                        <asp:BoundField HeaderText="ID Producto" DataField="id_producto"  >
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Producto" DataField="producto" >
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Descripcion" DataField="descripcion" >
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Cantidad" DataField="cantidad" >
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Proveedor" DataField="proveedor" >
                        </asp:BoundField>

                        </Columns>
                    </asp:GridView>
             </div>             
            </div>        
        </div>
    </div>
   
    </form>
</body>
</html>
