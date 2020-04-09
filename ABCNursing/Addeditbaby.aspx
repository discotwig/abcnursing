<%@ Page Title="" Language="VB" MasterPageFile="~/ABCNursingMasterPage.master" AutoEventWireup="false" CodeFile="Addeditbaby.aspx.vb" Inherits="Addbaby" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="container">
        <h1>Add a baby</h1>

        <br />
        <table class="datatable">
            <tr>
                <td>First Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Gender</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="Choose"></asp:ListItem>
                        <asp:ListItem Value="Boy"></asp:ListItem>
                        <asp:ListItem Value="Girl"></asp:ListItem>
                   
                         </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>DOB</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="datatable">Weight</td>
                <td class="datatable">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Button" />
                </td>
            </tr>
            
        </table>
        <h1>&nbsp;</h1>
        <h1>Edit a Baby</h1>
        <p>Select baby to Edit</p>
        <p>
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
        </p>
        <p>&nbsp;</p>
        <p>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px">
            </asp:DetailsView>
        </p>

    </div>
</asp:Content>

