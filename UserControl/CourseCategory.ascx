<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CourseCategory.ascx.cs" Inherits="de1.UserControl.CourseCategory" %>

<asp:DataList ID="DataList1" runat="server" DataKeyField="CatID" DataSourceID="EntityDataSource1">
    <ItemTemplate>
    <li>
        <asp:HyperLink ID="HyperLink1" runat="server"  Text='<%# Eval("CatName") + "("+ Eval("Courses.Count")+")" %>' NavigateUrl='<%# "~/Course.aspx?CatID=" + Eval("CatID")%>' ></asp:HyperLink>
    
    </li>

    </ItemTemplate>
</asp:DataList> 
<asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=QLKhoaHocEntities" DefaultContainerName="QLKhoaHocEntities" EnableFlattening="False" EntitySetName="Categories">
</asp:EntityDataSource>


