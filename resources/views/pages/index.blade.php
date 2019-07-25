@extends('layouts.default')
@section('content')
<body>
    
    <section class="slide">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                @foreach ($slide as $x=>$i)
                @if ($x == 0)
                    <div class="carousel-item active">
                        <img class="d-block img-fluid w-100" style="background-size:cover;" src="{{asset($i -> slide_gambar)}}" alt="First slide">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>{{$i -> main_judul}}</h5>
                            <p>{{$i -> sub_judul}}</p>
                        </div>
                    </div>
                @else
                    <div class="carousel-item">
                        <img class="d-block w-100 img-fluid" src="{{$i -> slide_gambar}}" alt="Second slide">
                    </div>
                @endif
                @endforeach
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </section>
    <section class="isi">
        <div class="container">
            <div class="row">
                <div class="offset-sm-4 col-sm-4 text-center">
                        <h2 class="main-page-title">{{$berita[0] -> kategori}}</h2>
                </div>
            </div>
        </div>
        <section class="isi-berita">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8" style="text-align: justify">
                        @foreach ($index as $i)
                        <article>
                            <div class="contoh-berita">
                                <div class="foto-berita">
                                    <a href="">
                                        <img class="img-berita" src="{{asset($i -> gambar)}}" alt="">
                                    </a>
                                </div>
                                <div class="tampilan-berita">
                                    <div class="p-berita">
                                        <a href="">
                                            <h2><a href="berita/{{$i -> id}}">{{$i -> judul}}</a></h2>
                                        </a>
                                        <p>{{$i -> tanggal}}</p>
                                        <p>
                                            {{str_limit($i -> isi, 200)}}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </article>

                        @endforeach
                        {{ $index->links() }}
                    </div>
                    <div class="col-sm-4">
                        <h2 class="text-center main-page-title">VIDEO HMPTK</h2>
                        @foreach ($video as $i)
                        <iframe width="100%" height="240" src="{{$i -> link_video}}" frameborder="0"></iframe>

                        @endforeach

                        <h2 class="text-center main-page-title">PENGUMUMAN</h2>
                        @foreach ($subberita as $i)
                        <article>
                            <a href="subberita/{{$i -> link_sub}}">
                                <h4>{{$i -> judul_sub}}</h4>
                            </a>
                            <p>{{$i -> subjudul_sub}}</p>
                        </article>
                        @endforeach
                    </div>
                </div>
            </div>
        </section>
    </section>
    <section class="footer">
        <section class="kontak">
            <div class="container">
                <div class="row">
                    <div class="text-center offset-sm-4 col-sm-4">
                        <h1>HUBUNGI KAMI</h1>
                        <form action="kirim_pesan" method="post">
                            {{ csrf_field() }}
                            <div class="form-group">
                                <input type="text" class="form-control" name="nama" id="nama" placeholder="Nama">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="email" id="email" placeholder="E-mail">
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" name="pesan" id="pesan" rows="5"
                                    placeholder="Isi Pesan"></textarea>
                            </div>
                            <div class="form-group">
                                <input class="btn btn-primary" type="submit" value="Submit">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
</body>
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
