<%@ Page Title="Learn" Language="VB" MasterPageFile="~/ABCNursingMasterPage.master" AutoEventWireup="false" CodeFile="Learn.aspx.vb" Inherits="Learn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
        Learn</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ProblemID" DataSourceID="ObjectDataSource1" Height="127px" Width="353px">
        <Fields>
            <asp:BoundField DataField="ProblemID" HeaderText="ProblemID" ReadOnly="True" SortExpression="ProblemID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Implication" HeaderText="Implication" SortExpression="Implication" />
            <asp:BoundField DataField="Severity" HeaderText="Severity" SortExpression="Severity" />
            <asp:BoundField DataField="Recommendation" HeaderText="Recommendation" SortExpression="Recommendation" />
            <asp:BoundField DataField="URL" HeaderText="URL" SortExpression="URL" />
        </Fields>
    </asp:DetailsView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.ProblemsTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_ProblemID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProblemID" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Implication" Type="String" />
            <asp:Parameter Name="Severity" Type="String" />
            <asp:Parameter Name="Recommendation" Type="String" />
            <asp:Parameter Name="URL" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Implication" Type="String" />
            <asp:Parameter Name="Severity" Type="String" />
            <asp:Parameter Name="Recommendation" Type="String" />
            <asp:Parameter Name="URL" Type="String" />
            <asp:Parameter Name="Original_ProblemID" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>

