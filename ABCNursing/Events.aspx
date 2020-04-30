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
                    <asp:DropDownList ID="ddlBaby" runat="server">
                        <asp:ListItem>Sam</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>Start Time</td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="ddlHourStart" runat="server">
                        <asp:ListItem>12:00</asp:ListItem>
                        <asp:ListItem>1:00</asp:ListItem>
                        <asp:ListItem>2:00</asp:ListItem>
                        <asp:ListItem>3:00</asp:ListItem>
                        <asp:ListItem>4:00</asp:ListItem>
                        <asp:ListItem>5:00</asp:ListItem>
                        <asp:ListItem>6:00</asp:ListItem>
                        <asp:ListItem>7:00</asp:ListItem>
                        <asp:ListItem>8:00</asp:ListItem>
                        <asp:ListItem>9:00</asp:ListItem>
                        <asp:ListItem>10:00</asp:ListItem>
                        <asp:ListItem>11:00</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RadioButtonList ID="radioAMPMStart" runat="server">
                        <asp:ListItem>AM</asp:ListItem>
                        <asp:ListItem>PM</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                    
            </tr>
            <tr>
                <td>End Time</td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="ddlHourEnd" runat="server">
                        <asp:ListItem>12:00</asp:ListItem>
                        <asp:ListItem>1:00</asp:ListItem>
                        <asp:ListItem>2:00</asp:ListItem>
                        <asp:ListItem>3:00</asp:ListItem>
                        <asp:ListItem>4:00</asp:ListItem>
                        <asp:ListItem>5:00</asp:ListItem>
                        <asp:ListItem>6:00</asp:ListItem>
                        <asp:ListItem>7:00</asp:ListItem>
                        <asp:ListItem>8:00</asp:ListItem>
                        <asp:ListItem>9:00</asp:ListItem>
                        <asp:ListItem>10:00</asp:ListItem>
                        <asp:ListItem>11:00</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RadioButtonList ID="radioAMPMEnd" runat="server">
                        <asp:ListItem>AM</asp:ListItem>
                        <asp:ListItem>PM</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>Baby's Mood</td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="chkMood" runat="server">
                        <asp:ListItem>Happy</asp:ListItem>
                        <asp:ListItem>Sad</asp:ListItem>
                        <asp:ListItem>Crying</asp:ListItem>
                        <asp:ListItem>Teething</asp:ListItem>
                        <asp:ListItem>Fretful</asp:ListItem>
                        <asp:ListItem>Sleeping</asp:ListItem>
                        <asp:ListItem>Anger</asp:ListItem>
                        <asp:ListItem>Depression</asp:ListItem>
                        <asp:ListItem>Homesick</asp:ListItem>
                        <asp:ListItem>Agitation</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>Position</td>
            </tr>
            <tr>
                <td>
                <asp:DropDownList ID="chkPosition" runat="server">
                        <asp:ListItem>Laid-back</asp:ListItem>
                        <asp:ListItem>Cradle Hold</asp:ListItem>
                        <asp:ListItem>Cross-Cradle Hold</asp:ListItem>
                        <asp:ListItem>Rugby Ball Hold</asp:ListItem>
                        <asp:ListItem>Side-Lying</asp:ListItem>
                        <asp:ListItem>Dancer Hand</asp:ListItem>
                        <asp:ListItem>Nursing in a Sling</asp:ListItem>
                        <asp:ListItem>Dangle Feeding</asp:ListItem>
                        <asp:ListItem>Upright</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList></td>
            </tr>
            <tr>
                <td>Problems</td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="chkProblems" runat="server">
                        <asp:ListItem>None</asp:ListItem>
                        <asp:ListItem>Breast Engorgment</asp:ListItem>
                        <asp:ListItem>Leaking Breasts</asp:ListItem>
                        <asp:ListItem>Mastitis</asp:ListItem>
                        <asp:ListItem>Weak Latch</asp:ListItem>
                        <asp:ListItem>Mouth Problems</asp:ListItem>
                        <asp:ListItem>Poor Milk Supply</asp:ListItem>
                        <asp:ListItem>Flat or Inverted Nipples</asp:ListItem>
                        <asp:ListItem>Sore or Burning Nipples</asp:ListItem>
                        <asp:ListItem>Nipple Confusion</asp:ListItem>
                        <asp:ListItem>Plugged Milk Ducts</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Comments</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtComments" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" /></td>
                <td>
                    <asp:Button ID="btnClear" runat="server" Text="Clear" /></td>
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
                    <asp:DropDownList ID="ddlSelectDateEdit" runat="server">
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
        </table>
        
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

