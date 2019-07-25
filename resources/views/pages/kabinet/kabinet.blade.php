@extends('layouts.default')
@section('content')
<style>
    .jarak-about {
        margin-top: 66px;
        padding-top: 60px;
        padding-bottom: 60px;
    }
    @media screen and (max-width: 700px) {
        .jarak-about {
            margin-top: 50px;
        }
    }
    .about {
        background-color: #EFEFF1;
        padding: 30px;
        border: 1px solid #B3B3BB;
        border-radius: 10px;
    }
    .about p {
        text-align: justify;
    }
    .about h2 {
        font-size: 50px;
        font-weight: 900;
        color: #B3B3BB;
    }
    .img-about {
        width: 100%;
        max-width: 500px;
        display: block;
        margin-left: auto;
        margin-right: auto;
    }
    .border-bawah {
        border-bottom: solid 1px #B3B3BB;
    }
    .peta {
        border: solid 1px #B3B3BB;
    }
    .hr-about {
        border: 2px solid #B3B3BB;
        width: 10%;
    }
    .background-image {
        background: linear-gradient(rgba(255, 255, 255, 0.90), rgb(255, 255, 255, 0.90)),
            url(../images/texture.jpg) repeat 0 0 / 12.5% auto !important;
    }
    .isi-about {
        font-size: 18px;
    }
    .mapouter {
        position: relative;
        text-align: right;
        height: 500px;
        width: 100%;
    }
    .gmap_canvas {
        overflow: hidden;
        background: none !important;
        height: 500px;
        width: 100%;
    }
    .kabinet-logo img {
        width: 100%;
        height: auto;
        /* max-height: 500px; */
        max-width: 500px;
    }
    .kabinet-sto img {
        width: 100%;
        height: auto;
        /* max-height: 600px; */
        max-width: 500px;
    }
    .kabinet-sto p {
        line-height: 2;
        font-size: 18px;
    }
    .kabinet-sto h3 {
        text-align: left;
        border-bottom: solid 1px #1295C9;
    }
    .kabinet-logo p {
        text-align: justify;
        font-size: 18px;
    }
</style>
<section>
    <div class="container-fluid background-image">
        <div class="jarak-about">
            <div class="container about">
                <h2 class="text-center mb-2">KABINET INOVASI</h2>
                <hr class="hr-about mb-5">
                <div class="peta text-center mb-3">
                    <h3 class="main-page-title border-bawah">LOGO</h3>
                    <div class="container kabinet-logo">
                        <img src="../images/inovasi.png" alt="">
                        <p>Logo kabinet inovasi terdapat simbol obor yang melambangkan semangat dan tekad untuk
                            berkontribusi terhadap jurusan teknik kimia, fakultas teknik maupun universitas negeri
                            semarang. Di dalam simbol api itu sendiri terdapat 3corak yg melambangkan tri dharma
                            perguruan tinggi dengan tunas di tengahnya yg mengartikan sesuatu yang baru sesuai dengan
                            nama kabinetnya yaitu inovasi.</p>
                    </div>
                </div>
                <div class="peta text-center mb-3">
                    <h3 class="main-page-title border-bawah">STRUKTUR ORGANISASI</h3>
                    <div class="container kabinet-sto">
                        <img src="../images/sto.jpg" alt="">
                        <div>
                            <h3 class="mt-5">GENERAL AFFAIR</h3>
                            <p>Ketua : Dio Bagus Pangestu <br>
                                Wakil ketua : Aditia Dwipawarman <br>
                                Bendahara : Miftakhul Hidayah & Fidyawati <br>
                                Sekretaris : Mira Melina & Ayu Nur Permadhini</p>
                        </div>
                        <div>
                            <h3 class="mt-5">Human Recource Development</h3>
                            <p>Ketua Departemen : <br>
                                Siti Fatimah <br><br>

                                Staff : <br>
                                Muh Fahrul Rahman Alim<br>
                                Miftahul Jannah<br>
                                Mafatikhul Biladudin <br>
                                Novitasari Andriani <br>
                                Adityo Nurcahyo <br>
                                Evin Fajri Irchamsyah <br>
                                Ismail Abdol Aziz <br>
                        </div>
                        <div>
                            <h3 class="mt-5">Public Relation and Relationship</h3>
                            <p>Ketua Departemen : <br>
                                Erika Wijayanti <br><br>

                                Staff : <br>
                                Nur Arif Majid <br>
                                Gita Angooro Putri <br>
                                Naufal Mudrik Mezaki <br>
                                Chandra Ikhlas Dewantara <br>
                                Arum Wahyu Febriani <br>
                                Nurul Kumarany Arnan <br>
                        </div>
                        <div>
                            <h3 class="mt-5">Research and Technology</h3>
                            <p>Ketua Departemen : <br>
                                Waliyyudin Sammadikun <br><br>

                                Staff : <br>
                                Akhmad Sutrisno<br>
                                Dwi Nuryana<br>
                                Khoridatus Sulwa <br>
                                Yoshua Wira Putra Budiono <br>
                                Andre Dianata Hogi Kusuma <br>
                                Reissa Anggi Hapsari <br>
                        </div>
                        <div>
                            <h3 class="mt-5">Student Education and Development</h3>
                            <p>Ketua Departemen : <br>
                                Viona Widya Anugrahani <br><br>

                                Staff : <br>
                                Yola Antika<br>
                                Tohiran<br>
                                Chika Agnes Palupi <br>
                                Yulian Candra Purwana <br>
                                Laila Syafitri <br>
                        </div>
                        <div>
                            <h3 class="mt-5">Student Talent Development</h3>
                            <p>Ketua Departemen : <br>
                                Farida Dian Arianti <br><br>

                                Staff : <br>
                                Dian Widyaningsih<br>
                                Bernadetta Sisca Aprilia Purba<br>
                                Ridlo Wildani Alkham <br>
                                Andrew Herstyawan <br>
                                Jovian Triyana Putra <br>
                        </div>
                        <div>
                            <h3 class="mt-5">Social Development</h3>
                            <p>Ketua Departemen : <br>
                                Ragil Budiarto <br><br>

                                Staff : <br>
                                Tias Ardhiani<br>
                                Kuat Noviana<br>
                                Devinda Ramadhani <br>
                                Restu Kusumawardhani <br>
                                Ardi Nugroho <br>
                        </div>
                        <div>
                            <h3 class="mt-5">Social Development</h3>
                            <p>Ketua Departemen : <br>
                                Annisa Witri Sofiarani <br><br>

                                Staff : <br>
                                Annisa Itsnain Nurusyifa<br>
                                Rifan Fauzi<br>
                                Nur Kholifah Chandra Mulyani <br>
                                Pipit Rizky Nurjanah <br>
                                Habib Faisal Yahya <br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</section>
<script>
    $(".nav-link").each(function () {
        if ((window.location.pathname.indexOf($(this).attr('href'))) > -1) {
            $(this).addClass('activeMenuItem');
        }
    });
    function switchdropdown() {
        if ($("#bs-example-navbar-collapse-1").is(':hidden')) {
            $("#bs-example-navbar-collapse-2").css("visibility", "visible");
        }
        if ($("#bs-example-navbar-collapse-2").is(':visible')) {
            $("#bs-example-navbar-collapse-2").css("visibility", "hidden");
        }
    }
    $(document).ready(function () {
        $('#bs-example-navbar-collapse-2').css("visibility", "hidden");
    });
</script>
<script>
    function myMap() {
        var mapProp = {
            center: new google.maps.LatLng(51.508742, -0.120850),
            zoom: 5,
        };
        var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
    }
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY&callback=myMap"></script>
@stop