{{--<form action="/satker/{{ $satker->id }}/update" method="post" id="frmSatker" name="frmSatker"--}}
<form action="{{ route('pereseanuser.update',$pereseanuser->id_user) }}" method="post" id="frmPereseanUser"
      name="frmPereseanUser"
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
                <input type="text" readonly value="{{ $pereseanuser->kode_pereseanuser }}" class="form-control"
                       name="uname_code_new_edit"
                       id="uname_code_new_edit"
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
                <input type="text" value="{{ $pereseanuser->nama_lengkap }}" class="form-control"
                       name="peresean_namalengkap_edit"
                       id="peresean_namalengkap_edit"
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
                <input type="text" readonly value="{{ $pereseanuser->username }}" class="form-control"
                       name="peresean_username_edit"
                       id="peresean_username_edit"
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
                <input type="number" value="{{ $pereseanuser->no_handphone }}" class="form-control" name="peresean_nohp_edit"
                       id="peresean_nohp_edit"
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
                <input type="password" value="" class="form-control" name="peresean_password_edit"
                       id="peresean_password_edit"
                       placeholder="Password">
            </div>
        </div>
    </div>

    <div class="row ">
        <center>Photo (Opsional)</center>
        <div class="col-12">
            <input type="file" name="foto_edit" id="foto_edit" class="form-control">
            <input type="hidden" name="old_foto_edit" id="old_foto_edit" value="{{ $pereseanuser->foto }}">
        </div>
    </div>

    <div class="row mt-2">
        <div class="col-12">
            <select name="peresean_level_edit" id="peresean_level_edit" class="form-select">
                <option value="">-Pilih Level-</option>
                <option {{ $pereseanuser->level=='superadmin'?'selected':'' }} value="superadmin">Administrator</option>
                <option {{ $pereseanuser->level=='kasub_perancang'?'selected':'' }} value="kasub_perancang">Kasub Perancang</option>
                <option {{ $pereseanuser->level=='perancang'?'selected':'' }} value="perancang">Perancang</option>
                <option {{ $pereseanuser->level=='pemda'?'selected':'' }} value="pemda">Pemda</option>
                <option {{ $pereseanuser->level=='guest'?'selected':'' }} value="guest">Guest</option>
                <option {{ $pereseanuser->level=='disable'?'selected':'' }} value="disable">Disable</option>
            </select>
        </div>
    </div>

    <div class="row mt-2">
        <div class="col-12">
            <div class="form-group">
                <button class="btn btn-primary w-100">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                         stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                         class="icon icon-tabler icons-tabler-outline icon-tabler-refresh">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                        <path d="M20 11a8.1 8.1 0 0 0 -15.5 -2m-.5 -4v4h4"/>
                        <path d="M4 13a8.1 8.1 0 0 0 15.5 2m.5 4v-4h-4"/>
                    </svg>
                    Update
                </button>
            </div>
        </div>
    </div>



</form>