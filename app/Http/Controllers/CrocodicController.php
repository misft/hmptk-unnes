<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;

use App\pegawai;
use File;


class CrocodicController extends Controller
{
    public function home(){
        $pegawai = Pegawai::all();
        return view('pages.home', ['pegawai' => $pegawai]);
    }
    public function tambah(){
        return view('pages.tambah');
    }
    public function store(Request $request)
    {
        $this->validate($request,[
            'nama' => 'required',
            'alamat' => 'required',
            // 'foto' => 'required|file|image|mimes:jpeg,png,jpg|max:2048',
            'foto' => 'required'
            
        ]);
        $file = $request->file('foto');
        $nama_file = time()."_".$file->getClientOriginalName();
        $tujuan_upload = 'data_file';
        $file->move($tujuan_upload,$nama_file);

        Pegawai::create([
            'nama' => $request->nama,
            'alamat' => $request->alamat,
            'foto' => $nama_file,
        ]);
        return redirect('/')->with('status', 'Data Berhasil Ditambahkan!');
    }
    public function edit($id)
    {
        $pegawai = Pegawai::find($id);
        return view('pages.edit', ['pegawai' => $pegawai]);
    }
    public function editfoto($id)
    {
        $pegawai = pegawai::find($id);
        return view('pages.editfoto', ['pegawai' => $pegawai]);
    }
    public function update($id, Request $request)
    {
        $this->validate($request,[
            'nama' => 'required',
            'alamat' => 'required'
        ]);
        $pegawai = Pegawai::find($id);
        $pegawai->nama = $request->nama;
        $pegawai->alamat = $request->alamat;
        $pegawai->save();
        return redirect('/');
    }
    public function updatefoto($id, Request $request)
    {
        $this->validate($request,[
            'foto' => 'required|file|image|mimes:jpeg,png,jpg|max:2048'
        ]);

        $file = $request->file('foto');
        $nama_file = time()."_".$file->getClientOriginalName();
        $tujuan_upload = 'data_file';
        $file->move($tujuan_upload,$nama_file);
        $pegawai = pegawai::find($id);
        $pegawai->foto = $nama_file;
        $pegawai->save();
        return redirect('/')->with('status', 'Data Berhasil Diupdate!');
    }
    public function delete($id)
    {
        $pegawai = Pegawai::find($id);
        $pegawai->delete();
        File::delete('data_file/'.$pegawai->foto);
        pegawai::where('id',$id)->delete();
        return redirect('/');
    }
}
