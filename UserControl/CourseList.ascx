<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CourseList.ascx.cs" Inherits="de1.UserControl.CourseList" %>
<asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="EntityDataSource1">
       <ItemTemplate>
       <div class="product_box">
       <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
      <asp:Image ID="Image1" runat="server" Width ="100px" Height="100px" ImageUrl='<%# "~/img/Courses/" + Eval("ImageFilePath")%>' /><br />
       <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
        
   </div>
       </ItemTemplate>
</asp:ListView>
<asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=QLKhoaHocEntities" DefaultContainerName="QLKhoaHocEntities" EnableFlattening="False" EntitySetName="Courses" Where="it.CatID = @ID" Include="Category">
        <WhereParameters>
        <asp:QueryStringParameter Name="ID" QueryStringField="CatID" Type="Int32"/>
    </WhereParameters>
</asp:EntityDataSource>

