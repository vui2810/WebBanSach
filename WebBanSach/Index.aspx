<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebBanSach.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="billboard">

        <div class="container">
            <div class="row">
                <div class="col-md-12">

                    <button class="prev slick-arrow">
                        <i class="icon icon-arrow-left"></i>
                    </button>

                    <div class="main-slider pattern-overlay">
                        <div class="slider-item">
                            <div class="banner-content">
                                <h2 class="banner-title">Life of the Wild</h2>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eu feugiat amet, libero
									ipsum enim pharetra hac. Urna commodo, lacus ut magna velit eleifend. Amet, quis
									urna, a eu.
                                </p>
                                <div class="btn-wrap">
                                    <a href="#" class="btn btn-outline-accent btn-accent-arrow">Read More<i
                                        class="icon icon-ns-arrow-right"></i></a>
                                </div>
                            </div>
                            <!--banner-content-->
                            <img src="images/main-banner1.jpg" alt="banner" class="banner-image">
                        </div>
                        <!--slider-item-->

                        <div class="slider-item">
                            <div class="banner-content">
                                <h2 class="banner-title">Birds gonna be Happy</h2>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eu feugiat amet, libero
									ipsum enim pharetra hac. Urna commodo, lacus ut magna velit eleifend. Amet, quis
									urna, a eu.
                                </p>
                                <div class="btn-wrap">
                                    <a href="#" class="btn btn-outline-accent btn-accent-arrow">Read More<i
                                        class="icon icon-ns-arrow-right"></i></a>
                                </div>
                            </div>
                            <!--banner-content-->
                            <img src="images/main-banner2.jpg" alt="banner" class="banner-image">
                        </div>
                        <!--slider-item-->

                    </div>
                    <!--slider-->

                    <button class="next slick-arrow">
                        <i class="icon icon-arrow-right"></i>
                    </button>

                </div>
            </div>
        </div>

    </section>

    <section id="client-holder" data-aos="fade-up">
        <div class="container">
            <div class="row">
                <div class="inner-content">
                    <div class="logo-wrap">
                        <div class="grid">
                            <a href="#">
                                <img src="images/client-image1.png" alt="client"></a>
                            <a href="#">
                                <img src="images/client-image2.png" alt="client"></a>
                            <a href="#">
                                <img src="images/client-image3.png" alt="client"></a>
                            <a href="#">
                                <img src="images/client-image4.png" alt="client"></a>
                            <a href="#">
                                <img src="images/client-image5.png" alt="client"></a>
                        </div>
                    </div>
                    <!--image-holder-->
                </div>
            </div>
        </div>
    </section>

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
                                                <button type="button" class="add-to-cart" data-product-tile="add-to-cart">
                                                    Add to
											Cart</button>
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
        SelectCommand="SELECT top 4 * FROM [Sach] ORDER BY [Ngaycapnhat] DESC"></asp:SqlDataSource>
</asp:Content>
