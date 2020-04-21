<%@ Page Title="Events" Language="VB" MasterPageFile="~/ABCNursingMasterPage.master" AutoEventWireup="false" CodeFile="Events.aspx.vb" Inherits="Events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Events</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="slide" id="slide">
        <a href="javascript:void(0)" class="closebtn" onclick="closeSlide()">&times;</a>
        <a href="javascript:void(0)" onclick="openAdd()">Add</a>
        <a href="javascript:void(0)" onclick="openEdit()">Edit/Delete</a>
    </div>

    <div class="slide" id="add">
        <a href="javascript:void(0)" class="closebtn" onclick="closeAdd()">&times;</a>

        <table class="auto-style1">
            <tr>
                <td>Baby</td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></td>
            </tr>
            <tr>
                <td>Date</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Start Time</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>End Time</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Baby's Mood</td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList></td>
            </tr>
            <tr>
                <td>Position</td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList></td>
            </tr>
            <tr>
                <td>Problems</td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="DropDownList4" runat="server"></asp:DropDownList></td>
            </tr>
            <tr>
                <td>Comments</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
            </tr>
        </table>
    </div>

    <div class="slide" id="edit">
        <a href="javascript:void(0)" class="closebtn" onclick="closeEdit()">&times;</a>
        <table class="auto-style1">
            <tr>
                <td>Select Date</td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="DropDownList5" runat="server"></asp:DropDownList></td>
            </tr>
        </table>

        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="ObjectDataSource1">
            <Fields>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.EventTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Original_Id" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </div>

    <div id="Cal" onclick="openSlide()">
        <asp:Calendar ID="Calendar1" runat="server" Width="100%" Height="450px" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" ShowGridLines="True">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
    </div>
    <script>
        function openSlide() {
            document.getElementById("slide").style.width = "20%";
            document.getElementById("Cal").style.width = "80%";
        }

        function closeSlide() {
            document.getElementById("slide").style.width = "0%";
            document.getElementById("Cal").style.width = "100%"
        }

        function openAdd() {
            document.getElementById("add").style.width = "20%";
            document.getElementById("slide").style.width = "0%";
            document.getElementById("Cal").style.width = "80%";
        }

        function closeAdd() {
            document.getElementById("add").style.width = "0%";
            document.getElementById("slide").style.width = "20%";
            document.getElementById("Cal").style.width = "80%";
        }

        function openEdit() {
            document.getElementById("edit").style.width = "20%";
            document.getElementById("slide").style.width = "0%";
            document.getElementById("Cal").style.width = "80%";
        }

        function closeEdit() {
            document.getElementById("edit").style.width = "0%";
            document.getElementById("slide").style.width = "20%";
            document.getElementById("Cal").style.width = "80%";
        }
    </script>
</asp:Content>

