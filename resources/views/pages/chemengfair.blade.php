@extends('layouts.default')
@section('content')

<body>
    <div class="latar-lihat-berita container-fluid">
        <div class="article container-fluid">
            <div class="row">
                @foreach ($chemeng as $i)
                <div class="col-md-4 jarak">
                    <a href="chemengfair/{{$i -> id_chemeng}}">
                            <div class="module text-center">
                                <i class="fa fa-briefcase color1 ot-circle">
                                </i>
                                <p>{{$i -> nama_chemeng}}</p>
                            </div>
                        </a>
                    </div>
                @endforeach
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
