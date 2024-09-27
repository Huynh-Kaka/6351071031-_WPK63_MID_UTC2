<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Detail.ascx.cs" Inherits="de1.UserControl.Detail" %>
<asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="EntityDataSource1">
    <EditItemTemplate>
        ID:
        <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
        <br />
        Name:
        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
        <br />
        ImageFilePath:
        <asp:TextBox ID="ImageFilePathTextBox" runat="server" Text='<%# Bind("ImageFilePath") %>' />
        <br />
        Description:
        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
        <br />
        Duration:
        <asp:TextBox ID="DurationTextBox" runat="server" Text='<%# Bind("Duration") %>' />
        <br />
        CatID:
        <asp:TextBox ID="CatIDTextBox" runat="server" Text='<%# Bind("CatID") %>' />
        <br />
        NumViews:
        <asp:TextBox ID="NumViewsTextBox" runat="server" Text='<%# Bind("NumViews") %>' />
        <br />
        Category:
        <asp:TextBox ID="CategoryTextBox" runat="server" Text='<%# Bind("Category") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        ID:
        <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
        <br />
        Name:
        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
        <br />
        ImageFilePath:
        <asp:TextBox ID="ImageFilePathTextBox" runat="server" Text='<%# Bind("ImageFilePath") %>' />
        <br />
        Description:
        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
        <br />
        Duration:
        <asp:TextBox ID="DurationTextBox" runat="server" Text='<%# Bind("Duration") %>' />
        <br />
        CatID:
        <asp:TextBox ID="CatIDTextBox" runat="server" Text='<%# Bind("CatID") %>' />
        <br />
        NumViews:
        <asp:TextBox ID="NumViewsTextBox" runat="server" Text='<%# Bind("NumViews") %>' />
        <br />
        Category:
        <asp:TextBox ID="CategoryTextBox" runat="server" Text='<%# Bind("Category") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        ID:
        <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
        <br />
        Name:
        <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
        <br />
        ImageFilePath:
        <asp:Label ID="ImageFilePathLabel" runat="server" Text='<%# Bind("ImageFilePath") %>' />
        <br />
        Description:
        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
        <br />
        Duration:
        <asp:Label ID="DurationLabel" runat="server" Text='<%# Bind("Duration") %>' />
        <br />
        CatID:
        <asp:Label ID="CatIDLabel" runat="server" Text='<%# Bind("CatID") %>' />
        <br />
        NumViews:
        <asp:Label ID="NumViewsLabel" runat="server" Text='<%# Bind("NumViews") %>' />
        <br />
        Category:
        <asp:Label ID="CategoryLabel" runat="server" Text='<%# Bind("Category") %>' />
        <br />

    </ItemTemplate>
</asp:FormView>
<asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=QLKhoaHocEntities" DefaultContainerName="QLKhoaHocEntities" EnableFlattening="False" EntitySetName="Courses" EntityTypeFilter="Course" Where="it.ID = @ID" Include="Category">
        <WhereParameters>
        <asp:QueryStringParameter Name="ID" QueryStringField="CatID" Type="Int32"/>
    </WhereParameters>
</asp:EntityDataSource>

