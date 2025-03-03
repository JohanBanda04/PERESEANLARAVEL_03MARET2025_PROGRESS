@extends('layouts.admin.tabler')

@section('content')
    <div class="page-header d-print-none">
        <div class="container-lg">
            <div class="row g-2 align-items-center">
                <div class="col">
                    <div class="page-pretitle">
                        <span>Edit Data Raperkada</span>
                    </div>
                    <h2 class="page-title">
                        <i style="font-weight: bold">{{  ucfirst(str_replace('_'," ",$data_raperkada->status))  }}</i>
                    </h2>
                </div>

            </div>
        </div>
    </div>
    <div class="page-body">
        <div class="container-xl">
            <div class="row">
                <div class="card">
                    <div class="card-body">
                        <form action="{{ route('updateraperkada', $kode_pereseanuser) }}" method="post"
                              id="frmBeritaPereseanuser_edit"
                              name="frmBeritaPereseanuser_edit"
                              enctype="multipart/form-data">
                            @csrf
                            <div class="row">
                                @if(Session::get('success'))
                                    <div class="alert alert-success">
                                        {{ Session::get('success') }}
                                    </div>

                                @endif
                                @if(Session::get('warning'))
                                    <div class="alert alert-warning">
                                        {{ Session::get('warning') }}
                                    </div>

                                @endif
                                <div class="col-6">
                                    {{--<span>Kiri</span>--}}
                                    <div class="form-group">
                                        <label class="col-lg-11"> Nama Draft Raperkada <b id='wajib_isi'>*</b></label>

                                        <div class="col-lg-12 mt-2">
                                            <input type="hidden" name="kode_pereseanuser"
                                                   id="kode_pereseanuser" class="form-control"
                                                   value="{{ $kode_pereseanuser }}"
                                                   placeholder="Kode Peresean User">
                                            <input type="text" name="nama_draft_raperkada"
                                                   id="nama_draft_raperkada" class="form-control"
                                                   value="{{ $data_raperkada->nama_draft_permohonan }}"
                                                   placeholder="Nama Draft Raperkada.."
                                                   autofocus onfocus="this.value = this.value;">

                                        </div>
                                    </div>
                                    <div class="form-group mt-2">
                                        <label class="col-lg-11"> Jenis Dokumen <b id='wajib_isi'>*</b></label>

                                        <div class="col-lg-12 mt-2">
                                            <select readonly="readonly" class="form-control default-select2"
                                                    name="jenis_dokumen" id="jenis_dokumen" required>
                                                <option value="raperkada">Raperkada</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group mt-2">
                                        <label class="col-lg-12">Surat Permohonan Raperkada
                                            <small class="lh-1" style="color: #49a5ff"><i>.pdf .doc .docx (*wajib)</i>
                                            </small>
                                        </label>
                                        @php
                                            //$path_suratpermohonan_raperkada = Storage::url('uploads/permohonan_raperkada/'.$username_pemda_terkait."/".$data_raperkada->lamp_surat_permohonan);
                                        $path_suratpermohonan_raperkada = Storage::url('uploads/permohonan_raperkada/'.$username_pemda_terkait."/".$data_raperkada->lamp_surat_permohonan);
                                        @endphp
                                        <div class="col-lg-12 mt-2">

                                            <input id="id_draft_permohonan"
                                                   name="id_draft_permohonan"
                                                   type="hidden"
                                                   onchange=""
                                                   value="{{ $id_draft_permohonan }}"
                                                   class="form-control">
                                            <input id="surat_permohonan_raperkada"
                                                   name="surat_permohonan_raperkada"
                                                   type="file"
                                                   onchange="checkSelectedFile_unrequired(id)"
                                                   class="form-control">
                                            <div class="row mt-2">
                                                <div class="col-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                         viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                         stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                                         class="icon icon-tabler icons-tabler-outline icon-tabler-asterisk">
                                                        <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                                        <path d="M12 12l8 -4.5"/>
                                                        <path d="M12 12v9"/>
                                                        <path d="M12 12l-8 -4.5"/>
                                                        <path d="M12 12l8 4.5"/>
                                                        <path d="M12 3v9"/>
                                                        <path d="M12 12l-8 4.5"/>
                                                    </svg>
                                                </div>
                                                <div class="col-11">
                                                    <a style="text-decoration: none"
                                                       href="{{ url($path_suratpermohonan_raperkada) }}"
                                                       target="_blank">
                                                        @php
                                                            $only_filename = explode('/',$path_suratpermohonan_raperkada);
                                                        @endphp
                                                        {{ $only_filename[array_key_last($only_filename)] }}
                                                    </a>
                                                </div>


                                            </div>

                                        </div>

                                    </div>
                                    <div class="form-group mt-2">
                                        <label class="col-lg-12">Surat Naskah Akademik/Penjelasan/Keterangan
                                            <small class="lh-1" style="color: #49a5ff"><i>.pdf .doc .docx (*wajib)</i>
                                            </small>
                                        </label>
                                        @php
                                            $path_surat_naskahakademik_etc = Storage::url('uploads/permohonan_raperkada/'.$username_pemda_terkait."/".$data_raperkada->naskah_akademik_dll);
                                        @endphp
                                        <div class="col-lg-12 mt-2">
                                            <input id="surat_naskahakademik_etc"
                                                   name="surat_naskahakademik_etc"
                                                   type="file"
                                                   onchange="checkSelectedFile(id)"
                                                   class="form-control">
                                            <div class="row mt-2">
                                                <div class="col-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                         viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                         stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                                         class="icon icon-tabler icons-tabler-outline icon-tabler-asterisk">
                                                        <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                                        <path d="M12 12l8 -4.5"/>
                                                        <path d="M12 12v9"/>
                                                        <path d="M12 12l-8 -4.5"/>
                                                        <path d="M12 12l8 4.5"/>
                                                        <path d="M12 3v9"/>
                                                        <path d="M12 12l-8 4.5"/>
                                                    </svg>
                                                </div>
                                                <div class="col-11">
                                                    <a style="text-decoration: none"
                                                       href="{{ url($path_surat_naskahakademik_etc) }}"
                                                       target="_blank">
                                                        @php
                                                            $only_filename_naskahakademik = explode('/',$path_surat_naskahakademik_etc);
                                                        @endphp
                                                        {{ $only_filename_naskahakademik[array_key_last($only_filename_naskahakademik)] }}
                                                    </a>
                                                </div>


                                            </div>


                                        </div>
                                    </div>

                                </div>
                                <div class="col-6">
                                    {{--<span>Kanan</span>--}}
                                    <div class="form-group ">
                                        <label class="col-lg-12">Rancangan Perkada
                                            <small class="lh-1" style="color: #49a5ff"><i>.pdf .doc .docx (*wajib)</i>
                                            </small>
                                        </label>
                                        @php
                                            $path_rancangan_perkada = Storage::url('uploads/permohonan_raperkada/'.$username_pemda_terkait."/".$data_raperkada->rancangan_perkada);
                                        @endphp
                                        <div class="col-lg-12 mt-2">
                                            <input id="rancangan_perkada"
                                                   name="rancangan_perkada"
                                                   type="file"
                                                   onchange="checkSelectedFile(id)"
                                                   class="form-control">
                                            <div class="row mt-2">
                                                <div class="col-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                         viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                         stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                                         class="icon icon-tabler icons-tabler-outline icon-tabler-asterisk">
                                                        <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                                        <path d="M12 12l8 -4.5"/>
                                                        <path d="M12 12v9"/>
                                                        <path d="M12 12l-8 -4.5"/>
                                                        <path d="M12 12l8 4.5"/>
                                                        <path d="M12 3v9"/>
                                                        <path d="M12 12l-8 4.5"/>
                                                    </svg>
                                                </div>
                                                <div class="col-11">
                                                    <a style="text-decoration: none;"
                                                       href="{{ $path_rancangan_perkada }}"
                                                       target="_blank">
                                                        @php
                                                            $only_filename_rancanganperkada = explode('/',$path_rancangan_perkada);
                                                        @endphp
                                                        {{ $only_filename_rancanganperkada[array_key_last($only_filename_rancanganperkada)] }}
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group mt-2">
                                        <label class="col-lg-12">Draft Raperkada
                                            <small class="lh-1" style="color: #49a5ff"><i>.pdf .doc .docx (*wajib)</i>
                                            </small>
                                        </label>
                                        @php
                                            $path_draft_raperkada = Storage::url('uploads/permohonan_raperkada/'.$username_pemda_terkait."/".$data_raperkada->draft_harmonisasi);
                                        @endphp
                                        <div class="col-lg-12 mt-2">
                                            <input id="draft_raperkada"
                                                   name="draft_raperkada"
                                                   type="file"
                                                   onchange="checkSelectedFile(id)"
                                                   class="form-control">
                                            <div class="row mt-2">
                                                <div class="col-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                         viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                         stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                                         class="icon icon-tabler icons-tabler-outline icon-tabler-asterisk">
                                                        <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                                        <path d="M12 12l8 -4.5"/>
                                                        <path d="M12 12v9"/>
                                                        <path d="M12 12l-8 -4.5"/>
                                                        <path d="M12 12l8 4.5"/>
                                                        <path d="M12 3v9"/>
                                                        <path d="M12 12l-8 4.5"/>
                                                    </svg>
                                                </div>
                                                <div class="col-11">
                                                    <a style="text-decoration: none;"
                                                       href="{{ url($path_draft_raperkada) }}" target="_blank">
                                                        @php
                                                            $only_filename_draftraperkada = explode('/',$path_draft_raperkada);
                                                        @endphp
                                                        {{ $only_filename_draftraperkada[array_key_last($only_filename_draftraperkada)] }}
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-bottom: 10px; margin-top: 15px;">
                                        <div class="col-12">

                                            <div class="form-group">
                                                <div class="input_fields_wrap">
                                                    {{--<label class="col-lg-12 " style="">--}}
                                                        {{--Dokumen Tambahan--}}
                                                        {{--<small class="lh-1" style="color: #49a5ff">--}}
                                                            {{--<i>--}}
                                                                {{--.pdf .doc .docx (*opsional)--}}
                                                            {{--</i>--}}
                                                        {{--</small>--}}
                                                    {{--</label>--}}
                                                    {{--<button onclick=""--}}
                                                            {{--class="add_field_button btn btn-warning m-l-15 col-lg-12 "--}}
                                                            {{--style="margin-bottom: 15px;">--}}
                                                        {{--Tambah Kolom Dokumen Pendukung--}}
                                                    {{--</button>--}}
                                                    <div class="form-group" style="background-color: ">
                                                        <!--                        <label class="fw-500">Upload File SK / SP / Nodin / Undangan / Paparan / data pendukung lainnya</label>-->
                                                        <label class="col-lg-11" style="background-color:  ">
                                                            Dokumen Tambahane
                                                            <small class="lh-1" style="color: #49a5ff">
                                                                <i>
                                                                    .pdf .doc .docx (*opsional)
                                                                </i>
                                                            </small>
                                                        </label>
                                                        <br>

                                                        <button onclick="addFile({{ decrypt($id_draft_permohonan) }})" class="btn btn-success m-l-15 col-lg-12 "
                                                                id="add-more-edit-" type="button"
                                                                style="margin-bottom: 15px; background-color: #187e95 ">
                                                            <i class="fa fa-plus-circle" aria-hidden="true"></i>
                                                            Tambah Dokumene <!--ASLIII-->
                                                        </button>
                                                        <div id="show-file-list-{{ decrypt($id_draft_permohonan) }}"></div>

                                                        <div id="auth-rows"></div>
                                                    </div>
                                                    @php
                                                        $getdata_lampirantambahan =  json_decode($data_raperkada->url_data_dukung);
                                                    @endphp
                                                    @php
                                                        //uji data:
                                                        //echo "<pre>"; print_r($getdata_lampirantambahan);
                                                    //echo count($getdata_lampirantambahan);
                                                    @endphp

                                                    {{--@if(count($getdata_lampirantambahan) !=0)--}}
                                                    @foreach($getdata_lampirantambahan??[] as $key_tambahan=>$dokumen_tambahan)
                                                        @php
                                                            $path_dokumen_tambahan = Storage::url('uploads/permohonan_raperkada/'.$username_pemda_terkait."/".$dokumen_tambahan);
                                                        //echo $dokumen_tambahan."<br>";
                                                        @endphp
                                                        <div class="row mb-2"
                                                             id="list-file-tambahan-<?= $key_tambahan; ?>-<?= $data_raperkada->id_draft_permohonan; ?>">
                                                            <div class="col-12">
                                                                {{--<input type="file" name="jumlah_edit_daduk[]"
                                                                       id="jumlah_edit_daduk[]"
                                                                       value=""
                                                                       onclick="replacedata(id,'{{ $key_tambahan }}','{{ $dokumen_tambahan }}','{{ $data_raperkada->id_draft_permohonan }}','{{ $kode_pereseanuser }}')"
                                                                       onchange="checkSelectedFileMustPDFWord(id)"
                                                                       class="input_daduk form-control">--}}

                                                                <svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                                     height="24"
                                                                     viewBox="0 0 24 24" fill="none"
                                                                     stroke="currentColor"
                                                                     stroke-width="2" stroke-linecap="round"
                                                                     stroke-linejoin="round"
                                                                     class="icon icon-tabler icons-tabler-outline icon-tabler-asterisk">
                                                                    <path stroke="none" d="M0 0h24v24H0z"
                                                                          fill="none"/>
                                                                    <path d="M12 12l8 -4.5"/>
                                                                    <path d="M12 12v9"/>
                                                                    <path d="M12 12l-8 -4.5"/>
                                                                    <path d="M12 12l8 4.5"/>
                                                                    <path d="M12 3v9"/>
                                                                    <path d="M12 12l-8 4.5"/>
                                                                </svg>
                                                                <a style="text-decoration: none;" target="_blank"
                                                                   href="{{ url($path_dokumen_tambahan) }}">
                                                                    {{ $dokumen_tambahan }}
                                                                </a>


                                                            </div>
                                                            <a style="width: 20%;height: 20px; margin-left: 10px;"
                                                               href="javascript:;"
                                                               class="btn btn-danger"
                                                               onclick="deleteFileData('{{ $dokumen_tambahan }}','{{ $key_tambahan }}', '{{ $data_raperkada->id_draft_permohonan }}','{{ $kode_pereseanuser }}')">
                                                                Remove Data
                                                            </a>
                                                        </div>


                                                    @endforeach
                                                    {{--@else--}}
                                                    {{--<input type="file" name="lampiran_tambahan[]" value=""--}}
                                                    {{--id="lampiran_tambahan0"--}}
                                                    {{--onchange="checkSelectedFileMustPDFWord(id)"--}}
                                                    {{--class="form-control">--}}
                                                    {{--@endif--}}
                                                    <div class="mt-2"
                                                         id="show-file-list-doktambahan-{{ $data_raperkada->id_draft_permohonan }}"></div>

                                                    {{--<div class="col-lg-12 mt-1">--}}
                                                    {{--<input type="file" name="lampiran_tambahan[]"--}}
                                                    {{--id="lampiran_tambahan0"--}}
                                                    {{--onchange="checkSelectedFileMustPDFWord(id)"--}}
                                                    {{--class="form-control">--}}
                                                    {{--</div>--}}

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <center>
                                <div class="row mt-2">
                                    <div class="col-6">
                                        <div class="form-group">
                                            <a href="{{ route('getraperkada', $kode_pereseanuser) }}"
                                               class="btn btn-warning w-100" style="background-color: #d2a729">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                     viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                     stroke-width="2"
                                                     stroke-linecap="round" stroke-linejoin="round"
                                                     class="icon icon-tabler icons-tabler-outline icon-tabler-chevrons-left">
                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                                    <path d="M11 7l-5 5l5 5"/>
                                                    <path d="M17 7l-5 5l5 5"/>
                                                </svg>
                                                Batal
                                            </a>

                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="form-group">
                                            <button class="btn btn-success w-100">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                     height="24" viewBox="0 0 24 24" fill="none"
                                                     stroke="currentColor" stroke-width="2"
                                                     stroke-linecap="round" stroke-linejoin="round"
                                                     class="icon icon-tabler icons-tabler-outline icon-tabler-device-floppy">
                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                                    <path d="M6 4h10l4 4v10a2 2 0 0 1 -2 2h-12a2 2 0 0 1 -2 -2v-12a2 2 0 0 1 2 -2"/>
                                                    <path d="M12 14m-2 0a2 2 0 1 0 4 0a2 2 0 1 0 -4 0"/>
                                                    <path d="M14 4l0 4l-6 0l0 -4"/>
                                                </svg>
                                                {{--ASLIII--}}
                                                Update Bro
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </center>

                        </form>

                    </div>
                </div>

            </div>
        </div>
    </div>
@endsection
@push('myscript')
    <script>
        $(document).ready(function () {
            console.log("ready!");
            //$('#surat_permohonan_raperkada').prop('required', true);
            //$('#surat_naskahakademik_etc').prop('required', true);
            //$('#rancangan_perkada').prop('required', true);
            //$('#draft_raperkada').prop('required', true);

            var max_fields_pendukung = 100; //maximum input boxes allowed
            var wrapper = $(".input_fields_wrap");
            var add_button = $(".add_field_button");
            var x = 1;
            //var counter = 1;
            const jml_data_exist = <?php echo $jml_data_exist; ?>;
            var counter = jml_data_exist + 1;
            console.log(jml_data_exist);
            console.log(counter);
            //return false;
            $(add_button).click(function (e) {
                e.preventDefault();
                if (x < max_fields_pendukung) {
                    x++;
                    var id_lampiran_tambahan = "lampiran_tambahan" + counter;
                    var html_2 = '<div class="form-group">' +
                        '<div class="row"><div class="col"><input type="file" name="jumlah_edit_daduk[]" id="jumlah_edit_daduk[]" onchange="checkSelectedFileMustPDFWord(id)" class="input_daduk form-control"><a href="#" class="remove_field btn btn-danger" style="width: 20%; height:10px;">Remove Field</a></div></div></div>';
                    $(wrapper).append(html_2);
                    counter++;
                    //$('.myselect').select2();
                }

            });
            $(wrapper).on("click", ".remove_field", function (e) { //user click on remove text
                e.preventDefault();
                $(this).parent('div').remove();
                x--;
            });
            $('#frmBeritaPereseanuser_edit_notyet').submit(function () {
                var input_daduk = $('.input_daduk');
                var kode_pereseanuser = $('#frmBeritaPereseanuser_edit').find('#kode_pereseanuser').val();
                var nama_draft_raperkada = $('#frmBeritaPereseanuser_edit').find('#nama_draft_raperkada').val();
                alert(nama_draft_raperkada);

                var jenis_dokumen = $('#frmBeritaPereseanuser_edit').find('#jenis_dokumen').val();
                var id_draft_permohonan = $('#frmBeritaPereseanuser_edit').find('#id_draft_permohonan').val();
                var surat_permohonan_raperkada = $('#frmBeritaPereseanuser_edit').find('#surat_permohonan_raperkada').val();
                var surat_naskahakademik_etc = $('#frmBeritaPereseanuser_edit').find('#surat_naskahakademik_etc').val();
                var rancangan_perkada = $('#frmBeritaPereseanuser_edit').find('#rancangan_perkada').val();
                var draft_raperkada = $('#frmBeritaPereseanuser_edit').find('#draft_raperkada').val();

                var url_update_raperkada = "{{route('updateraperkada', ':kode_pereseanuser')}}";
                url_update_raperkada = url_update_raperkada.replace(':kode_pereseanuser', kode_pereseanuser);
                //alert(kode_pereseanuser);
                //return false;
                $.ajax({
                    type: 'POST',
                    url: url_update_raperkada,
                    cache: false,
                    data: {
                        id_draft_permohonan: id_draft_permohonan,
                        key_tambahan: key_tambahan,
                        dokumen_tambahan: dokumen_tambahan,
                        nama_draft_raperkada: nama_draft_raperkada,
                        jenis_dokumen: jenis_dokumen,
                        surat_permohonan_raperkada: surat_permohonan_raperkada,
                        surat_naskahakademik_etc: surat_naskahakademik_etc,
                        rancangan_perkada: rancangan_perkada,
                        draft_raperkada: draft_raperkada,

                    },
                });
                //alert(input_daduk.length);
                //return false;
            });

            $('#frmBeritaPereseanuser_edit_bk').submit(function () {
                //alert("woy submit");
                //return false;
                var input_daduk = $('.myclass');
                //alert(input_daduk.length);
                //return false;
                var nama_draft_raperkada = $('#frmBeritaPereseanuser').find('#nama_draft_raperkada').val();
                // alert(nama_draft_raperkada);
                //return false;
                if (nama_draft_raperkada == "") {
                    Swal.fire({
                        title: 'Warning',
                        text: 'Nama Draft Harus Diisi',
                        icon: 'warning',
                        confirmButtonText: 'Oke',
                    }).then((result) => {
                        $('#nama_draft_raperkada').focus();
                    });
                    return false;
                }

                var surat_permohonan_raperkada = $('#frmBeritaPereseanuser').find('#surat_permohonan_raperkada').val();
                var surat_naskahakademik_etc = $('#frmBeritaPereseanuser').find('#surat_naskahakademik_etc').val();
                var rancangan_perkada = $('#frmBeritaPereseanuser').find('#rancangan_perkada').val();
                var draft_raperkada = $('#frmBeritaPereseanuser').find('#draft_raperkada').val();

                extension = surat_permohonan_raperkada.split('.').pop();
                //alert(extension); return false;
                if (document.getElementById("surat_permohonan_raperkada").files.length == 0) {
                    //alert(document.getElementById("surat_permohonan_raperkada").files.length);
                    Swal.fire({
                        title: 'Warning!',
                        icon: 'warning',
                        text: 'Surat Permohonan Raperkada Belum Dipilih',
                        type: 'warning',
                        confirmButtonText: 'Ok'
                    }).then((res) => {
                        $('#surat_permohonan_raperkada').focus();
                    });
                    return false;
                } else if (document.getElementById("surat_naskahakademik_etc").files.length == 0) {
                    Swal.fire({
                        title: 'Warning!',
                        icon: 'warning',
                        text: 'Surat Naskah Akademik / Semacamnya Belum Dipilih',
                        type: 'warning',
                        confirmButtonText: 'Ok'
                    }).then((res) => {
                        $('#surat_naskahakademik_etc').focus();
                    });
                    return false;
                } else if (document.getElementById("rancangan_perkada").files.length == 0) {
                    Swal.fire({
                        title: 'Warning!',
                        icon: 'warning',
                        text: 'Rancangan Perkada Belum Dipilih',
                        type: 'warning',
                        confirmButtonText: 'Ok'
                    }).then((res) => {
                        $('#rancangan_perkada').focus();
                    });
                    return false;
                } else if (document.getElementById("draft_raperkada").files.length == 0) {
                    Swal.fire({
                        title: 'Warning!',
                        icon: 'warning',
                        text: 'Draft Raperkada Belum Dipilih',
                        type: 'warning',
                        confirmButtonText: 'Ok'
                    }).then((res) => {
                        $('#draft_raperkada').focus();
                    });
                    return false;
                }

            });


        });


        var count_tambahan = 0;

        function deleteFileData($dokumen_tambahan, $key_tambahan, $id_draft_permohonan, $kode_pereseanuser) {
            //console.log("dokumen :"+$dokumen_tambahan+"  key tambahan : "+$key_tambahan+" id_draft permohonan :"+$id_draft_permohonan+" kode pereseanuser:"+$kode_pereseanuser);
            //return false;
            var url_hapus_rowdata_lampirantambahan = "{{route('editraperkada.hapus_rowdatatambahan', ':id_draft_permohonan')}}";
            url_hapus_rowdata_lampirantambahan = url_hapus_rowdata_lampirantambahan.replace(':id_draft_permohonan', $id_draft_permohonan);
            Swal.fire({
                title: 'Anda yakin akan menghapus data lampiran ' + $dokumen_tambahan + "?",
                text: "Jika Ya Maka Data Akan Terhapus Permanent",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: "#3085d6",
                cancelButtonColor: "#d33",
                confirmButtonText: "Ya, Hapus Saja!",
                cancelButtonText: "Batalkan Bro!",
            }).then((result) => {
                if (result.isConfirmed) {
                    $.ajax({
                        type: 'GET',
                        url: url_hapus_rowdata_lampirantambahan,
                        headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                        data: "dokumen_tambahan=" + $dokumen_tambahan + "&key_tambahan=" + $key_tambahan + "&id_draft_permohonan=" + $id_draft_permohonan + "&kode_pereseanuser=" + $kode_pereseanuser,
                        success: function (data) {
                            // Swal.fire({
                            //     title: "Deleted!",
                            //     text: "Data Berhasil Dihapus",
                            //     icon: "success"
                            // });
                            location.reload();
                        },
                    });
                    Swal.fire({
                        title: "Deleted!",
                        text: "Data Berhasil Dihapus",
                        icon: "success"
                    });
                }
            });
            //return false;
        }

        function replacedata(id_element, key_tambahan, dokumen_tambahan, id_draft_permohonan, kode_pereseanuser) {
            fileName = document.querySelector('#' + id_element).value;
            extension = fileName.split('.').pop();

            //alert(extension);

            var url_replace_rowdata_raperkada = "{{route('replacedata', ':kode_peresean_user')}}";
            url_replace_rowdata_raperkada = url_replace_rowdata_raperkada.replace(':kode_peresean_user', kode_pereseanuser);
            $.ajax({
                type: 'POST',
                url: url_replace_rowdata_raperkada,
                cache: false,
                data: {
                    _token: "{{ csrf_token() }}",
                    id_draft_permohonan: id_draft_permohonan,
                    key_tambahan: key_tambahan,
                    dokumen_tambahan: dokumen_tambahan,
                },
                success: function (respond) {
                    console.log(respond.dokumen_tambahan);
                }
            });
            // Swal.fire({
            //     title: "Deleted!",
            //     text: "Link Media Lokal Berhasil Dihapus",
            //     icon: "success"
            // });
        }

        function removeFile(divId){
            console.log(divId);
            document.getElementById(divId).remove();
        }
        var count_lampiran_tambahan = 0;
        function addFile(idp){
            //alert(idp);
            //return false
            let elementId = "input-file-element-"+count_lampiran_tambahan;
            let divId = "input-dinamis-edit-"+count_lampiran_tambahan;
            var html4='<div class="form-group input-dinamis m-20 " style="margin-bottom: 10px;" id="'+divId+'">'+
                '<div class="row">'+
                '<div class="col-input-dinamis col-lg-10">'+
                '<input type="file" name="tambahan_files[]" class="form-control border-grey"'+
                'id="'+elementId+'" onchange="checkSelectedFile('+"'"+elementId+"'"+')" '+
                'placeholder="Upload file" required>'+
                '</div>'+
                '<div class="col-input-dinamis col-lg-2">'+
                '<button class="btn btn-danger remove-edit"'+
                'onclick="removeFile('+"'"+divId+"'"+')" type="button">'+
                '<i class="fa fa-minus-circle">Remove</i>'+
                '</button>'+
                '</div>'+
                '</div>'+
                '</div>';
            $('#show-file-list-'+idp).append(html4);
            count_lampiran_tambahan++;
        }
        function checkSelectedFileMustPDFWord(id) {
            //alert(id);
            //console.log(id);
            fileName = document.querySelector('#' + id).value;
            extension = fileName.split('.').pop();
            //console.log(extension);
            if (document.getElementById(id).files.length == 0) {
                //console.log('No file selected');
                $('#' + id).prop('required', false);
            } else {
                //console.log("there is a file selected");
                if (extension != 'pdf' && extension != 'doc' && extension != 'docx') {
                    //alert("ekstensi file harus PDF, DOC, atau DOCX");
                    Swal.fire({
                        title: 'Warning!',
                        text: 'Ekstensi file harus PDF, DOC, atau DOCX',
                        type: 'warning',
                        confirmButtonText: 'Ok'
                    }).then((res) => {
                        document.querySelector('#' + id).value = '';
                        $('#' + id).prop('required', false);
                    });
                } else {
                    //ekstensi file sudah sesuai yaitu PDF, DOC, atau DOCX
                    const oFile = document.getElementById(id).files[0];
                    $('#' + id).prop('required', false);
                    if (oFile.size > (5 * (1024 * 1024))) {
                        Swal.fire({
                            title: 'Warning!',
                            text: 'Size lampiran terlalu besar',
                            type: 'warning',
                            confirmButtonText: 'Ok'
                        }).then((rslt) => {
                            document.querySelector('#' + id).value = '';
                            $('#' + id).prop('required', false);
                        });
                    }
                }
            }
        }

        function checkSelectedFile_unrequired(id) {
            //alert(id);
            //console.log(id);
            fileName = document.querySelector('#' + id).value;
            extension = fileName.split('.').pop();
            //console.log(extension);
            if (document.getElementById(id).files.length == 0) {
                console.log('No file selected');
                $('#' + id).prop('required', false);
            } else {
                console.log("there is a file selected");
                if (extension != 'pdf' && extension != 'doc' && extension != 'docx') {
                    //alert("ekstensi file harus PDF, DOC, atau DOCX");
                    Swal.fire({
                        title: 'Warning!',
                        text: 'Ekstensi file harus PDF, DOC, atau DOCX',
                        type: 'warning',
                        confirmButtonText: 'Ok'
                    }).then((res) => {
                        document.querySelector('#' + id).value = '';
                        $('#' + id).prop('required', false);
                    });
                } else {
                    //ekstensi file sudah sesuai yaitu PDF, DOC, atau DOCX
                    const oFile = document.getElementById(id).files[0];
                    // $('#' + id).prop('required', false);
                    if (oFile.size > (5 * (1024 * 1024))) {
                        Swal.fire({
                            title: 'Warning!',
                            text: 'Size lampiran terlalu besar',
                            type: 'warning',
                            confirmButtonText: 'Ok'
                        }).then((rslt) => {
                            document.querySelector('#' + id).value = '';
                            $('#' + id).prop('required', false);
                        });
                    }
                }
            }
        }

        function checkSelectedFile(id) {
            //alert(id);
            //console.log(id);
            fileName = document.querySelector('#' + id).value;
            extension = fileName.split('.').pop();
            //console.log(extension);
            if (document.getElementById(id).files.length == 0) {
                console.log('No file selected');
                $('#' + id).prop('required', true);
            } else {
                console.log("there is a file selected");
                if (extension != 'pdf' && extension != 'doc' && extension != 'docx') {
                    //alert("ekstensi file harus PDF, DOC, atau DOCX");
                    Swal.fire({
                        title: 'Warning!',
                        text: 'Ekstensi file harus PDF, DOC, atau DOCX',
                        type: 'warning',
                        confirmButtonText: 'Ok'
                    }).then((res) => {
                        document.querySelector('#' + id).value = '';
                        $('#' + id).prop('required', true);
                    });
                } else {
                    //ekstensi file sudah sesuai yaitu PDF, DOC, atau DOCX
                    const oFile = document.getElementById(id).files[0];
                    $('#' + id).prop('required', false);
                    if (oFile.size > (5 * (1024 * 1024))) {
                        Swal.fire({
                            title: 'Warning!',
                            text: 'Size lampiran terlalu besar',
                            type: 'warning',
                            confirmButtonText: 'Ok'
                        }).then((rslt) => {
                            document.querySelector('#' + id).value = '';
                            $('#' + id).prop('required', true);
                        });
                    }
                }
            }
        }
    </script>
@endpush