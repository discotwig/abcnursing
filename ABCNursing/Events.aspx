<%@ Page Title="Events" Language="VB" MasterPageFile="~/ABCNursingMasterPage.master" AutoEventWireup="false" CodeFile="Events.aspx.vb" Inherits="Events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Events</h1>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <!--Slide 1 - Select Action-->
    <div class="slide" id="slide">
        <a href="javascript:void(0)" class="closebtn" onclick="closeSlide()">&times;</a>
        <a href="javascript:void(0)" onclick="openAdd()">Add</a>
        <a href="javascript:void(0)" onclick="openEdit()">Edit/Delete</a>
    </div>
    
    <!--Slide 2 - Add Event-->
    <div class="slide" id="add">
        <a href="javascript:void(0)" class="closebtn" onclick="closeAdd()">&times;</a>

        <table class="auto-style1">
            <tr>
                <td>Baby</td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="ddlBaby" runat="server"></asp:DropDownList></td>
            </tr>
            <tr>
                <td>Date</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblDate" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td>Start Time</td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="ddlHourStart" runat="server"></asp:DropDownList>
                    <asp:DropDownList ID="ddlAMPMStart" runat="server"></asp:DropDownList></td>
                    
            </tr>
            <tr>
                <td>End Time</td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="ddlHourEnd" runat="server"></asp:DropDownList>
                    <asp:DropDownList ID="ddlAMPMEnd" runat="server"></asp:DropDownList></td>
            </tr>
            <tr>
                <td>Baby's Mood</td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="ddlMood" runat="server"></asp:DropDownList></td>
            </tr>
            <tr>
                <td>Position</td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="ddlPosition" runat="server"></asp:DropDownList></td>
            </tr>
            <tr>
                <td>Problems</td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="ddlProblems" runat="server"></asp:DropDownList></td>
            </tr>
            <tr>
                <td>Comments</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtComments" runat="server"></asp:TextBox></td>
            </tr>
        </table>
    </div>

    <!--Slide 3 - Edit Event-->
    <div class="slide" id="edit">
        <a href="javascript:void(0)" class="closebtn" onclick="closeEdit()">&times;</a>
        <table class="auto-style1">
            <tr>
                <td>Select Date</td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="ddlSelectDateEdit" runat="server"></asp:DropDownList></td>
            </tr>
        </table>

        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="EventID" DataSourceID="ObjectDataSource1">
            <Fields>
                <asp:BoundField DataField="EventID" HeaderText="EventID" ReadOnly="True" SortExpression="EventID" InsertVisible="False" />
                <asp:BoundField DataField="MotherID" HeaderText="MotherID" SortExpression="MotherID" />
                <asp:BoundField DataField="BabyID" HeaderText="BabyID" SortExpression="BabyID" />
                <asp:BoundField DataField="MoodID" HeaderText="MoodID" SortExpression="MoodID" />
                <asp:BoundField DataField="PositionID" HeaderText="PositionID" SortExpression="PositionID" />
                <asp:BoundField DataField="ProblemID" HeaderText="ProblemID" SortExpression="ProblemID" />
                <asp:BoundField DataField="Timstamps" HeaderText="Timstamps" SortExpression="Timstamps" />
            </Fields>
        </asp:DetailsView>

        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.EventTableAdapter">
        </asp:ObjectDataSource>
        
    </div>

    <!--Calender Object-->
    <div id="Cal" onclick="openSlide()">
        <asp:Calendar ID="Calendar1" runat="server" Width="100%" Height="450px" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" ShowGridLines="True" CssClass="auto-style2" style="margin-right: 0">
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

