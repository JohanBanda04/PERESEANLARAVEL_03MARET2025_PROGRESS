<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class DashboardPereseanController extends Controller
{
    public function index()
    {
        $hariini = date('Y-m-d');
        $bulanini = date('m') * 1;
        $tahunini = date('Y');
        $nik = Auth::guard('karyawan')->user()->nik;
        $presensihariini = DB::table('presensi')->where('nik', $nik)->where('tgl_presensi', $hariini)->first();
        $historibulanini = DB::table('presensi')
            ->where('nik', $nik)
            ->whereRaw('MONTH(tgl_presensi)="' . $bulanini . '"')
            ->whereRaw('YEAR(tgl_presensi)="' . $tahunini . '"')
            ->orderBy('tgl_presensi')
            ->get();

        $rekappresensi = DB::table('presensi')
            ->selectRaw('COUNT(nik) as jmlhadir, SUM(IF(jam_in > "07:00:00",1,0)) as jmlterlambat')
            ->where('nik', $nik)
            ->whereRaw('MONTH(tgl_presensi)="' . $bulanini . '"')
            ->whereRaw('YEAR(tgl_presensi)="' . $tahunini . '"')
            ->first();

        $leaderboard = DB::table('presensi')
            ->join('karyawan', 'presensi.nik', '=', 'karyawan.nik')
            ->where('tgl_presensi', $hariini)
            ->orderBy('jam_in')
            ->get();

        //dd($rekappresensi);
        $namabulan = [
            "",
            "Januari",
            "Februari",
            "Maret",
            "April",
            "Mei",
            "Juni",
            "Juli",
            "Agustus",
            "September",
            "Oktober",
            "November",
            "Desember",
        ];

        $rekapizin = DB::table('pengajuan_izin')
            ->selectRaw('SUM(IF(status="i",1,0)) as jmlizin,SUM(IF(status="s",1,0)) as jmlsakit')
            ->where('nik', $nik)
            ->whereRaw('MONTH(tgl_izin)="' . $bulanini . '"')
            ->whereRaw('YEAR(tgl_izin)="' . $tahunini . '"')
            ->where('status_approved', 1)
            ->first();
        //dd($namabulan[$bulanini]);

        //dd($historibulanini);
        return view('dashboard.dashboard', compact('presensihariini',
            'historibulanini', 'namabulan',
            'bulanini', 'tahunini', 'rekappresensi',
            'leaderboard', 'rekapizin'));
    }

    public function dashboardadmin()
    {
        $hariini = date('Y-m-d');
        $rekappresensi = DB::table('presensi')
            ->selectRaw('COUNT(nik) as jmlhadir, SUM(IF(jam_in > "07:00:00",1,0)) as jmlterlambat')
            ->where('tgl_presensi', $hariini)
            ->first();

        $rekapizin = DB::table('pengajuan_izin')
            ->selectRaw('SUM(IF(status="i",1,0)) as jmlizin,SUM(IF(status="s",1,0)) as jmlsakit')
            ->where('tgl_izin', $hariini)
            ->where('status_approved', 1)
            ->first();
        return view('dashboard.dashboardadmin', compact('rekappresensi', 'rekapizin'));
    }

    public function dashboardperesean(Request $request)
    {

        //dd($request);
        //dd(auth()->user()->level);
        //echo "ini dashboard broyy"; die;
        //$all_pereseanuser = DB::table('tbl_user')->get();

        if (auth()->user()->level == "superadmin") {
            //echo "<pre>"; print_r($all_pereseanuser); die;
            return view('dashboard_peresean.dashboardperesean');
        } else if (auth()->user()->level == "perancang") {

        } else if (auth()->user()->level == "kasub_perancang") {

        } else if (auth()->user()->level == "pemda") {

        } else if (auth()->user()->level == "guest") {

        } else if (auth()->user()->level == "disable") {

        } else if (auth()->user()->level == "pelaksana") {

        } else if (auth()->user()->level == "humas") {

        }

        die;

        if (auth()->user()->roles == 'superadmin') {
            //echo "ini dashboard superadmin broyyy"; die;
            return view('dashboard_satker.dashboardsatker', compact('realisasi_publikasi_total_angka', 'zona_satker_list_ii_angka', 'satker'
                , 'dtBerita', 'dtKonfig', 'queryBeritaGrafikJumlah', 'queryBeritaGrafikKode', 'zona_satker_list_ii',
                'realisasi_publikasi_total', 'total', 'tgl_dari_default', 'tgl_sampai_default'));
        } else if (auth()->user()->roles == 'humas_kanwil') {
            //echo "laman dashboard LAST KANWIL broyyy"; die;
            //echo $data_zonaAll_Media->count(); die;
            if ($data_zonaAll_Media->count() <= 0) {
                $zona_media_list_ii = [];
                array_push($zona_media_list_ii, "No Media Exists");
            }
            return view('dashboard_satker.dashboardsatker_kanwil_nonadmin', compact('realisasi_publikasi_total_angka',
                'zona_satker_list_ii_angka', 'satker', 'dtBerita', 'dtKonfig', 'queryBeritaGrafikJumlah', 'queryBeritaGrafikKode', 'zona_satker_list_ii',
                'realisasi_publikasi_total', 'total', 'tgl_dari_default', 'tgl_sampai_default',
                'zona_publikasi_list_ii_kanwil', 'realisasi_publikasi_kanwil_total', 'total_kanwil'
                , 'completeNameRole', 'zona_publikasi_list_ii_kanwil_angka', 'realisasi_publikasi_kanwil_total_angka'
                , 'total_kanwil_angka', 'zona_media_list_ii', 'realisasi_publikasi_total_linkmedia'));
        } else if (auth()->user()->roles == 'humas_satker') {
            /*kondisi dibawah sebagai filter jika sebuah satker belum memiliki mediapartner*/
            if ($data_zonaAll_Media->count() <= 0) {
                $zona_media_list_ii = [];
                array_push($zona_media_list_ii, "No Media Exists");
            }
            return view('dashboard_satker.dashboardsatker_nonadmin', compact('satker', 'zona_satker_list_ii_angka',
                'zona_media_list_ii', 'realisasi_publikasi_kanwil_total_angka',
                'zona_publikasi_list_ii_kanwil_angka', 'realisasi_publikasi_total_angka',
                'dtBerita', 'dtKonfig', 'tgl_dari_default', 'tgl_sampai_default', 'realisasi_publikasi_total',
                'realisasi_publikasi_total_linkmedia', 'total', 'zona_satker_list_ii', 'realisasi_publikasi_kanwil_total', 'total_kanwil',
                'zona_publikasi_list_ii_kanwil', 'completeNameRole', 'zona_satker_list_ii_persen',
                'realisasi_publikasi_total_persen', 'total_persen'));
        }
    }
}
