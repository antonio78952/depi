<%@ Page Language="C#" AutoEventWireup="true" CodeFile="codigo/login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>

<body BGCOLOR="#e8e9ea" >
    <form id="inicio" runat="server"> 
        <div  style="margin-left: 35%; margin-top: 20%;">
            <asp:panel  ID="panel_inicio" runat="server">
                <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" 
                    BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                    onauthenticate="Login1_Authenticate" BorderPadding="4" ForeColor="#333333"  
                    Width="396px" Height="224px">
                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                    <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" 
                        BorderWidth="1px" Font-Names="Verdana" Font-Size="Small" 
                        ForeColor="#284775" />
                    <TextBoxStyle Font-Size="Small" />
                    <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="#FFFFFF" 
                        Font-Size="0.9em" />
                </asp:Login>
            </asp:panel>   
        </div>     
    </form>
</body>
</html>
