<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class AuthPereseanController extends Controller
{
    public function proseslogin(Request $request)
    {
        //dd($request->nik." - ".$request->password);
        $pass = Hash::make($request->password);
        //dd($pass);

        if (Auth::guard('karyawan')->attempt(['nik' => $request->nik, 'password' => $request->password])) {
            return redirect('/dashboard');
        } else {
            return redirect('/')->with(['warning' => 'Nik / Password Salah!']);
        }
    }

    public function proseslogout()
    {
        if (Auth::guard('karyawan')->check()) {
            Auth::guard('karyawan')->logout();
            return redirect('/');
        }


    }

    public function proseslogoutadmin()
    {
        if (Auth::guard('user')->check()) {
            Auth::guard('user')->logout();
            return redirect('/panel');
        }

    }

    public function logoutperesean()
    {
        if (Auth::guard('tbl_user')->check()) {
            Auth::guard('tbl_user')->logout();
            return redirect('/');
        }

    }


    public function prosesloginadmin(Request $request)
    {
        $pass = Hash::make($request->password);
        //dd($pass);
        //dd($request->email." - ".$request->password);
        if (Auth::guard('user')->attempt(
            [
                'email' => $request->email, 'password' => $request->password
            ])) {
            return redirect('/panel/dashboardadmin');
        } else {
            return redirect('/panel')->with(['warning' => 'Username atau Password Salah!']);
        }
    }


    public function prosesloginperesean(Request $request)
    {
        //dd($request);
        $request->validate([
            'kode_uname' => 'required',
            'password' => 'required',
            'pilih_tahun' => 'required',
            'g-recaptcha-response' => 'required|captcha'
        ], [
            'kode_uname.required' => 'Anda Belum Mengisi Username',
            'password.required' => 'Anda Belum Mengisi Password',
            'pilih_tahun.required' => 'Anda Belum Memilih Tahun',
            'g-recaptcha-response.required' => 'Verifikasi Captcha ',
        ]);

        //return "testing";
        $pass = Hash::make($request->password);

        $get_level = DB::table('tbl_user')->where('kode_pereseanuser', $request->kode_uname)->first();
        //echo $get_level->count();
        //die;
        //dd($get_level);
        //return "vroh!";
        $userlevel = $get_level->level;
        //dd($userlevel);
        if (Auth::guard('tbl_user')->attempt([
            'kode_pereseanuser' => $request->kode_uname,
            'password' => $request->password
        ])
        ) {
            //return "ditemukan";
            return redirect()->route('dashboardperesean');
        } else {
            //return "tidak ditemukan";
            //die;
            return redirect()->route('loginperesean')->with(['warning' => 'Kode User / Password Tidak Ditemukan']);
        }
    }
}
