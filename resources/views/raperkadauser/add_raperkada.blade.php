@extends('layouts.admin.tabler')

@section('content')
    <div class="page-header d-print-none">
        <div class="container-lg">
            <div class="row g-2 align-items-center">
                <div class="col">
                    <div class="page-pretitle">
                        <span>Tambah Data Raperkada</span>
                    </div>
                    <h2 class="page-title">
                        <i>{{ $namalengkap_bykodepereseanuser }}</i>
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
                        <form action="{{ route('storeraperkada', $kode_pereseanuser) }}" method="post"
                              id="frmBeritaPereseanuser"
                              name="frmBeritaPereseanuser"
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
                                            <input type="text" name="nama_draft_raperkada"
                                                   id="nama_draft_raperkada" class="form-control"
                                                   value="" placeholder="Nama Draft Raperkada.."
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
                                        <div class="col-lg-12 mt-2">
                                            <input id="surat_permohonan_raperkada"
                                                   name="surat_permohonan_raperkada"
                                                   type="file"
                                                   onchange="checkSelectedFile(id)"
                                                   class="form-control">

                                        </div>
                                    </div>
                                    <div class="form-group mt-2">
                                        <label class="col-lg-12">Surat Naskah Akademik/Penjelasan/Keterangan
                                            <small class="lh-1" style="color: #49a5ff"><i>.pdf .doc .docx (*wajib)</i>
                                            </small>
                                        </label>
                                        <div class="col-lg-12 mt-2">
                                            <input id="surat_naskahakademik_etc"
                                                   name="surat_naskahakademik_etc"
                                                   type="file"
                                                   onchange="checkSelectedFile(id)"
                                                   class="form-control">

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
                                        <div class="col-lg-12 mt-2">
                                            <input id="rancangan_perkada"
                                                   name="rancangan_perkada"
                                                   type="file"
                                                   onchange="checkSelectedFile(id)"
                                                   class="form-control">

                                        </div>
                                    </div>
                                    <div class="form-group mt-2">
                                        <label class="col-lg-12">Draft Raperkada
                                            <small class="lh-1" style="color: #49a5ff"><i>.pdf .doc .docx (*wajib)</i>
                                            </small>
                                        </label>
                                        <div class="col-lg-12 mt-2">
                                            <input id="draft_raperkada"
                                                   name="draft_raperkada"
                                                   type="file"
                                                   onchange="checkSelectedFile(id)"
                                                   class="form-control">
                                        </div>
                                    </div>
                                    <div class="row" style="margin-bottom: 10px; margin-top: 15px;">
                                        <div class="col-12">

                                            <div class="form-group">
                                                <div class="input_fields_wrap_daduk">
                                                    <label class="col-lg-12 " style="">
                                                        Dokumen Tambahan
                                                        <small class="lh-1" style="color: #49a5ff">
                                                            <i>
                                                                .pdf .doc .docx (*opsional)
                                                            </i>
                                                        </small>
                                                    </label>
                                                    <button class="add_field_button_daduk btn btn-warning m-l-15 col-lg-12 "
                                                            style="margin-bottom: 15px;">
                                                        Tambah Kolom Dokumen Pendukung
                                                    </button>
                                                    <div class="col-lg-12 mt-1">
                                                        <input type="file" name="jumlah_daduk[]"
                                                               id="jumlah_daduk[]"
                                                               onchange="checkSelectedFileMustPDFWord(id)"
                                                               class="jumlah_daduk_medlok form-control">
                                                    </div>

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
                                                Kembali
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
                                                Simpan
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

            var max_fields_daduk = 100;

            var wrapper_daduk = $(".input_fields_wrap_daduk");

            var add_field_button_daduk = $(".add_field_button_daduk");

            var x_daduk = 1;

            $(add_field_button_daduk).click(function (e) {
                e.preventDefault();
                if (x_daduk < max_fields_daduk) {
                    x_daduk++;
                    $(wrapper_daduk).append('<div>' +
                        '<table class="m-l-15 col-lg-12" style="">' +
                        '<tr style="margin-top: 10px">' +
                        '<td>' +
                        '</td>' +
                        '<td style=""><div class="row"><div class=col-4></div>' +
                        '<div class="col-12"><input required type="file" name="jumlah_daduk[]" id="jumlah_daduk[]" onchange="checkSelectedFileMustPDFWord(id)" class="form-control"> </div></div>' +
                        '</td>' +
                        '</tr>' +
                        '</table>' +
                        '<a href="#" style="margin-left: 10px;" class="remove_field_daduk">Remove</a></div>');
                }
            });

            $(wrapper_daduk).on("click", ".remove_field_daduk", function (e) { //user click on remove text
                e.preventDefault();
                $(this).parent('div').remove();
                x_daduk--;
            });

            var max_fields_pendukung = 100; //maximum input boxes allowed
            var wrapper = $(".input_fields_wrap");
            var add_button = $(".add_field_button");
            var x = 1;
            var counter = 1;

            $(add_button).click(function (e) {
                e.preventDefault();
                if (x < max_fields_pendukung) {
                    x++;
                    var id_lampiran_tambahan = "lampiran_tambahan" + counter;
                    $(wrapper).append('<div>' +
                        '<table class="m-l-15 col-lg-12" style="">' +
                        '<tr style="margin-top: 10px">' +
                        '<td>' +
                        '</td>' +
                        '<td style=""><div class="row"><div class=col-4></div>' +
                        '<div class="col-12"><input type="file" name="lampiran_tambahan[]" id="' + id_lampiran_tambahan + '" onchange="checkSelectedFileMustPDFWord(id)" class="form-control"> </div></div>' +
                        '</td>' +
                        '</tr>' +
                        '</table>' +
                        '<a href="#" style="margin-left: 10px;" class="remove_field">Remove</a></div>');
                    counter++;
                    $('.myselect').select2();
                }

            });
            $(wrapper).on("click", ".remove_field", function (e) { //user click on remove text
                e.preventDefault();
                $(this).parent('div').remove();
                x--;
            });

            $('#frmBeritaPereseanuser').submit(function () {
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

        function checkSelectedFileMustPDFWord(id) {
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