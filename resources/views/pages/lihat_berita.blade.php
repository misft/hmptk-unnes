@extends('layouts.default')
@section('content')
<body>
    <section>
        <div class="latar-lihat-berita container-fluid">
            <div class="row">
                <div class="lihat-berita container">
                    @foreach ($index as $i)
                    <div class="img-lihat text-center">
                        <a href="">
                            <img class="img-lihat-berita" src="{{asset($i -> gambar)}}" alt="">
                        </a>
                    </div>
                    <div class="isi-berita">
                        <h1>{{$i -> judul}}</h1>
                        <p>{{$i -> tanggal_berita}}</p>
                        <p style="text-align: justify; overflow: hidden">{{strip_tags($i -> isi)}}</p>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </section>
</body>
@stop