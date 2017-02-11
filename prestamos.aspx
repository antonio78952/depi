<%@ Page Language="C#" AutoEventWireup="true" CodeFile="codigo/prestamos.aspx.cs" Inherits="prestamos" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script type="text/javascript" script-name="alfa-slab-one" src="http://use.edgefonts.net/alfa-slab-one.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <title>Prestamos</title>
    <link rel="stylesheet" href="css/estilo.css" />
    <link rel="stylesheet" href="css/sty_mamalon.css" />
    <script type="text/javascript">
        $(function () {
            var $rows = $('#inventario tr[class!="cabezera"]');
            $('#buscar').keyup(function () {
                var val = $.trim($(this).val()).replace(/ +/g, ' ').toLowerCase();
                
                $rows.show().filter(function () {
                    var text = $(this).text().replace(/\s+/g, ' ').toLowerCase();
                    return ! ~text.indexOf(val);
                }).hide();
               
            });
    });
    $(function () {
        var $rows = $('#inventario tr[class!="cabezera"]');
        $('#b_codigo').click(function () {
            var val = $.trim($('#codigo').val()).replace(/ +/g, ' ').toLowerCase();
            if (val != "") {
                $rows.show().filter(function () {
                    var text = $(this).text().replace(/\s+/g, ' ').toLowerCase();
                    if (text.indexOf(val) > -1) {

                        $(this).find('input[type=checkbox]').prop('checked', true);
                    }
                    return ! ~text.indexOf(val);
                }).hide();
            }
        });
    });
     $(function () {
        $('#mensajes_exito').dialog({ title: "Exito", modal: true,width: 'auto' });
        $('#mensajes_error').dialog({ title: "Error", modal: true ,width: 'auto'});
    });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <div id="menu">
    
      <i class="fa fa-user-o fa-2x blanco"></i><asp:Label ID="usuario" runat="server" CssClass="nombre_vendedor">Prestamos</asp:Label>
      <div class="botones_menu">        
        <asp:LinkButton ID="salir" runat="server" CssClass="fa fa-sign-out fa-2x" ToolTip="Salir" onclick="boton_salir_Click"></asp:LinkButton>
      </div> 
      </div> 
        <div class="div_main">
        <div class="div_lef">  
        <div class="contenedor" >
            <div id="formulario">
                <div class="izquierda"> 
                <label for="caja_salida" class="texto_caja">Fecha Salida</label>
                <asp:TextBox ID="caja_salida" runat="server" class="required textbox"></asp:TextBox>
                <label for="caja_retorno" class="texto_caja">Fecha Retorno</label>
                <asp:TextBox ID="caja_retorno" runat="server" class="required number  textbox" minlength="1"></asp:TextBox>
                </div>
                <div class="derecha">
                <label for="caja_matricula" class="texto_caja">Matricula</label>      
                <asp:TextBox ID="caja_matricula" runat="server" class="required textbox" ></asp:TextBox>
                <label for="lista_prestamos" class="texto_caja">Tipo Prestamo: </label>
                <asp:DropDownList ID="lista_prestamos" runat="server" Width="200px" CssClass="textbox">
                <asp:ListItem>Regular</asp:ListItem>
                <asp:ListItem>Foraneo</asp:ListItem>
                </asp:DropDownList>
                </div>            
            </div>  
        </div>
        </div>
        <div class="div_centro">
             <div class ="paneles_graficas boton_izq">
             <div class="cabecera_informacion"><asp:Label ID="Label2" runat="server" CssClass="texto_cabecera">Productos</asp:Label></div>
             <div>
             <asp:GridView ID="inventario" runat="server" CssClass="tabla" DataSource='<%# tabla_inventario() %>' AutoGenerateColumns="false" >  
                        <HeaderStyle CssClass="cabezera" />
                        <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="filacheck" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField HeaderText="ID Producto" DataField="id_producto"  >
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Producto" DataField="producto" >
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Descripcion" DataField="descripcion" >
                        </asp:BoundField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:TextBox ID="cantidad" runat="server" class="textbox" Width="70px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField HeaderText="Proveedor" DataField="proveedor" >
                        </asp:BoundField>
                        </Columns>
             </asp:GridView>
             </div>             
            </div>        
        </div>
        <div class="barra_buscar">
        <asp:TextBox ID="buscar" runat="server" CssClass="textbox" placeholder="Buscar" ></asp:TextBox> 
        <div class="boton_izq">
                <asp:Button ID="btnSubmit" runat="server" CssClass="boton_aceptar " OnClick="agregar_productos" Text="Registrar"  />
        </div> 
        <asp:TextBox ID="codigo" runat="server" CssClass="textbox" placeholder="Buscar Codigo" ></asp:TextBox> 
        <input id="b_codigo" type="button" value="Buscar" class="boton_select"/>
        </div>
    </div>
    </div>
            <asp:Panel ID="mensajes_exito" runat="server" Visible="false">
               
                <img src="img/exito.jpg" alt="error">   
            </asp:Panel>
            <asp:Panel ID="mensajes_error" runat="server" Visible="false">
             <img src="img/error.png" alt="error">
            </asp:Panel>
    </form>
</body>
</html>
