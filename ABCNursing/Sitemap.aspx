<%@ Page Title="Sitemap" Language="VB" MasterPageFile="~/ABCNursingMasterPage.master" AutoEventWireup="false" CodeFile="Sitemap.aspx.vb" Inherits="Sitemap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 33%;
            vertical-align: top;
        }
        .auto-style4 {
            width: 33%;
            vertical-align: top;
        }
        table a {
            color: black;
        }
        table a:hover {
            color: black;
            text-decoration: black underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Sitemap</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
    <br />
    <div class="container">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2"><h3>Guests</h3><br />
                <a href="Default.aspx">Home</a><br />
                <a href="Aboutus.aspx">About Us</a><br />
                <a href="Learn.aspx">Learn</a><br />
                <a href="Login.aspx">Log in</a><br />
                <a href="Signup.aspx">Sign up</a></td>

            <td class="auto-style2"><h3>Users</h3><br />
                <a href="/MemberPages/Events.aspx">Events</a><br />
                <a href="/MemberPages/Analytics.aspx">Analytics</a><br />
                <a href="/MemberPages/Profile.aspx">Profile</a><br />
                <a href="/MemberPages/Addeditbaby.aspx">Add Baby</a><br /></td>

            <td class="auto-style4"><h3>Admin</h3><br />
                <a href="/AdminPages/AdminReport.aspx">Report</a><br />
                <a href="/AdminPages/AdminUserProfile.aspx">Manage Profile</a></td>
        </tr>
    </table>
        </div>
    
    
</asp:Content>

