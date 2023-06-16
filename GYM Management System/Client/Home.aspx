<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Client/client.Master" CodeBehind="Home.aspx.vb" Inherits="GYM_Management_System.Home3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bodymain w-100 d-flex position-relative">
        <img src="/Img/webmain.jpg" class="w-100" />
        <div class="w-100 h-100 d-flex position-absolute transit-in justify-content-end">
            <a href="/Client/Contact.aspx" class="text-white fs-1 my-auto mx-4">JOIN US NOW</a>
        </div>
    </div>
    <div class="container gallary d-flex my-5 p-0">
        <iframe width="560" height="315" src="https://www.youtube.com/embed/r6A_27h-pFA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        <span class="fs-1 m-auto text-dark text-decoration-none "><b>Take a virtual tour</b></span>
    </div>

    <div class="container my-5">
        <div class="row">
            <img src="/Img/3776854.jpg" class="col col-auto h-300" />
            <div class="col col-md my-auto">
                <h2 class=""><b>Stay Fit, Stay Healthy</b></h2>
                <p>
                    We provide various fitness workout programs to loose weight and maintain fitness.
                    Our professionals provide you training that is suitable to you in the best way.
                </p>
            </div>
        </div>
    </div>

    <div class="container my-5 ">
        <div class="row">
            <div class="col my-auto">
                <h2 class=""><b>No Pain, No Gain</b></h2>
                <p>
                    With our best in class weight lifting equipments you can go beyond your limits.
                    Build muscular body with guidence of our trainers.
                </p>
                <a href="/Client/Equipment.aspx" class="btn btn-outline-dark rounded-0">View Equipments</a>
            </div>
            <img src="/Img/3776854-2.jpg" class="col col-auto h-300" />
        </div>
    </div>

    <div class="container plans d-flex my-5 h-300">
        <div class="my-auto d-flex flex-column w-100">
            <span  class="fs-1 mx-auto text-dark text-decoration-none "><b>Membership starting from as low as 750/Month*</b></span>
            <br />
            <div class="mx-auto">
                <a href="Client/Pricing.aspx" class="btn btn-outline-dark rounded-0 btn-tr">Explore Plans</a>
            </div>
        </div>
    </div>

    <div class="container plans-3 d-flex my-5 h-300">
        <a href="/Client/Receipt.aspx" class="fs-1 m-auto text-dark text-decoration-none "><b>Get your payment receipt  > > ></b></a>
    </div>

</asp:Content>
