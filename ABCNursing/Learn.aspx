<%@ Page Title="Learn" Language="VB" MasterPageFile="~/ABCNursingMasterPage.master" AutoEventWireup="false" CodeFile="Learn.aspx.vb" Inherits="Learn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <style type="text/css">
        .auto-style1 {
            width: 62%;
            margin-left: auto;
            margin-right: auto;
            border: dashed black;
              height: 724px;
          }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Learn&nbsp; </h1>
</asp:Content>
      <asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
          <div class="auto-style1" id="dropdown1">
              Learn about different problems below:<br />
              <br />
              <asp:dropdownlist runat="server" DataSourceID="ObjectDataSource1" DataTextField="Name" DataValueField="Name" AutoPostBack="True" ID="DropDownlist1"></asp:dropdownlist>
              <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetName" TypeName="DataSetTableAdapters.ProblemsListTableAdapter">
              </asp:ObjectDataSource>
              <asp:gridview runat="server" AutoGenerateColumns="False" DataKeyNames="ProblemID" DataSourceID="ObjectDataSource2" AllowPaging="True" AllowSorting="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                  <AlternatingRowStyle BackColor="PaleGoldenrod" />
                  <Columns>
                      <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                      <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                      <asp:BoundField DataField="Implication" HeaderText="Implication" SortExpression="Implication" />
                      <asp:BoundField DataField="Severity" HeaderText="Severity" SortExpression="Severity" />
                      <asp:BoundField DataField="Recommendation" HeaderText="Recommendation" SortExpression="Recommendation" />
                      <asp:HyperLinkField DataNavigateUrlFields="URL" DataTextField="Name" HeaderText="Read more" />
                  </Columns>
                  <FooterStyle BackColor="Tan" />
                  <HeaderStyle BackColor="Tan" Font-Bold="True" />
                  <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                  <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                  <SortedAscendingCellStyle BackColor="#FAFAE7" />
                  <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                  <SortedDescendingCellStyle BackColor="#E1DB9C" />
                  <SortedDescendingHeaderStyle BackColor="#C2A47B" />
              </asp:gridview>

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
                      <asp:ControlParameter ControlID="DropDownlist1" Name="Name" PropertyName="SelectedValue" Type="String" />
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


              <br />
              Learn about different positions below:<br />
              <br />
              <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource3" DataTextField="Name" DataValueField="Name">
              </asp:DropDownList>
              <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetName" TypeName="DataSetTableAdapters.PositionListTableAdapter"></asp:ObjectDataSource>
              <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="PositionID" DataSourceID="ObjectDataSource4" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                  <AlternatingRowStyle BackColor="PaleGoldenrod" />
                  <Columns>
                      <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                      <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                      <asp:BoundField DataField="Orinetation" HeaderText="Orinetation" SortExpression="Orinetation" />
                      <asp:ImageField DataImageUrlField="Pic_Filename" HeaderText="Position Picture">
                      </asp:ImageField>
                      <asp:HyperLinkField DataNavigateUrlFields="URL" DataTextField="Name" HeaderText="Read more" />
                  </Columns>
                  <FooterStyle BackColor="Tan" />
                  <HeaderStyle BackColor="Tan" Font-Bold="True" />
                  <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                  <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                  <SortedAscendingCellStyle BackColor="#FAFAE7" />
                  <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                  <SortedDescendingCellStyle BackColor="#E1DB9C" />
                  <SortedDescendingHeaderStyle BackColor="#C2A47B" />
              </asp:GridView>
              <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByName" TypeName="DataSetTableAdapters.PositionTableAdapter" UpdateMethod="Update">
                  <DeleteParameters>
                      <asp:Parameter Name="Original_PositionID" Type="Int32" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="PositionID" Type="Int32" />
                      <asp:Parameter Name="Name" Type="String" />
                      <asp:Parameter Name="Description" Type="String" />
                      <asp:Parameter Name="Orinetation" Type="String" />
                      <asp:Parameter Name="Pic_Filename" Type="String" />
                      <asp:Parameter Name="URL" Type="String" />
                  </InsertParameters>
                  <SelectParameters>
                      <asp:ControlParameter ControlID="DropDownList2" Name="Name" PropertyName="SelectedValue" Type="String" />
                  </SelectParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="Name" Type="String" />
                      <asp:Parameter Name="Description" Type="String" />
                      <asp:Parameter Name="Orinetation" Type="String" />
                      <asp:Parameter Name="Pic_Filename" Type="String" />
                      <asp:Parameter Name="URL" Type="String" />
                      <asp:Parameter Name="Original_PositionID" Type="Int32" />
                  </UpdateParameters>
              </asp:ObjectDataSource>



              <br />
              Learn about different moods below:<br />
              <br />
              <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource5" DataTextField="Name" DataValueField="Name">
              </asp:DropDownList>
              <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetName" TypeName="DataSetTableAdapters.MoodListTableAdapter"></asp:ObjectDataSource>
              <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="MoodID" DataSourceID="ObjectDataSource6" ForeColor="Black" GridLines="None">
                  <AlternatingRowStyle BackColor="PaleGoldenrod" />
                  <Columns>
                      <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                      <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                      <asp:BoundField DataField="Implication" HeaderText="Implication" SortExpression="Implication" />
                      <asp:BoundField DataField="Severity" HeaderText="Severity" SortExpression="Severity" />
                      <asp:BoundField DataField="Recommendation" HeaderText="Recommendation" SortExpression="Recommendation" />
                  </Columns>
                  <FooterStyle BackColor="Tan" />
                  <HeaderStyle BackColor="Tan" Font-Bold="True" />
                  <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                  <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                  <SortedAscendingCellStyle BackColor="#FAFAE7" />
                  <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                  <SortedDescendingCellStyle BackColor="#E1DB9C" />
                  <SortedDescendingHeaderStyle BackColor="#C2A47B" />
              </asp:GridView>
              <asp:ObjectDataSource ID="ObjectDataSource6" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByName" TypeName="DataSetTableAdapters.MoodTableAdapter" UpdateMethod="Update">
                  <DeleteParameters>
                      <asp:Parameter Name="Original_MoodID" Type="Int32" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="MoodID" Type="Int32" />
                      <asp:Parameter Name="Name" Type="String" />
                      <asp:Parameter Name="Description" Type="String" />
                      <asp:Parameter Name="Implication" Type="String" />
                      <asp:Parameter Name="Severity" Type="String" />
                      <asp:Parameter Name="Recommendation" Type="String" />
                  </InsertParameters>
                  <SelectParameters>
                      <asp:ControlParameter ControlID="DropDownList3" Name="Name" PropertyName="SelectedValue" Type="String" />
                  </SelectParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="Name" Type="String" />
                      <asp:Parameter Name="Description" Type="String" />
                      <asp:Parameter Name="Implication" Type="String" />
                      <asp:Parameter Name="Severity" Type="String" />
                      <asp:Parameter Name="Recommendation" Type="String" />
                      <asp:Parameter Name="Original_MoodID" Type="Int32" />
                  </UpdateParameters>
              </asp:ObjectDataSource>




          </asp:Content>
      
    