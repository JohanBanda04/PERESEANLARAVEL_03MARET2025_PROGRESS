<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>A4</title>

    <!-- Normalize or reset CSS with your favorite library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/7.0.0/normalize.min.css">

    <!-- Load paper.css for happy printing -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paper-css/0.4.1/paper.css">

    <!-- Set page size here: A5, A4 or A3 -->
    <!-- Set also "landscape" if you need -->
    <style>
        .tdcolor {
            background: #cccaca;
            font-weight: bold;
            font-size: 20px;
        }
    </style>
    <style>@page {
            size: A4 ;
        }

        #title {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 18px;
            font-weight: bold;
        }

        .tabeldatakaryawan {
            margin-top: 40px;
        }

        .tabeldatakaryawan tr td {
            padding: 5px;
        }

        .tabelpresensi {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }

        .tabelpresensi tr th {
            border: 1px solid #000000;
            padding: 8px;
            background: #cccaca;
        }

        .tabelpresensi tr td {
            border: 1px solid #000000;
            padding: 5px;
            font-size: 12px;
        }

        .foto {
            width: 40px;
            height: 30px;
        }
    </style>
</head>

<!-- Set "A5", "A4" or "A3" for class name -->
<!-- Set also "landscape" if you need -->
<body class="A4 ">


<!-- Each sheet element should have the class "sheet" -->
<!-- "padding-**mm" is optional: you can set 10, 15, 20 or 25 -->
<section class="sheet padding-10mm">

    <!-- Write HTML just like a web page -->
    <table style="width: 100%">
        <tr>

            <td colspan="10">
                <span id="title">
                    <center>REKAPITULASI PUBLIKASI MEDIA LOKAL KEMENKUMHAM NTB</center>
                    <br>
                    <center>PERIODE {{ $tgl_dari }} {{ strtoupper($namabulan[$bulan_dari]) }} {{ $tahun_dari }}
                        s.d. {{ $tgl_sampai }} {{ strtoupper($namabulan[$bulan_sampai]) }} {{ $tahun_sampai }}</center>
                </span>
            </td>
        </tr>
    </table>
    <table class="tabeldatakaryawan">
        <tr>
            <td rowspan="">

            </td>
        </tr>


    </table>
    <table class="tabelpresensi">
        <tr>
            <th rowspan="1" style="width: 10px">No.</th>
            <th rowspan="1" colspan="2">Satuan Kerja</th>
            <th rowspan="1" colspan="7">Link Media Lokal</th>

        </tr>

        @php
            $total_medlokal_perberita_akhir= 0;
            $total_medlokal_perberita_akhirs = 0;
            $keep_datas = [];
        @endphp
        @foreach($satkers as $key=>$satker)
            @if($satker->roles !='superadmin' )
                @php
                    $beritas = DB::table('berita')->where('kode_satker', $satker->kode_satker)->get();
                @endphp
                @php
                    $total_medlokal_perberita = 0;
                @endphp
                @foreach($beritas as $id=>$berita)
                    @php
                        $link_medlokal_perberita = json_decode($berita->media_lokal);
                        $jml_ml = 0;
                        //$count_medlokal_perberita = count($link_medlokal_perberita);
                        //$total_medlokal_perberita += $count_medlokal_perberita;
                    @endphp
                    @foreach($link_medlokal_perberita as $ml)
                        @if(strlen($ml)>10)
                            @php
                                $jml_ml +=1;
                            @endphp
                        @endif
                    @endforeach
                    @php
                        $count_medlokal_perberita = $jml_ml;
                        $total_medlokal_perberita += $count_medlokal_perberita;
                    @endphp
                @endforeach
                @php
                    $total_medlokal_perberita_akhir +=$total_medlokal_perberita;
                @endphp
                <tr>
                    <td align="center">{{ $loop->iteration }}</td>
                    <td align="left" colspan="2">{{ $satker->name }}</td>
                    <td align="center" colspan="7">
                        {{--{{ $satker->kode_satker }} ({{ $dari }}) ({{ $sampai }})--}}
                        @php
                            $jumlah_linkvalid = 0;
                            $dtBeritas = DB::table('berita')
                                ->where('kode_satker',$satker->kode_satker)
                                ->whereBetween('tgl_input', [$dari, $sampai])->get();
                            $dtMedias = DB::table('mediapartner')
                                ->where('kode_satker_penjalin',$satker->kode_satker)
                                ->where('jenis_media','media_lokal')->get();

                            foreach ($dtMedias as $indMed=>$dtMed){
                                array_push($keep_datas,(object)[
                                    "kode_media"=>$dtMed->kode_media
                                ]);
                            }

                        foreach ($dtBeritas as $index=>$dtBerita){
                            foreach (json_decode($dtBerita->media_lokal) as $indx=>$dtx){
                               $explode = explode('|||',$dtx);

                               if(count($explode)==3){
                                    $kode_media = $explode[0];
                                     $media_tersedia = array_filter($keep_datas,function($item) use ($kode_media){
                                        return ($item->kode_media==$kode_media);
                                    });

                                    if(count($media_tersedia) > 0){
                                        $jumlah_linkvalid +=1;
                                    } else if(count($media_tersedia) <= 0){
                                        $jumlah_linkvalid +=0;
                                    }
                               } else if(count($explode)<3){
                                    $jumlah_linkvalid +=0;
                                    $kode_media = $explode[0];
                                    $media_tersedia = array_filter($keep_datas,function($item) use ($kode_media){
                                        return ($item->kode_media==$kode_media);
                                    });

                                    if(count($media_tersedia) > 0){
                                        $jumlah_linkvalid +=1;
                                    } else if(count($media_tersedia) <= 0){
                                        $jumlah_linkvalid +=0;
                                    }
                               }
                            }
                        }
                        @endphp
                        {{ $jumlah_linkvalid }}
                        @php
                            $total_medlokal_perberita_akhirs += $jumlah_linkvalid;
                        @endphp
                    </td>
                </tr>
            @endif
        @endforeach
        <tr style="background: rgba(205,178,184,0.43); font-weight: bold">
            <td colspan="3" align="center">Jumlah</td>
            <td colspan="7" align="center">{{ $total_medlokal_perberita_akhirs }}</td>
        </tr>


    </table>
    <table width="100%" style="margin-top: 100px">
        <tr style="color: white;">
            <td colspan="2" style="text-align: right;">Mataram, {{ date('d-m-Y') }}</td>
        </tr>
        <tr>
            <td style="color: white;text-align: center; vertical-align: bottom" height="100px">
                <u>Qiana Kalila</u><br>
                <i><b>HRD Manager</b></i>
            </td>
            <td style="color: white;text-align: center; vertical-align: bottom">
                <u>Dafa</u><br>
                <i><b>Direktur</b></i>
            </td>
        </tr>
    </table>
</section>

</body>

</html>