<%@ Page Language="C#" AutoEventWireup="true" CodeFile="codigo/overview.aspx.cs" Inherits="overview" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/estilo.css" />
<link rel="stylesheet" href="css/sty_mamalon.css" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" script-name="alfa-slab-one" src="http://use.edgefonts.net/alfa-slab-one.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body class="principal">
    <form id="form1" runat="server">
     <h1><asp:label runat="server" ID="usuario"/></h1>
    <div class="pagina">
        <div class="linha">          
            <div class="tile amarelo">
            <asp:LinkButton ID="LinkButton2" runat="server" class="tile" onclick="altas_requisiciones_Click"> 
                <i class="fa fa-cart-plus fa-4x icono" aria-hidden="true"></i>
                <label class="texto_icono">Altas Requisicion</label>    
               </asp:LinkButton>
            </div>
            <div class="tile azul">
                <asp:LinkButton ID="LinkButton13" runat="server" class="tile" onclick="altas_aulas_Click"> 
                <i class="fa fa-university fa-4x icono" aria-hidden="true"></i>
                <label class="texto_icono">Altas Aulas</label>    
               </asp:LinkButton>
            </div>
            <div class="tile tileLargo vermelho">
                <asp:LinkButton ID="LinkButton14" runat="server" class="tile" onclick="altas_inventario_Click"> 
                <i class="fa fa-cube fa-4x icono_largo" aria-hidden="true"></i>
                <label class="texto_icono_largo">Altas Inventario</label>    
               </asp:LinkButton>
            </div>
            <div class="tile verde ">
                <asp:LinkButton ID="altas_usuario" runat="server" class="tile" 
                onclick="altas_usuario_Click" > 
                <i class="fa fa-user-circle-o fa-4x icono" aria-hidden="true"></i>
                <label class="texto_icono">Altas Usuario</label>    
               </asp:LinkButton>
            </div>           
            <div class="tile tileLargo amarelo">
                <asp:LinkButton ID="LinkButton1" runat="server" class="tile" 
                onclick="altas_prestamo_Click" > 
                <i class="fa fa-book fa-4x icono_largo" aria-hidden="true"></i>
                <label class="texto_icono_largo">Alta Prestamo</label>    
               </asp:LinkButton>
            </div>
        </div>
        <div class="linha">          
            <div class="tile tileLargo amarelo">
             <asp:LinkButton ID="LinkButton3" runat="server" class="tile" 
                onclick="altas_usuario_Click" >
                <i class="fa fa-user-circle-o fa-4x icono_largo" aria-hidden="true"></i> 
                <i class="fa fa-pencil fa-2x editar_largo" aria-hidden="true"></i>
                <label class="texto_icono_largo">Editar Usuario</label>    
               </asp:LinkButton>
            </div>
            <div class="tile azul">
                 <asp:LinkButton ID="LinkButton12" runat="server" class="tile" 
                onclick="altas_usuario_Click" >
                <i class="fa fa-cube fa-4x icono" aria-hidden="true"></i> 
                <i class="fa fa-pencil fa-2x editar" aria-hidden="true"></i>
                <label class="texto_icono">Editar Inventario</label>    
               </asp:LinkButton>    
            </div>           
            <div class="tile verde">
                 <asp:LinkButton ID="LinkButton11" runat="server" class="tile" 
                onclick="altas_usuario_Click" >
                <i class="fa fa-book fa-4x icono" aria-hidden="true"></i> 
                <i class="fa fa-pencil fa-2x editar" aria-hidden="true"></i>
                <label class="texto_icono">Editar Prestamos</label>    
               </asp:LinkButton>    
            </div>
            <div class="tile vermelho">
                 <asp:LinkButton ID="LinkButton10" runat="server" class="tile" 
                onclick="altas_usuario_Click" >
                <i class="fa fa-university fa-4x icono" aria-hidden="true"></i> 
                <i class="fa fa-pencil fa-2x editar" aria-hidden="true"></i>
                <label class="texto_icono">Editar Aulas</label>    
               </asp:LinkButton> 
            </div>           
            <div class="tile tileLargo verde">
                <asp:LinkButton ID="LinkButton4" runat="server" class="tile" 
                onclick="altas_usuario_Click" >
                <i class="fa fa-columns fa-4x icono_largo" aria-hidden="true"></i> 
                <i class="fa fa-pencil fa-2x editar_largo" aria-hidden="true"></i>
                <label class="texto_icono_largo">Editar Peticion</label>    
               </asp:LinkButton>
            </div>
        </div>       
        <div class="linha">          
            <div class="tile amarelo">
                 <asp:LinkButton ID="LinkButton9" runat="server" class="tile" 
                onclick="altas_usuario_Click" >
                <i class="fa fa-bar-chart fa-4x icono" aria-hidden="true"></i> 
                <label class="texto_icono">Reportes</label>    
               </asp:LinkButton>
            </div>
            <div class="tile verde">
                 <asp:LinkButton ID="LinkButton8" runat="server" class="tile" 
                onclick="altas_usuario_Click" >
                <i class="fa fa-university fa-4x icono" aria-hidden="true"></i> 
                <i class="fa fa-calendar-plus-o fa-2x editar" aria-hidden="true"></i>
                <label class="texto_icono">Agendar Aula</label>    
               </asp:LinkButton>
            </div>
            <div class="tile vermelho">
                 <asp:LinkButton ID="LinkButton7" Text="Disponible" runat="server"  class="tile  "/>
            </div>           
            <div class="tile tileLargo verde">
                <asp:LinkButton ID="LinkButton5" Text="Disponible" runat="server"  class="tile  "/>
            </div>
            <div class="tile azul">
                 <asp:LinkButton ID="LinkButton6" Text="Disponible" runat="server"  class="tile  "/>
            </div>  
    </div>
</div>


    </form>
</body>
</html>
