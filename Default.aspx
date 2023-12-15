<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="student_Info_CRUD._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="align-items:center; text-align:center; margin:30px auto; border:0.5px solid black;">
        <h2>Student Info Manage Form</h2>
    </div>

        <br>
        

            <table>
            <tr>
                <td>&nbsp;</td>
                <td><b>Student ID: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                     &nbsp;&nbsp;&nbsp;<asp:Button ID="Button5" runat="server" Text="GET" Width="100px" ForeColor="White" BackColor="#6600FF" BorderColor="#6600FF" OnClick="Button5_Click" />

                </td>
            </tr>

           <tr>
                <td>&nbsp;</td>
                <td><b>Student Name: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>

                </td>
            </tr>

           <tr>
                <td>&nbsp;</td>
                <td><b>Student Address: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                        <asp:ListItem>INDIA</asp:ListItem>
                        <asp:ListItem>CANADA</asp:ListItem>
                        <asp:ListItem>AUS</asp:ListItem>
                        <asp:ListItem>PAK</asp:ListItem>
                        <asp:ListItem>BANGLADESH</asp:ListItem>
                        <asp:ListItem>JAPAN</asp:ListItem>
                        <asp:ListItem>LONDAN</asp:ListItem>
                        <asp:ListItem>ENGLAND</asp:ListItem>
                    </asp:DropDownList>

                </td>
            </tr>

           <tr>
                <td>&nbsp;</td>
                <td><b>Student Age: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>

                </td>
            </tr>

           <tr>
                <td>&nbsp;</td>
                <td><b>Student Contact: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>

                </td>
            </tr>

            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            
            <tr>
                
                <td>&nbsp;</td>
                <td></td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Insert" Width="100px" ForeColor="White" BackColor="#9933FF" BorderColor="#9933FF" OnClick="Button1_Click" />
              &nbsp;<asp:Button ID="Button2" runat="server" Text="Update" Width="100px" ForeColor="White" BackColor="#9933FF" BorderColor="#9933FF" OnClick="Button2_Click" />
                    &nbsp;<asp:Button ID="Button3" runat="server" Text="Delete" Width="100px" ForeColor="White" BackColor="#9933FF" BorderColor="#9933FF" OnClick="Button3_Click" OnClientClick="return confirm('Are you sure to delete?');" />
                    &nbsp;<asp:Button ID="Button4" runat="server" Text="Search" Width="100px" ForeColor="White" BackColor="#9933FF" BorderColor="#9933FF" OnClick="Button4_Click" />
                </td>
            </tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                
                    <asp:GridView style="text-align:center;" ID="GridView2" runat="server" Width="700px" CellSpacing="1" BackColor="Black" BorderColor="#CCCCCC" ForeColor="White" BorderWidth="4px"></asp:GridView>
                </td>
            <tr>
        </table>
    
    



</asp:Content>
