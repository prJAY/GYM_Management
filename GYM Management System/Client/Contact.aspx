<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Client/client.Master" CodeBehind="Contact.aspx.vb" Inherits="GYM_Management_System.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function submitaction() {
            alert('Request received. We will conact you soon.');
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container gallary d-flex my-5 h-200">
        <span class="fs-1 m-auto text-dark text-decoration-none "><b>Get in touch</b></span>
    </div>

    <div class="container my-5 border border-dark p-5 ">
        <div class="row g-3">
            <div class="col">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control rounded-0 " id="name" placeholder="Enter your name">
            </div>
            <div class="col">
                <label for="no" class="form-label">Contact No</label>
                <input type="number" class="form-control rounded-0 " id="no" placeholder="Enter your contact no">
            </div>
            <div class="col">
                <label for="goal" class="form-label">Objective</label>
                <select class="form-select rounded-0" id="goal">
                    <option>Choose one</option>
                    <option>Weight Loss</option>
                    <option>Weight Gain</option>
                    <option>Maintain Fitness</option>
                </select>
            </div>
            <div class="col col-auto mt-auto">
                <button class="btn btn-outline-dark rounded-0" onclick="submitaction()">Submit</button>
            </div>
        </div>
    </div>

    <div class="container plans d-flex my-5 h-200">
        <div class="my-auto d-flex flex-column w-100">
            <span class="fs-1 mx-auto text-dark text-decoration-none "><b>Take a visit</b></span>
        </div>
    </div>


    <div class="container d-flex">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14739.45967797348!2d72.9361136621216!3d22.546732335955262!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e4e7373753c09%3A0x5e2f33f6f152f8ae!2sSardar%20Patel%20University!5e0!3m2!1sen!2sin!4v1635527522081!5m2!1sen!2sin" width="600" class="w-50" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        <div class="w-50 p-4">
            <h1><b>S P University</b></h1>
            <h3>Mota Bazar,</h3>
            <h3>Vallabh Vidhyanagar,</h3>
            <h3>Anand, Gujarat 388120</h3>
            <br />
            <h5>
                Contact No. + 91 12345 67888 <br />
                Contact No. + 91 12345 67899
            </h5>
            <a href="tel:1234567888" class="btn btn-outline-dark rounded-0 ">Call Now</a>
            <br />
            <br />
            <h5>
                <a href="mailto:info@infinityfitness.com">info@infinityfitness.com</a>
            </h5>

        </div>
    </div>
    <br />
    <br />

</asp:Content>
