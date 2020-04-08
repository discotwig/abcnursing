<%@ Page Title="Learn" Language="VB" MasterPageFile="~/ABCNursingMasterPage.master" AutoEventWireup="false" CodeFile="Learn.aspx.vb" Inherits="Learn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

   <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
      <asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
         <h1>
        Learn about different Problems</h1>  
          <asp:FormView ID="FormView1" runat="server"></asp:FormView>
          <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="Name" DataValueField="Name"></asp:DropDownList>
          <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByName" TypeName="DataSetTableAdapters.ProblemsTableAdapter" DeleteMethod="Delete" InsertMethod="Insert" UpdateMethod="Update">
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
              <SelectParameters>
                  <asp:Parameter Name="Name" Type="String" />
              </SelectParameters>
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
          <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProblemID" DataSourceID="ObjectDataSource2">
              <Columns>
                  <asp:BoundField DataField="ProblemID" HeaderText="ProblemID" ReadOnly="True" SortExpression="ProblemID" />
                  <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                  <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                  <asp:BoundField DataField="Implication" HeaderText="Implication" SortExpression="Implication" />
                  <asp:BoundField DataField="Severity" HeaderText="Severity" SortExpression="Severity" />
                  <asp:BoundField DataField="Recommendation" HeaderText="Recommendation" SortExpression="Recommendation" />
                  <asp:BoundField DataField="URL" HeaderText="URL" SortExpression="URL" />
              </Columns>
          </asp:GridView>   
          <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByName" TypeName="DataSetTableAdapters.ProblemsTableAdapter" UpdateMethod="Update">
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
              <SelectParameters>
                  <asp:ControlParameter ControlID="GridView1" Name="Name" PropertyName="SelectedValue" Type="String" />
              </SelectParameters>
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
      
    