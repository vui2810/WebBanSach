<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Book.aspx.cs" Inherits="WebBanSach.Book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $(".add-to-cart").click(function () {
                let id = $(this).attr("data-id");
                alert("hello:" + id);
                $.ajax({
                    url: "AddToCart.aspx",
                    data: {"masach": id},
                    success: function (result) {
                        alert(result);
                    }
                });
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <section id="featured-books" class="py-5 my-5">
        <div class="container">
            <div class="row">
                <div class="col-md-12">

                    <div class="section-header align-center">
                        <div class="title">
                            <span>Some quality items</span>
                        </div>
                        <h2 class="section-title">Featured Books</h2>
                    </div>

                    <div class="product-list" data-aos="fade-up">
                        <div class="row">

                            <asp:Repeater ID="rptSachMoi" runat="server" DataSourceID="dsSach">
                                <ItemTemplate>
                                    <div class="col-md-3">
                                        <div class="product-item">
                                            <figure class="product-style">
                                                <img src="bia_sach/<%# Eval("anhbia") %>" alt="Books" class="product-item">
                                                <button type="button" class="add-to-cart" data-product-tile="add-to-cart" data-id="<%# Eval("masach") %>"">
                                                    Add to Cart</button>
                                            </figure>
                                            <figcaption>
                                                <h3><%# Eval("tensach") %></h3>
                                                <span>Armor Ramsey</span>
                                                <div class="item-price"><%# Eval("dongia","{0:#,##0} đồng") %></div>
                                            </figcaption>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>


                        </div>
                        <!--ft-books-slider-->
                    </div>
                    <!--grid-->


                </div>
                <!--inner-content-->
            </div>

            <div class="row">
                <div class="col-md-12">

                    <div class="btn-wrap align-right">
                        <a href="#" class="btn-accent-arrow">View all products <i
                            class="icon icon-ns-arrow-right"></i></a>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <asp:SqlDataSource ID="dsSach" runat="server"
        ConnectionString="<%$ ConnectionStrings:QLSachDBConnectionString %>"
        SelectCommand="SELECT * FROM [Sach] WHERE ([MaCD] = @MaCD)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="5" Name="MaCD" QueryStringField="macd" Type="Int32" />
        </SelectParameters>
</asp:SqlDataSource>

</asp:Content>
