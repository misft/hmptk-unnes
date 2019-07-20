<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class MainController extends Controller
{
    public function lihatberita(){
        return view('pages.lihat_berita');
    }
    public function article(){
        return view('pages.article');
    }
    public function chemengfair(){
        return view('pages.chemengfair');
    }
    public function alumni(){
        return view('pages.alumni');
    }
    public function aboutus(){
        return view('pages.aboutus');
    }
    public function kontak(){
        return view('pages.kontak');
    }
    public function departemen(){
        return view('pages.departemen');
    }
    
    public function postAlumni(Request $req) {
        DB::table('alumni')->insert([
            'nama_lengkap' => $req -> nama,
            'email' => $req -> email,
            'alamat_sekarang' => $req -> alamat_rumah,
            'nomer_telepon' => $req -> nomor,
            'alamat_perusahaan' => $req -> alamat_bekerja,
            'jenjang' => $req -> jenjang
        ]);
        return redirect()->back();
    }
    public function postPesan(Request $req) {
        DB::table('pesan_pengirim')->insert([
            'nama_pengirim' => $req -> nama,
            'email_pengirim' => $req -> email,
            'isi_pesan' => $req -> pesan
        ]);

        return redirect()->back();
    }
}
