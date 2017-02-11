<%@ Page Language="C#" AutoEventWireup="true" CodeFile="codigo/requisiciones.aspx.cs" Inherits="requisiciones" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Requisiciones</title>
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
            jQuery('#form1').validate();
            $("#mensajes_exito").dialog({ title: "Exito" });
            $("#mensajes_error").dialog({ title: "Error" });
        });


        
</script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
         <div id="menu">
    
          <i class="fa fa-user-o fa-2x blanco"></i><asp:Label ID="usuario" runat="server" CssClass="nombre_vendedor">Prestamos</asp:Label>
          <div class="botones_menu">        
            <asp:LinkButton ID="salir" runat="server" CssClass="fa fa-sign-out fa-2x" ToolTip="Salir" ></asp:LinkButton>
          </div> 
         </div> 
         <div class="div_main">
            <div class="div_controles" >
            <div id="formulario">
                <ul>
                <li><label for="caja_matricula" class="texto_caja">Matricula </label>      
                <asp:TextBox ID="caja_matricula" runat="server" class="required textbox" ></asp:TextBox></li>
                </ul>
                <div>
                 <asp:GridView ID="tabla_requisiciones" ShowFooter="true" runat="server" CssClass="tabla" AutoGenerateColumns="false" >  
                        <HeaderStyle CssClass="cabezera" />
                        <Columns>
                        <asp:BoundField DataField="RowNumber" HeaderText="Row Number" />
                        <asp:TemplateField>
                         <HeaderTemplate>
                                Producto
                         </HeaderTemplate>
                            <ItemTemplate>
                                <asp:TextBox ID="producto" runat="server" class="textbox" Width="70px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                       <asp:TemplateField>
                         <HeaderTemplate>
                              Descripcion
                         </HeaderTemplate>
                            <ItemTemplate>
                                <asp:TextBox ID="descripcion" runat="server" class="textbox" Width="70px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                        <HeaderTemplate>
                              Precio
                         </HeaderTemplate>
                            <ItemTemplate>
                                <asp:TextBox ID="precio" runat="server" class="textbox" Width="70px" />
                            </ItemTemplate>
                        </asp:TemplateField>     
                        <asp:TemplateField>
                        <HeaderTemplate>
                              Cantidad
                         </HeaderTemplate>
                            <ItemTemplate>
                                <asp:TextBox ID="cantidad" runat="server" class="textbox" Width="70px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                        <HeaderTemplate>
                              Total
                         </HeaderTemplate>
                            <ItemTemplate>
                                <asp:TextBox ID="total" runat="server" class="textbox" Width="70px" />
                            </ItemTemplate>
                            <FooterStyle HorizontalAlign="Right" />
                            <FooterTemplate>
                             <asp:Button ID="ButtonAdd" runat="server" CssClass="boton_aceptar " OnClick="ButtonAdd_Click" Text="Agregar Producto" />
                            </FooterTemplate>
                        </asp:TemplateField>
                        </Columns>
             </asp:GridView>
                </div>
            
                <div class="centro">
                <asp:Button ID="btnSubmit" runat="server" CssClass="boton_aceptar " Text="Registrar" OnClick="boton_registrar_Click" />
                </div>             
            </div>
           <asp:Panel ID="mensajes_exito" runat="server" Visible="false">
               
                <img src="img/exito.jpg" alt="error">   
            </asp:Panel>
            <asp:Panel ID="mensajes_error" runat="server" Visible="false">
             <img src="img/error.png" alt="error">
            </asp:Panel>
        </div>
    </div>

        </div>
    </form>
</body>
</html>
