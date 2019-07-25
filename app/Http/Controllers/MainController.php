<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class MainController extends Controller
{
    public function lihatberita(){
        return view('pages.lihat_berita');
    }

    public function cariBerita(Request $req) {
        $hasil = DB::table('berita')->where('isi', 'like', '%'.$req->search.'%')->get();
        $subberita = DB::table('subberita')->orderBy('id_subberita', 'desc')->get();
        $video = DB::table('video')->orderBy('id_video', 'desc')->get();
        $slide = DB::table('slide')->get();
        return view('pages.index', ['index'=>$hasil, 'subberita'=>$subberita, 
						'video'=>$video, 'slide'=>$slide]);
    }
    public function article(){
        $article = DB::table('kategori')->get();

        return view('pages.article', ['article'=>$article]);
    }

    public function pageArticle($id) {
        $id = DB::table('kategori')->where('id_kategori', $id)->first(); 
        $berita = DB::table('berita')->where('kategori', $id->id_kategori)->paginate(5);
        $video = DB::table('video')->orderBy('id_video', 'desc')->get();
        $subberita = DB::table('subberita')->orderBy('id_subberita', 'desc')->get();
        if ($id == 8) {
            $slide = DB::table('slide_beasiswa')->get();
        }
        if ($id == 9) {
            $slide = DB::table('slide_semnas')->get();
        }
        if ($id == 10) {
            $slide = DB::table('slide')->get();
        }
        if ($id == 11) {
            $slide = DB::table('slide_event')->get();
        }
        if ($id == 12) {
            $slide = DB::table('slide_cesa')->get();
        }
        if ($id == 13) {
            $slide = DB::table('slide_iso')->get(); 
        }
        if ($id == 14) {
            $slide = DB::table('slide_scc')->get();
        }
        if ($id == 15) {
            $slide = DB::table('slide_hrd')->get();
        }
        if ($id == 16) {
            $slide = DB::table('slide_prc')->get();
        }
        $slide = DB::table('slide')->get();
        return view('pages.index', ['index'=>$berita, 'slide'=>$slide, 'video'=>$video, 'subberita'=>$subberita]);


    }
    public function chemengfair(){
        $chemeng = DB::table('chemengfair')->get();

        return view('pages.chemengfair', ['chemeng'=>$chemeng]);
    }

    public function pageChemengfair($id) {
        $id = DB::table('chemengfair')->where('id_chemeng', $id)->first();
        $berita = DB::table('berita')->where('kategori', $id->nama_chemeng)->paginate(5);
        $video = DB::table('video')->orderBy('id_video', 'desc')->get();
        $subberita = DB::table('subberita')->orderBy('id_subberita', 'desc')->get();
        if ($id == 1) {
            $slide = DB::table('slide_semnas')->get();
        }
        if ($id == 2) {
            $slide = DB::table('slide_iso')->get();
        }
        if ($id == 3) {
            $slide = DB::table('slide_cesa')->get();
        }
        if ($id == 4) {
            $slide = DB::table('slide_s2c')->get();
        }
        if ($id == 5) {
            $slide = DB::table('slide_ception')->get();
        }
        if ($id == 6) {
            $slide = DB::table('slide_ma')->get();
        }
        return view('pages.index', ['index'=>$berita, 'slide'=>$slide, 'video'=>$video, 'subberita'=>$subberita]);
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
        $departemen = DB::table('departemen')->get();
        
        return view('pages.departemen', ['departemen'=>$departemen]);
    }

    public function pageDepartemen($id) {
        $id = DB::table('departemen')->where('id_dept', $id)->first();
        $berita = DB::table('berita')->where('kategori', $id->nama_dept)->paginate(5);
        $video = DB::table('video')->orderBy('id_video', 'desc')->get();
        $subberita = DB::table('subberita')->orderBy('id_subberita', 'desc')->get();

        if ($id == 1) {
            $slide = DB::table('slide_ga')->get();
        }
        if ($id == 2) {
            $slide = DB::table('slide_hrd')->get();
        }
        if ($id == 3) {
            $slide = DB::table('slide_prc')->get();
        }
        if ($id == 4) {
            $slide = DB::table('slide_sed')->get();
        }
        if ($id == 5) {
            $slide = DB::table('slide_rnt')->get();
        }
        if ($id == 6) {
            $slide = DB::table('slide_std')->get();
        }
        if ($id == 7) {
            $slide = DB::table('slide_socdev')->get();
        }
        if ($id == 8) {
            $slide = DB::table('slide_techno')->get();
        }

        return view('pages.index', ['index'=>$berita, 'slide'=>$slide, 'video'=>$video, 'subberita'=>$subberita]);
    }
    
    public function kabinet() {
        return view('pages.menu_kabinet');
    }

    public function pageKabinet($name) {
        $name = 'Inovasi';
        return view('pages.kabinet.kabinet');
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
