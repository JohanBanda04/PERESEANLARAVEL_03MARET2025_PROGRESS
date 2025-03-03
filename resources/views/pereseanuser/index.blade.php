@extends('layouts.admin.tabler')

@section('content')
    <div class="page-header d-print-none">
        <div class="container-xl">
            <div class="row g-2 align-items-center">
                <div class="col">
                    <!-- Page pre-title -->
                    <div class="page-pretitle">

                    </div>
                    <h2 class="page-title">
                        Data &nbsp;<i>Users</i>
                    </h2>
                </div>

            </div>
        </div>
    </div>
    <div class="page-body">
        <div class="container-xl">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-12">
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
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <a href="#" class="btn btn-primary" id="btnTambahPereseanuser">
                                        <svg xmlns="http://www.w3.org/2000/svg"
                                             class="icon icon-tabler icon-tabler-plus" width="24" height="24"
                                             viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
                                             stroke-linecap="round" stroke-linejoin="round">
                                            <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                            <path d="M12 5l0 14"/>
                                            <path d="M5 12l14 0"/>
                                        </svg>
                                        {{--ASLIII--}}
                                        Tambah Data &nbsp;<i>User</i>
                                    </a>
                                </div>
                            </div>
                            <div class="row mt-2">
                                <div class="col-12">
                                    <form action="{{ route('datapengguna') }}" method="get">
                                        <div class="row">
                                            <div class="col-10">
                                                <div class="form-group">
                                                    <input type="text" name="nama_pereseanuser_cari"
                                                           id="nama_pereseanuser_cari"
                                                           class="form-control"
                                                           placeholder="Cari User"
                                                           value="{{ Request('nama_pereseanuser_cari') }}">
                                                </div>
                                            </div>


                                            <div class="col-2">
                                                <button type="submit" class="btn btn-primary" style="width: 100%">
                                                    <svg xmlns="http://www.w3.org/2000/svg"
                                                         class="icon icon-tabler icon-tabler-search" width="24"
                                                         height="24" viewBox="0 0 24 24" stroke-width="2"
                                                         stroke="currentColor" fill="none" stroke-linecap="round"
                                                         stroke-linejoin="round">
                                                        <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                                        <path d="M10 10m-7 0a7 7 0 1 0 14 0a7 7 0 1 0 -14 0"/>
                                                        <path d="M21 21l-6 -6"/>
                                                    </svg>
                                                    Cari
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="row mt-2">
                                <div class="col-12">
                                    <table class="table table-bordered">
                                        <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Kode User</th>
                                            <th>Nama Lengkap</th>
                                            <th>Username</th>
                                            <th>Level</th>
                                            <th>No Handphone</th>
                                            <th>Foto</th>
                                            <th>Aksi</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @foreach($pereseanuser as $d)
                                            @php
                                                $path = Storage::url('uploads/pereseanuser/'.$d->foto);
                                            @endphp
                                            <tr>
                                                <td>{{ ($loop->iteration + $pereseanuser->firstItem()) - 1  }}</td>
                                                <td>{{ $d->kode_pereseanuser }}</td>
                                                <td>{{ $d->nama_lengkap }}</td>
                                                <td>{{ $d->username }}</td>
                                                <td>{{ $d->level }}</td>
                                                <td>{{ $d->no_handphone }}</td>
                                                <td>
                                                    @if(empty($d->foto))
                                                        <img src="{{ url('assets/img/no-photo.png') }}" class="avatar"
                                                             alt="">
                                                    @else
                                                        <img src="{{ url($path) }}" class="avatar" alt="">
                                                    @endif
                                                </td>
                                                <td>
                                                    <div class="btn-group">
                                                        {{--edit disini--}}
                                                        <a href="#" class="edit_pereseanuser btn btn-info btn-sm"
                                                           style="border-radius: 5px;"
                                                           id_pereseanuser="{{ $d->id_user }}">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 class="icon icon-tabler icon-tabler-edit" width="24"
                                                                 height="24" viewBox="0 0 24 24" stroke-width="2"
                                                                 stroke="currentColor" fill="none"
                                                                 stroke-linecap="round" stroke-linejoin="round">
                                                                <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                                                <path d="M7 7h-1a2 2 0 0 0 -2 2v9a2 2 0 0 0 2 2h9a2 2 0 0 0 2 -2v-1"/>
                                                                <path d="M20.385 6.585a2.1 2.1 0 0 0 -2.97 -2.97l-8.415 8.385v3h3l8.385 -8.415z"/>
                                                                <path d="M16 5l3 3"/>
                                                            </svg>
                                                        </a>
                                                        <form action="{{ route('pereseanuserdelete',$d->id_user) }}"
                                                              method="post"
                                                              style="margin-left: 5px; ">
                                                            @csrf
                                                            {{--                                                            @method('DELETE')--}}
                                                            <a class="btn btn-danger btn-sm peresean-delete-confirm"
                                                               style="border-radius: 5px;">
                                                                <svg xmlns="http://www.w3.org/2000/svg"
                                                                     class="icon icon-tabler icon-tabler-trash-filled"
                                                                     width="24" height="24" viewBox="0 0 24 24"
                                                                     stroke-width="2" stroke="currentColor" fill="none"
                                                                     stroke-linecap="round" stroke-linejoin="round">
                                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                                                    <path d="M20 6a1 1 0 0 1 .117 1.993l-.117 .007h-.081l-.919 11a3 3 0 0 1 -2.824 2.995l-.176 .005h-8c-1.598 0 -2.904 -1.249 -2.992 -2.75l-.005 -.167l-.923 -11.083h-.08a1 1 0 0 1 -.117 -1.993l.117 -.007h16z"
                                                                          stroke-width="0" fill="currentColor"/>
                                                                    <path d="M14 2a2 2 0 0 1 2 2a1 1 0 0 1 -1.993 .117l-.007 -.117h-4l-.007 .117a1 1 0 0 1 -1.993 -.117a2 2 0 0 1 1.85 -1.995l.15 -.005h4z"
                                                                          stroke-width="0" fill="currentColor"/>
                                                                </svg>
                                                            </a>
                                                        </form>
                                                    </div>
                                                </td>
                                            </tr>
                                        @endforeach
                                        </tbody>
                                    </table>
                                    <div class="d-flex justify-content-end">
                                        {{ $pereseanuser->links() }}
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="modal modal-blur fade" id="modal-input-pereseanuser" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    {{--ASLIII--}}
                    <h5 class="modal-title">
                        {{--ASLIII--}}
                        Tambah Data <i>User</i>
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="{{ route('pereseanuserstore') }}" method="post" id="tambahfrmPereseanuser"
                          name="tambahfrmPereseanuser"
                          enctype="multipart/form-data">
                        @csrf

                        <div class="row">
                            <div class="col-12">
                                <div class="input-icon mb-3">
                                <span class="input-icon-addon">
                                  <!-- Download SVG icon from http://tabler-icons.io/i/user -->
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                         fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                         stroke-linejoin="round"
                                         class="icon icon-tabler icons-tabler-outline icon-tabler-user-scan"><path
                                                stroke="none" d="M0 0h24v24H0z" fill="none"/><path
                                                d="M10 9a2 2 0 1 0 4 0a2 2 0 0 0 -4 0"/><path
                                                d="M4 8v-2a2 2 0 0 1 2 -2h2"/><path d="M4 16v2a2 2 0 0 0 2 2h2"/><path
                                                d="M16 4h2a2 2 0 0 1 2 2v2"/><path d="M16 20h2a2 2 0 0 0 2 -2v-2"/><path
                                                d="M8 16a2 2 0 0 1 2 -2h4a2 2 0 0 1 2 2"/></svg>
                                </span>
                                    <input type="text" readonly value="{{ $uname_code_new }}" class="form-control" name="uname_code_new"
                                           id="uname_code_new"
                                           placeholder="Kode User">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <div class="input-icon mb-3">
                                <span class="input-icon-addon">
                                  <!-- Download SVG icon from http://tabler-icons.io/i/user -->
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                         fill="currentColor"
                                         class="icon icon-tabler icons-tabler-filled icon-tabler-user"><path
                                                stroke="none" d="M0 0h24v24H0z" fill="none"/><path
                                                d="M12 2a5 5 0 1 1 -5 5l.005 -.217a5 5 0 0 1 4.995 -4.783z"/><path
                                                d="M14 14a5 5 0 0 1 5 5v1a2 2 0 0 1 -2 2h-10a2 2 0 0 1 -2 -2v-1a5 5 0 0 1 5 -5h4z"/></svg>
                                </span>
                                    <input type="text" value="" class="form-control" name="peresean_namalengkap"
                                           id="peresean_namalengkap"
                                           placeholder="Nama Lengkap">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <div class="input-icon mb-3">
                                <span class="input-icon-addon">
                                  <!-- Download SVG icon from http://tabler-icons.io/i/user -->
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                         fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                         stroke-linejoin="round"
                                         class="icon icon-tabler icons-tabler-outline icon-tabler-code"><path
                                                stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M7 8l-4 4l4 4"/><path
                                                d="M17 8l4 4l-4 4"/><path d="M14 4l-4 16"/></svg>
                                </span>
                                    <input type="text" value="" class="form-control" name="peresean_username"
                                           id="peresean_username"
                                           placeholder="Username">
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-12">
                                <div class="input-icon mb-3">
                                <span class="input-icon-addon">
                                  <!-- Download SVG icon from http://tabler-icons.io/i/user -->
                                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-phone"
                                         width="24" height="24" viewBox="0 0 24 24" stroke-width="2"
                                         stroke="currentColor" fill="none" stroke-linecap="round"
                                         stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path
                                                d="M5 4h4l2 5l-2.5 1.5a11 11 0 0 0 5 5l1.5 -2.5l5 2v4a2 2 0 0 1 -2 2a16 16 0 0 1 -15 -15a2 2 0 0 1 2 -2"/>
                                    </svg>
                                </span>
                                    <input type="number" value="" class="form-control" name="peresean_nohp"
                                           id="peresean_nohp"
                                           placeholder="No. Handphone">
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-12">
                                <div class="input-icon mb-3">
                                <span class="input-icon-addon">
                                  <!-- Download SVG icon from http://tabler-icons.io/i/user -->
                                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-key"
                                         width="24" height="24" viewBox="0 0 24 24" stroke-width="1.5"
                                         stroke="currentColor" fill="none" stroke-linecap="round"
                                         stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path
                                                d="M16.555 3.843l3.602 3.602a2.877 2.877 0 0 1 0 4.069l-2.643 2.643a2.877 2.877 0 0 1 -4.069 0l-.301 -.301l-6.558 6.558a2 2 0 0 1 -1.239 .578l-.175 .008h-1.172a1 1 0 0 1 -.993 -.883l-.007 -.117v-1.172a2 2 0 0 1 .467 -1.284l.119 -.13l.414 -.414h2v-2h2v-2l2.144 -2.144l-.301 -.301a2.877 2.877 0 0 1 0 -4.069l2.643 -2.643a2.877 2.877 0 0 1 4.069 0z"/><path
                                                d="M15 9h.01"/></svg>
                                </span>
                                    <input type="password" value="" class="form-control" name="peresean_password"
                                           id="peresean_password"
                                           placeholder="Password">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <center>Photo (Opsional)</center>
                            <div class="col-12">
                                <input type="file" name="peresean_foto" id="peresean_foto" class="form-control">
                            </div>
                        </div>

                        <div class="row mt-2">
                            <div class="col-12">
                                <select name="peresean_level" id="peresean_level" class="form-select">
                                    <option value="">-Pilih Level-</option>
                                    <option value="superadmin">Administrator</option>
                                    <option value="kasub_perancang">Kasub Perancang</option>
                                    <option value="perancang">Perancang</option>
                                    <option value="pemda">Pemda</option>
                                    <option value="guest">Guest</option>
                                    <option value="disable">Disable</option>
                                </select>
                            </div>
                        </div>

                        <div class="row mt-2">
                            <div class="col-12">
                                <div class="form-group">
                                    <button class="btn btn-primary w-100">
                                        <svg xmlns="http://www.w3.org/2000/svg"
                                             class="icon icon-tabler icon-tabler-send" width="24" height="24"
                                             viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
                                             stroke-linecap="round" stroke-linejoin="round">
                                            <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                            <path d="M10 14l11 -11"/>
                                            <path d="M21 3l-6.5 18a.55 .55 0 0 1 -1 0l-3.5 -7l-7 -3.5a.55 .55 0 0 1 0 -1l18 -6.5"/>
                                        </svg>
                                        Simpan
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>

    {{--modal untuk edit--}}
    {{--Modal Edit--}}
    <div class="modal modal-blur fade" id="modal-editpereseanuser" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Edit Data &nbsp;<i>User</i></h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body" id="loadeditform">

                </div>

            </div>
        </div>
    </div>
@endsection

@push('myscript')
    <script>
        $(function () {
            $('#btnTambahPereseanuser').click(function () {
                $('#modal-input-pereseanuser').modal('show');
            });

            $('.edit_pereseanuser').click(function () {
                //alert('editts');
                var id_pereseanuser = $(this).attr('id_pereseanuser');
                //alert(id_satker);
                $.ajax({
                    type: 'POST',
                    url: '{{ route('pereseanuser.edit') }}',
                    cache: false,
                    data: {
                        _token: "{{ csrf_token() }}",
                        id_pereseanuser: id_pereseanuser,

                    },
                    success: function (respond) {
                        console.log(respond);
                        $('#loadeditform').html(respond);
                    }
                });
                $('#modal-editpereseanuser').modal('show');
            });

            $('.peresean-delete-confirm').click(function (e) {
                var form = $(this).closest('form');
                e.preventDefault();
                Swal.fire({
                    title: "Apakah Anda Yakin Data Ini Mau Di Hapus?",
                    text: "Jika Ya Maka Data Akan Terhapus Permanent",
                    icon: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#3085d6",
                    cancelButtonColor: "#d33",
                    confirmButtonText: "Ya, Hapus Saja!"
                }).then((result) => {
                    if (result.isConfirmed) {
                        form.submit();
                        Swal.fire({
                            title: "Deleted!",
                            text: "Data Berhasil Dihapus",
                            icon: "success"
                        });
                    }
                });
            });

            $('#tambahfrmPereseanuser').submit(function () {
                var peresean_namalengkap = $('#tambahfrmPereseanuser').find('#peresean_namalengkap').val();
                var peresean_username = $('#tambahfrmPereseanuser').find('#peresean_username').val();
                var peresean_nohp = $('#tambahfrmPereseanuser').find('#peresean_nohp').val();
                var peresean_password = $('#tambahfrmPereseanuser').find('#peresean_password').val();
                var peresean_foto = $('#tambahfrmPereseanuser').find('#peresean_foto').val();
                var peresean_level = $('#tambahfrmPereseanuser').find('#peresean_level').val();

                if (peresean_namalengkap == "") {
                    //alert("NIK Harus Diisi");
                    Swal.fire({
                        title: 'Warning!',
                        text: 'Nama Lengkap Harus Diisi',
                        icon: 'warning',
                        confirmButtonText: 'Ok'
                    }).then((result) => {
                        $('#peresean_namalengkap').focus();
                    });
                    return false;
                } else if (peresean_username == "") {
                    //alert("NIK Harus Diisi");
                    Swal.fire({
                        title: 'Warning!',
                        text: 'Username Harus Diisi',
                        icon: 'warning',
                        confirmButtonText: 'Ok'
                    }).then((result) => {
                        $('#peresean_username').focus();
                    });
                    return false;
                } else if (peresean_nohp == "") {
                    //alert("NIK Harus Diisi");
                    Swal.fire({
                        title: 'Warning!',
                        text: 'No Handphone Harus Diisi',
                        icon: 'warning',
                        confirmButtonText: 'Ok'
                    }).then((result) => {
                        $('#peresean_nohp').focus();
                    });
                    return false;
                } else if (peresean_password == "") {
                    //alert("NIK Harus Diisi");
                    Swal.fire({
                        title: 'Warning!',
                        text: 'Password Harus Diisi',
                        icon: 'warning',
                        confirmButtonText: 'Ok'
                    }).then((result) => {
                        $('#peresean_password').focus();
                    });
                    return false;
                } else if (peresean_level == "") {
                    //alert("NIK Harus Diisi");
                    Swal.fire({
                        title: 'Warning!',
                        text: 'Level Harus Dipilih',
                        icon: 'warning',
                        confirmButtonText: 'Ok'
                    }).then((result) => {
                        $('#peresean_level').focus();
                    });
                    return false;
                }

            });

        });
    </script>
@endpush