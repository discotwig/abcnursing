<%@ Page Title="User Profile" Language="VB" MasterPageFile="~/ABCNursingMasterPage.master" AutoEventWireup="false" CodeFile="Profile.aspx.vb" Inherits="Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 54%;
            margin-left: auto;
            margin-right: auto;
            border: dashed black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
        Profile</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="auto-style1">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="100%" AutoGenerateRows="False" DataKeyNames="UserID" DataSourceID="ObjectDataSource1">
            <Fields>
                <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="Zipcode" HeaderText="Zipcode" SortExpression="Zipcode" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="BabyID" HeaderText="BabyID" SortExpression="BabyID" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="CreatedDate" HeaderText="CreatedDate" SortExpression="CreatedDate" />
                <asp:BoundField DataField="LastLoginDate" HeaderText="LastLoginDate" SortExpression="LastLoginDate" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="RoleID" HeaderText="RoleID" SortExpression="RoleID" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.UserTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_UserID" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="DOB" Type="String" />
                <asp:Parameter Name="Weight" Type="Decimal" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="Zipcode" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="BabyID" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="CreatedDate" Type="DateTime" />
                <asp:Parameter Name="LastLoginDate" Type="DateTime" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="RoleID" Type="Int32" />
                <asp:Parameter Name="Original_UserID" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MemberPages/Addeditbaby.aspx">Add a baby?</asp:HyperLink>
        <br />
        <br />
        <br />
        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="BabyID" DataSourceID="ObjectDataSource2" Height="99px" Width="100%">
            <Fields>
                <asp:BoundField DataField="BabyID" HeaderText="BabyID" ReadOnly="True" SortExpression="BabyID" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.BabyTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_BabyID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="BabyID" Type="Int32" />
                <asp:Parameter Name="First_Name" Type="String" />
                <asp:Parameter Name="Last_Name" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="DOB" Type="String" />
                <asp:Parameter Name="Weight" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="First_Name" Type="String" />
                <asp:Parameter Name="Last_Name" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="DOB" Type="String" />
                <asp:Parameter Name="Weight" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Original_BabyID" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <br />
        </div>
&nbsp; 
</asp:Content>

