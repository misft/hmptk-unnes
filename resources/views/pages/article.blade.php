@extends('layouts.default')
@section('content')
<body>
    <div class="latar-lihat-berita container-fluid">
        <div class="article container-fluid">
            <div class="row">
                <div class="col-md-3 jarak">
                    <div class="module text-center">
                        <i class="fa fa-briefcase color1 ot-circle">
                        </i>
                        <br>
                        <p>
                            PRESS RELEASE
                        </p>
                    </div>
                </div>
                <div class="col-md-3 jarak">
                    <div class="module text-center">
                        <i class="fa fa-briefcase color1 ot-circle">
                        </i>
                        <br>
                        <p>
                            PRESS RELEASE
                        </p>
                    </div>
                </div>
                <div class="col-md-3 jarak">
                    <div class="module text-center">
                        <i class="fa fa-briefcase color1 ot-circle">
                        </i>
                        <br>
                        <p>
                            PRESS RELEASE
                        </p>
                    </div>
                </div>
                <div class="col-md-3 jarak">
                    <div class="module text-center">
                        <i class="fa fa-briefcase color1 ot-circle">
                        </i>
                        <br>
                        <p>
                            PRESS RELEASE
                        </p>
                    </div>
                </div>
                <div class="col-md-3 jarak">
                    <div class="module text-center">
                        <i class="fa fa-briefcase color1 ot-circle">
                        </i>
                        <br>
                        <p>
                            PRESS RELEASE
                        </p>
                    </div>
                </div>
                <div class="col-md-3 jarak">
                    <div class="module text-center">
                        <i class="fa fa-briefcase color1 ot-circle">
                        </i>
                        <br>
                        <p>
                            PRESS RELEASE
                        </p>
                    </div>
                </div>
                <div class="col-md-3 jarak">
                    <div class="module text-center">
                        <i class="fa fa-briefcase color1 ot-circle">
                        </i>
                        <br>
                        <p>
                            PRESS RELEASE
                        </p>
                    </div>
                </div>
                <div class="col-md-3 jarak">
                    <div class="module text-center">
                        <i class="fa fa-briefcase color1 ot-circle">
                        </i>
                        <br>
                        <p>
                            PRESS RELEASE
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
    @stop
