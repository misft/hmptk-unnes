<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PostController extends Controller
{
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
