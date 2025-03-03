/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MariaDB
 Source Server Version : 100420
 Source Host           : localhost:3306
 Source Schema         : peresean

 Target Server Type    : MariaDB
 Target Server Version : 100420
 File Encoding         : 65001

 Date: 10/02/2025 15:11:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_berita
-- ----------------------------
DROP TABLE IF EXISTS `tbl_berita`;
CREATE TABLE `tbl_berita`  (
  `id_berita` int(10) NOT NULL AUTO_INCREMENT,
  `nama_kegiatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tempat_kegiatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_kegiatan` datetime(0) NULL DEFAULT NULL,
  `poin_kegiatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `peserta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_input` datetime(0) NULL DEFAULT NULL,
  `tgl_update` datetime(0) NULL DEFAULT NULL,
  `status` enum('belum_diproses','sedang_diproses','perbaikan','draft_sedang_dibuat','menunggu_koreksi','selesai') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pesan_humas` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lamp_foto1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lamp_foto2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lamp_foto3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lamp_foto4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lamp_foto5` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lamp_foto6` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lamp_surat_undangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lamp_berita_acara` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lamp_surat_hasil` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lamp_lain` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_user` int(10) NOT NULL,
  `jenis_dokumen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `zona_dokumen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_draft` int(10) NOT NULL,
  `nama_perancang` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_perancang` int(10) NOT NULL,
  PRIMARY KEY (`id_berita`) USING BTREE,
  INDEX `FOREIGN`(`id_user`) USING BTREE,
  CONSTRAINT `tbl_berita_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 205 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_berita
-- ----------------------------
INSERT INTO `tbl_berita` VALUES (193, 'Pemkot Mataram Raperkada II', NULL, '2023-12-27 16:21:29', NULL, NULL, '2023-12-27 16:21:29', '2023-12-28 08:31:12', 'selesai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file/bahan_draft_raperda/VkRIK1U5R3BtNkovcnhvZG5GYWYvZz09.pdf', 'file/bahan_draft_raperda/SPP_JOHAN.pdf', 'file/bahan_draft_raperda/SPPD_olfi_27-29_September2023.pdf', NULL, 11, 'raperkada', 'pemkot_mataram', 175, 'Baiq Fina', 22);
INSERT INTO `tbl_berita` VALUES (194, 'Pemkot Mataram Raperkada I', NULL, '2023-12-28 08:38:06', NULL, NULL, '2023-12-28 08:38:06', '2023-12-29 08:57:37', 'selesai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file/bahan_draft_raperda/Kunaifi_Abdillah.pdf', 'file/bahan_draft_raperda/Kunaifi_Abdillah.docx', 'file/bahan_draft_raperda/Abdil.pdf', NULL, 11, 'raperkada', 'pemkot_mataram', 174, 'Baiq Rara', 23);
INSERT INTO `tbl_berita` VALUES (196, 'Raperda Pemkot Mataram I', NULL, '2023-12-28 15:27:43', NULL, NULL, '2023-12-28 15:27:43', '2023-12-28 15:48:56', 'selesai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file/bahan_draft_raperda/NTB_ZONASI_2023_(1)4.pdf', 'file/bahan_draft_raperda/4177_Surat_Undangan_Supervisi_Layanan_Teknologi_Informasi_dan_Training_of_Trainer_(TOT)44.pdf', 'file/bahan_draft_raperda/1._Permenkumham_Nomor_27_Tahun_20191.pdf', NULL, 11, 'raperda', 'pemkot_mataram', 176, 'Baiq Fina', 22);
INSERT INTO `tbl_berita` VALUES (197, 'Raperkada Pemkot Bima I EDIT', NULL, '2023-12-29 07:40:22', NULL, NULL, '2023-12-29 07:40:22', '2023-12-29 08:17:54', 'selesai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file/bahan_draft_raperda/JURNAL_mbk._Ulfa4.docx', 'file/bahan_draft_raperda/raperda_PDRD_hsl_rapatfinalisasi_citra,_uje,_riki313.docx', 'file/bahan_draft_raperda/raperda_PDRD_hsl_rapatfinalisasi_citra,_uje,_riki33.docx', NULL, 12, 'raperkada', 'pemkot_bima', 177, 'Baiq Rara', 23);
INSERT INTO `tbl_berita` VALUES (198, 'Draft Raperda Pemkot Bima II', NULL, '2023-12-29 08:36:46', NULL, NULL, '2023-12-29 08:36:46', '2023-12-29 08:42:20', 'selesai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file/bahan_draft_raperda/Surat_Pemberitahuan_Kelengkapan_Dokumen_Pengharmonisasian3.pdf', 'file/bahan_draft_raperda/NTB_ZONASI_2023_(1)6.pdf', 'file/bahan_draft_raperda/4177_Surat_Undangan_Supervisi_Layanan_Teknologi_Informasi_dan_Training_of_Trainer_(TOT)45.pdf', NULL, 12, 'raperda', 'pemkot_bima', 178, 'Baiq Rara', 23);
INSERT INTO `tbl_berita` VALUES (200, 'Tes isi draft raperkadaz', NULL, '2024-02-26 11:39:10', NULL, NULL, '2024-02-26 11:39:10', '2024-02-26 11:44:40', 'belum_diproses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'raperkada', 'pemprov_ntb', 181, NULL, 0);
INSERT INTO `tbl_berita` VALUES (201, 'Laboris labore corpo', NULL, '2024-02-29 11:54:54', NULL, NULL, '2024-02-29 11:54:54', '2024-03-22 14:55:38', 'belum_diproses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'raperkada', 'pemprov_ntb', 182, NULL, 0);
INSERT INTO `tbl_berita` VALUES (202, 'ntb testimonial mundial', NULL, '2024-04-30 11:10:37', NULL, NULL, '2024-04-30 11:10:37', '2024-08-15 09:50:46', 'belum_diproses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file/bahan_draft_raperda/4._SOP_Rekrutmen.pdf', NULL, NULL, NULL, 1, 'raperkada', 'pemprov_ntb', 183, 'Baiq Fina', 22);
INSERT INTO `tbl_berita` VALUES (203, 'Uji Testimonial  NTB RAPERDA', NULL, '2024-04-30 14:39:29', NULL, NULL, '2024-04-30 14:39:29', '2024-04-30 14:43:11', 'belum_diproses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'raperda', 'pemprov_ntb', 184, NULL, 0);
INSERT INTO `tbl_berita` VALUES (204, 'Reiciendis et repreh', NULL, '2024-08-15 10:00:27', NULL, NULL, '2024-08-15 10:00:27', '2024-08-15 10:19:03', 'belum_diproses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file/bahan_draft_raperda/kode_etik_terkait_pengelolaan_keuangan.pdf', NULL, NULL, NULL, 1, 'raperda', 'pemprov_ntb', 186, 'Baiq Fina', 22);

-- ----------------------------
-- Table structure for tbl_draft
-- ----------------------------
DROP TABLE IF EXISTS `tbl_draft`;
CREATE TABLE `tbl_draft`  (
  `id_draft_permohonan` int(10) NOT NULL AUTO_INCREMENT,
  `tgl_input` datetime(0) NULL DEFAULT NULL,
  `nama_draft_permohonan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` enum('belum_diproses','perbaikan','sedang_diproses','draft_sedang_dibuat','menunggu_koreksi','selesai') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jenis_dokumen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kode_pereseanuser` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lamp_surat_permohonan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `naskah_akademik_dll` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lamp_surat_keputusan_tim_penyusun` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lamp_rancangan_perda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lamp_surat_keputusan_dprd` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lamp_surat_keputusan_bersama` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `draft_harmonisasi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url_data_dukung` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `rancangan_perkada` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_user` int(10) NOT NULL,
  `zona_dokumen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_update` datetime(0) NULL DEFAULT NULL,
  `id_perancang` int(10) NOT NULL,
  `nama_perancang` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_draft_permohonan`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 187 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_draft
-- ----------------------------
INSERT INTO `tbl_draft` VALUES (174, '2023-12-27 15:51:01', 'Pemkot Mataram Raperkada I', 'selesai', 'raperkada', 'PRS-NTB-07', 'file/bahan_draft_raperda/Surat_Pemberitahuan_Kelengkapan_Dokumen_Pengharmonisasian.pdf', 'file/bahan_draft_raperda/NTB_ZONASI_2023_(1).pdf', NULL, NULL, NULL, NULL, 'file/bahan_draft_raperda/raperda_PDRD_hsl_rapatfinalisasi_citra,_uje,_riki.docx', 'null', 'file/bahan_draft_raperda/4177_Surat_Undangan_Supervisi_Layanan_Teknologi_Informasi_dan_Training_of_Trainer_(TOT)4.pdf', 11, 'pemkot_mataram', '2023-12-29 08:57:37', 23, 'Baiq Rara');
INSERT INTO `tbl_draft` VALUES (175, '2023-12-27 15:52:38', 'Pemkot Mataram Raperkada II', 'selesai', 'raperkada', 'PRS-NTB-07', 'file/bahan_draft_raperda/NTB_ZONASI_2023_(1)1.pdf', 'file/bahan_draft_raperda/4177_Surat_Undangan_Supervisi_Layanan_Teknologi_Informasi_dan_Training_of_Trainer_(TOT)41.pdf', NULL, NULL, NULL, NULL, 'file/bahan_draft_raperda/JURNAL_mbk._Ulfa.docx', 'null', 'file/bahan_draft_raperda/4177_Surat_Undangan_Supervisi_Layanan_Teknologi_Informasi_dan_Training_of_Trainer_(TOT).pdf', 11, 'pemkot_mataram', '2023-12-28 08:31:12', 22, 'Baiq Fina');
INSERT INTO `tbl_draft` VALUES (176, '2023-12-28 10:09:39', 'Raperda Pemkot Mataram I', 'selesai', 'raperda', 'PRS-NTB-07', 'file/bahan_draft_raperda/Surat_Pemberitahuan_Kelengkapan_Dokumen_Pengharmonisasian1.pdf', 'file/bahan_draft_raperda/NTB_ZONASI_2023_(1)3.pdf', 'file/bahan_draft_raperda/4177_Surat_Undangan_Supervisi_Layanan_Teknologi_Informasi_dan_Training_of_Trainer_(TOT)43.pdf', 'file/bahan_draft_raperda/1._Permenkumham_Nomor_27_Tahun_2019.pdf', 'file/bahan_draft_raperda/4177_Surat_Undangan_Supervisi_Layanan_Teknologi_Informasi_dan_Training_of_Trainer_(TOT)1.pdf', 'file/bahan_draft_raperda/Evalweb_TEMPLATE_Kanwil.pdf', 'file/bahan_draft_raperda/MEMAHAMI_PROSES_LOGIN_LARAVEL_DEFAULT.docx', 'null', NULL, 11, 'pemkot_mataram', '2023-12-28 15:48:56', 22, 'Baiq Fina');
INSERT INTO `tbl_draft` VALUES (177, '2023-12-28 16:23:04', 'Raperkada Pemkot Bima I EDIT', 'selesai', 'raperkada', 'PRS-NTB-08', 'file/bahan_draft_raperda/JURNAL_mbk._Ulfa2.docx', 'file/bahan_draft_raperda/raperda_PDRD_hsl_rapatfinalisasi_citra,_uje,_riki311.docx', NULL, NULL, NULL, NULL, 'file/bahan_draft_raperda/raperda_PDRD_hsl_rapatfinalisasi_citra,_uje,_riki1.docx', 'null', 'file/bahan_draft_raperda/raperda_PDRD_hsl_rapatfinalisasi_citra,_uje,_riki3.docx', 12, 'pemkot_bima', '2023-12-29 08:17:54', 23, 'Baiq Rara');
INSERT INTO `tbl_draft` VALUES (178, '2023-12-28 16:26:04', 'Draft Raperda Pemkot Bima II', 'selesai', 'raperda', 'PRS-NTB-08', 'file/bahan_draft_raperda/JURNAL_mbk._Ulfa3.docx', 'file/bahan_draft_raperda/raperda_PDRD_hsl_rapatfinalisasi_citra,_uje,_riki312.docx', 'file/bahan_draft_raperda/raperda_PDRD_hsl_rapatfinalisasi_citra,_uje,_riki32.docx', 'file/bahan_draft_raperda/Surat_Pemberitahuan_Kelengkapan_Dokumen_Pengharmonisasian2.pdf', 'file/bahan_draft_raperda/raperda_PDRD_hsl_rapatfinalisasi_citra,_uje,_riki2.docx', 'file/bahan_draft_raperda/NTB_ZONASI_2023_(1)5.pdf', 'file/bahan_draft_raperda/PANITIA_CATAR_1.docx', 'null', NULL, 12, 'pemkot_bima', '2023-12-29 08:42:20', 23, 'Baiq Rara');

-- ----------------------------
-- Table structure for tbl_notif
-- ----------------------------
DROP TABLE IF EXISTS `tbl_notif`;
CREATE TABLE `tbl_notif`  (
  `id_notif` int(11) NOT NULL AUTO_INCREMENT,
  `pengirim` int(11) NULL DEFAULT NULL,
  `penerima` int(11) NULL DEFAULT NULL,
  `pesan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_notif` datetime(0) NULL DEFAULT NULL,
  `baca_notif` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hapus_notif` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_berita` int(11) NOT NULL,
  PRIMARY KEY (`id_notif`) USING BTREE,
  INDEX `FOREIGN`(`id_berita`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 742 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_notif
-- ----------------------------
INSERT INTO `tbl_notif` VALUES (16, 2, 1, 'Mengirim bahan berita baru.', 'berita/v/d/p2', '2023-05-08 10:25:22', '1, ', NULL, 7);
INSERT INTO `tbl_notif` VALUES (17, 2, 2, 'Mengirim bahan berita baru.', 'berita/v/d/p2', '2023-05-08 10:25:22', '2, ', NULL, 7);
INSERT INTO `tbl_notif` VALUES (18, 2, 3, 'Mengirim bahan berita baru.', 'berita/v/d/p2', '2023-05-08 10:25:22', NULL, NULL, 7);
INSERT INTO `tbl_notif` VALUES (19, 2, 4, 'Mengirim bahan berita baru.', 'berita/v/d/p2', '2023-05-08 10:25:22', NULL, NULL, 7);
INSERT INTO `tbl_notif` VALUES (20, 2, 5, 'Mengirim bahan berita baru.', 'berita/v/d/p2', '2023-05-08 10:25:22', NULL, NULL, 7);
INSERT INTO `tbl_notif` VALUES (21, 2, 6, 'Mengirim bahan berita baru.', 'berita/v/d/p2', '2023-05-08 10:25:22', NULL, NULL, 7);
INSERT INTO `tbl_notif` VALUES (22, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/q2', '2023-05-09 14:59:21', '1, ', NULL, 8);
INSERT INTO `tbl_notif` VALUES (23, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/q2', '2023-05-09 14:59:21', NULL, NULL, 8);
INSERT INTO `tbl_notif` VALUES (24, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/q2', '2023-05-09 14:59:21', NULL, NULL, 8);
INSERT INTO `tbl_notif` VALUES (25, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/q2', '2023-05-09 14:59:21', NULL, NULL, 8);
INSERT INTO `tbl_notif` VALUES (26, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/q2', '2023-05-09 14:59:21', NULL, NULL, 8);
INSERT INTO `tbl_notif` VALUES (27, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/q2', '2023-05-09 14:59:21', NULL, NULL, 8);
INSERT INTO `tbl_notif` VALUES (28, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/rE', '2023-05-09 15:38:26', '1, ', NULL, 9);
INSERT INTO `tbl_notif` VALUES (29, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/rE', '2023-05-09 15:38:26', NULL, NULL, 9);
INSERT INTO `tbl_notif` VALUES (30, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/rE', '2023-05-09 15:38:26', NULL, NULL, 9);
INSERT INTO `tbl_notif` VALUES (31, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/rE', '2023-05-09 15:38:26', NULL, NULL, 9);
INSERT INTO `tbl_notif` VALUES (32, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/rE', '2023-05-09 15:38:26', NULL, NULL, 9);
INSERT INTO `tbl_notif` VALUES (33, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/rE', '2023-05-09 15:38:26', NULL, NULL, 9);
INSERT INTO `tbl_notif` VALUES (34, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/vm', '2023-05-09 15:39:18', '1, ', NULL, 10);
INSERT INTO `tbl_notif` VALUES (35, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/vm', '2023-05-09 15:39:18', NULL, NULL, 10);
INSERT INTO `tbl_notif` VALUES (36, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/vm', '2023-05-09 15:39:18', NULL, NULL, 10);
INSERT INTO `tbl_notif` VALUES (37, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/vm', '2023-05-09 15:39:18', NULL, NULL, 10);
INSERT INTO `tbl_notif` VALUES (38, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/vm', '2023-05-09 15:39:18', NULL, NULL, 10);
INSERT INTO `tbl_notif` VALUES (39, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/vm', '2023-05-09 15:39:18', NULL, NULL, 10);
INSERT INTO `tbl_notif` VALUES (40, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/wR', '2023-05-09 17:22:23', '1, ', NULL, 11);
INSERT INTO `tbl_notif` VALUES (41, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/wR', '2023-05-09 17:22:23', NULL, NULL, 11);
INSERT INTO `tbl_notif` VALUES (42, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/wR', '2023-05-09 17:22:23', NULL, NULL, 11);
INSERT INTO `tbl_notif` VALUES (43, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/wR', '2023-05-09 17:22:23', NULL, NULL, 11);
INSERT INTO `tbl_notif` VALUES (44, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/wR', '2023-05-09 17:22:23', NULL, NULL, 11);
INSERT INTO `tbl_notif` VALUES (45, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/wR', '2023-05-09 17:22:23', NULL, NULL, 11);
INSERT INTO `tbl_notif` VALUES (46, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/x9', '2023-05-09 17:32:27', '1, ', NULL, 12);
INSERT INTO `tbl_notif` VALUES (47, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/x9', '2023-05-09 17:32:27', NULL, NULL, 12);
INSERT INTO `tbl_notif` VALUES (48, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/x9', '2023-05-09 17:32:27', NULL, NULL, 12);
INSERT INTO `tbl_notif` VALUES (49, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/x9', '2023-05-09 17:32:27', NULL, NULL, 12);
INSERT INTO `tbl_notif` VALUES (50, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/x9', '2023-05-09 17:32:27', NULL, NULL, 12);
INSERT INTO `tbl_notif` VALUES (51, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/x9', '2023-05-09 17:32:27', NULL, NULL, 12);
INSERT INTO `tbl_notif` VALUES (52, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/y7', '2023-05-09 17:34:49', '1, ', NULL, 13);
INSERT INTO `tbl_notif` VALUES (53, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/y7', '2023-05-09 17:34:49', NULL, NULL, 13);
INSERT INTO `tbl_notif` VALUES (54, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/y7', '2023-05-09 17:34:49', NULL, NULL, 13);
INSERT INTO `tbl_notif` VALUES (55, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/y7', '2023-05-09 17:34:49', NULL, NULL, 13);
INSERT INTO `tbl_notif` VALUES (56, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/y7', '2023-05-09 17:34:49', NULL, NULL, 13);
INSERT INTO `tbl_notif` VALUES (57, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/y7', '2023-05-09 17:34:49', NULL, NULL, 13);
INSERT INTO `tbl_notif` VALUES (58, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/zY', '2023-05-09 18:10:54', '1, ', NULL, 14);
INSERT INTO `tbl_notif` VALUES (59, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/zY', '2023-05-09 18:10:54', NULL, NULL, 14);
INSERT INTO `tbl_notif` VALUES (60, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/zY', '2023-05-09 18:10:54', NULL, NULL, 14);
INSERT INTO `tbl_notif` VALUES (61, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/zY', '2023-05-09 18:10:54', NULL, NULL, 14);
INSERT INTO `tbl_notif` VALUES (62, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/zY', '2023-05-09 18:10:54', NULL, NULL, 14);
INSERT INTO `tbl_notif` VALUES (63, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/zY', '2023-05-09 18:10:54', NULL, NULL, 14);
INSERT INTO `tbl_notif` VALUES (64, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/AO', '2023-05-09 18:12:31', '1, ', NULL, 15);
INSERT INTO `tbl_notif` VALUES (65, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/AO', '2023-05-09 18:12:31', NULL, NULL, 15);
INSERT INTO `tbl_notif` VALUES (66, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/AO', '2023-05-09 18:12:31', NULL, NULL, 15);
INSERT INTO `tbl_notif` VALUES (67, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/AO', '2023-05-09 18:12:31', NULL, NULL, 15);
INSERT INTO `tbl_notif` VALUES (68, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/AO', '2023-05-09 18:12:31', NULL, NULL, 15);
INSERT INTO `tbl_notif` VALUES (69, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/AO', '2023-05-09 18:12:31', NULL, NULL, 15);
INSERT INTO `tbl_notif` VALUES (70, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/BX', '2023-05-09 18:21:11', '1, ', NULL, 16);
INSERT INTO `tbl_notif` VALUES (71, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/BX', '2023-05-09 18:21:11', NULL, NULL, 16);
INSERT INTO `tbl_notif` VALUES (72, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/BX', '2023-05-09 18:21:11', NULL, NULL, 16);
INSERT INTO `tbl_notif` VALUES (73, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/BX', '2023-05-09 18:21:11', NULL, NULL, 16);
INSERT INTO `tbl_notif` VALUES (74, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/BX', '2023-05-09 18:21:11', NULL, NULL, 16);
INSERT INTO `tbl_notif` VALUES (75, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/BX', '2023-05-09 18:21:11', NULL, NULL, 16);
INSERT INTO `tbl_notif` VALUES (76, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Dx', '2023-05-09 18:26:07', '1, ', NULL, 17);
INSERT INTO `tbl_notif` VALUES (77, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Dx', '2023-05-09 18:26:07', NULL, NULL, 17);
INSERT INTO `tbl_notif` VALUES (78, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Dx', '2023-05-09 18:26:07', NULL, NULL, 17);
INSERT INTO `tbl_notif` VALUES (79, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Dx', '2023-05-09 18:26:07', NULL, NULL, 17);
INSERT INTO `tbl_notif` VALUES (80, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Dx', '2023-05-09 18:26:07', NULL, NULL, 17);
INSERT INTO `tbl_notif` VALUES (81, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Dx', '2023-05-09 18:26:07', NULL, NULL, 17);
INSERT INTO `tbl_notif` VALUES (82, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Ev', '2023-05-09 18:49:06', '1, ', NULL, 18);
INSERT INTO `tbl_notif` VALUES (83, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Ev', '2023-05-09 18:49:06', NULL, NULL, 18);
INSERT INTO `tbl_notif` VALUES (84, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Ev', '2023-05-09 18:49:06', NULL, NULL, 18);
INSERT INTO `tbl_notif` VALUES (85, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Ev', '2023-05-09 18:49:06', NULL, NULL, 18);
INSERT INTO `tbl_notif` VALUES (86, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Ev', '2023-05-09 18:49:06', NULL, NULL, 18);
INSERT INTO `tbl_notif` VALUES (87, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Ev', '2023-05-09 18:49:06', NULL, NULL, 18);
INSERT INTO `tbl_notif` VALUES (88, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/VM', '2023-05-09 18:55:38', '1, ', NULL, 29);
INSERT INTO `tbl_notif` VALUES (89, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/VM', '2023-05-09 18:55:38', NULL, NULL, 29);
INSERT INTO `tbl_notif` VALUES (90, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/VM', '2023-05-09 18:55:38', NULL, NULL, 29);
INSERT INTO `tbl_notif` VALUES (91, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/VM', '2023-05-09 18:55:38', NULL, NULL, 29);
INSERT INTO `tbl_notif` VALUES (92, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/VM', '2023-05-09 18:55:38', NULL, NULL, 29);
INSERT INTO `tbl_notif` VALUES (93, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/VM', '2023-05-09 18:55:38', NULL, NULL, 29);
INSERT INTO `tbl_notif` VALUES (94, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/WJ', '2023-05-09 19:03:56', '1, ', NULL, 30);
INSERT INTO `tbl_notif` VALUES (95, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/WJ', '2023-05-09 19:03:56', NULL, NULL, 30);
INSERT INTO `tbl_notif` VALUES (96, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/WJ', '2023-05-09 19:03:56', NULL, NULL, 30);
INSERT INTO `tbl_notif` VALUES (97, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/WJ', '2023-05-09 19:03:56', NULL, NULL, 30);
INSERT INTO `tbl_notif` VALUES (98, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/WJ', '2023-05-09 19:03:56', NULL, NULL, 30);
INSERT INTO `tbl_notif` VALUES (99, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/WJ', '2023-05-09 19:03:56', NULL, NULL, 30);
INSERT INTO `tbl_notif` VALUES (100, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/XW', '2023-05-09 19:14:25', '1, ', NULL, 31);
INSERT INTO `tbl_notif` VALUES (101, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/XW', '2023-05-09 19:14:25', NULL, NULL, 31);
INSERT INTO `tbl_notif` VALUES (102, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/XW', '2023-05-09 19:14:25', NULL, NULL, 31);
INSERT INTO `tbl_notif` VALUES (103, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/XW', '2023-05-09 19:14:25', NULL, NULL, 31);
INSERT INTO `tbl_notif` VALUES (104, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/XW', '2023-05-09 19:14:25', NULL, NULL, 31);
INSERT INTO `tbl_notif` VALUES (105, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/XW', '2023-05-09 19:14:25', NULL, NULL, 31);
INSERT INTO `tbl_notif` VALUES (106, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/YK', '2023-05-09 19:20:06', '1, ', NULL, 32);
INSERT INTO `tbl_notif` VALUES (107, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/YK', '2023-05-09 19:20:06', NULL, NULL, 32);
INSERT INTO `tbl_notif` VALUES (108, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/YK', '2023-05-09 19:20:06', NULL, NULL, 32);
INSERT INTO `tbl_notif` VALUES (109, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/YK', '2023-05-09 19:20:06', NULL, NULL, 32);
INSERT INTO `tbl_notif` VALUES (110, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/YK', '2023-05-09 19:20:06', NULL, NULL, 32);
INSERT INTO `tbl_notif` VALUES (111, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/YK', '2023-05-09 19:20:06', NULL, NULL, 32);
INSERT INTO `tbl_notif` VALUES (112, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/ZJ', '2023-05-09 19:20:36', '1, ', NULL, 33);
INSERT INTO `tbl_notif` VALUES (113, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/ZJ', '2023-05-09 19:20:36', NULL, NULL, 33);
INSERT INTO `tbl_notif` VALUES (114, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/ZJ', '2023-05-09 19:20:36', NULL, NULL, 33);
INSERT INTO `tbl_notif` VALUES (115, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/ZJ', '2023-05-09 19:20:36', NULL, NULL, 33);
INSERT INTO `tbl_notif` VALUES (116, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/ZJ', '2023-05-09 19:20:36', NULL, NULL, 33);
INSERT INTO `tbl_notif` VALUES (117, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/ZJ', '2023-05-09 19:20:36', NULL, NULL, 33);
INSERT INTO `tbl_notif` VALUES (118, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/1R', '2023-05-09 19:30:52', '1, ', NULL, 34);
INSERT INTO `tbl_notif` VALUES (119, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/1R', '2023-05-09 19:30:52', NULL, NULL, 34);
INSERT INTO `tbl_notif` VALUES (120, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/1R', '2023-05-09 19:30:52', NULL, NULL, 34);
INSERT INTO `tbl_notif` VALUES (121, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/1R', '2023-05-09 19:30:52', NULL, NULL, 34);
INSERT INTO `tbl_notif` VALUES (122, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/1R', '2023-05-09 19:30:52', NULL, NULL, 34);
INSERT INTO `tbl_notif` VALUES (123, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/1R', '2023-05-09 19:30:52', NULL, NULL, 34);
INSERT INTO `tbl_notif` VALUES (124, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/2K', '2023-05-10 06:55:13', '1, ', NULL, 35);
INSERT INTO `tbl_notif` VALUES (125, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/2K', '2023-05-10 06:55:13', NULL, NULL, 35);
INSERT INTO `tbl_notif` VALUES (126, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/2K', '2023-05-10 06:55:13', NULL, NULL, 35);
INSERT INTO `tbl_notif` VALUES (127, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/2K', '2023-05-10 06:55:13', NULL, NULL, 35);
INSERT INTO `tbl_notif` VALUES (128, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/2K', '2023-05-10 06:55:13', NULL, NULL, 35);
INSERT INTO `tbl_notif` VALUES (129, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/2K', '2023-05-10 06:55:13', NULL, NULL, 35);
INSERT INTO `tbl_notif` VALUES (130, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/3M', '2023-05-10 06:58:34', '1, ', NULL, 36);
INSERT INTO `tbl_notif` VALUES (131, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/3M', '2023-05-10 06:58:34', NULL, NULL, 36);
INSERT INTO `tbl_notif` VALUES (132, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/3M', '2023-05-10 06:58:34', NULL, NULL, 36);
INSERT INTO `tbl_notif` VALUES (133, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/3M', '2023-05-10 06:58:34', NULL, NULL, 36);
INSERT INTO `tbl_notif` VALUES (134, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/3M', '2023-05-10 06:58:34', NULL, NULL, 36);
INSERT INTO `tbl_notif` VALUES (135, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/3M', '2023-05-10 06:58:34', NULL, NULL, 36);
INSERT INTO `tbl_notif` VALUES (136, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/41', '2023-05-10 07:32:32', '1, ', NULL, 37);
INSERT INTO `tbl_notif` VALUES (137, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/41', '2023-05-10 07:32:32', NULL, NULL, 37);
INSERT INTO `tbl_notif` VALUES (138, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/41', '2023-05-10 07:32:32', NULL, NULL, 37);
INSERT INTO `tbl_notif` VALUES (139, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/41', '2023-05-10 07:32:32', NULL, NULL, 37);
INSERT INTO `tbl_notif` VALUES (140, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/41', '2023-05-10 07:32:32', NULL, NULL, 37);
INSERT INTO `tbl_notif` VALUES (141, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/41', '2023-05-10 07:32:32', NULL, NULL, 37);
INSERT INTO `tbl_notif` VALUES (142, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/5B', '2023-05-10 14:43:09', '1, ', NULL, 38);
INSERT INTO `tbl_notif` VALUES (143, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/5B', '2023-05-10 14:43:09', NULL, NULL, 38);
INSERT INTO `tbl_notif` VALUES (144, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/5B', '2023-05-10 14:43:09', NULL, NULL, 38);
INSERT INTO `tbl_notif` VALUES (145, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/5B', '2023-05-10 14:43:09', NULL, NULL, 38);
INSERT INTO `tbl_notif` VALUES (146, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/5B', '2023-05-10 14:43:09', NULL, NULL, 38);
INSERT INTO `tbl_notif` VALUES (147, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/5B', '2023-05-10 14:43:09', NULL, NULL, 38);
INSERT INTO `tbl_notif` VALUES (148, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/6n', '2023-05-10 14:46:13', '1, ', NULL, 39);
INSERT INTO `tbl_notif` VALUES (149, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/6n', '2023-05-10 14:46:13', NULL, NULL, 39);
INSERT INTO `tbl_notif` VALUES (150, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/6n', '2023-05-10 14:46:13', NULL, NULL, 39);
INSERT INTO `tbl_notif` VALUES (151, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/6n', '2023-05-10 14:46:13', NULL, NULL, 39);
INSERT INTO `tbl_notif` VALUES (152, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/6n', '2023-05-10 14:46:13', NULL, NULL, 39);
INSERT INTO `tbl_notif` VALUES (153, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/6n', '2023-05-10 14:46:13', NULL, NULL, 39);
INSERT INTO `tbl_notif` VALUES (154, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/7j', '2023-05-10 15:01:11', '1, ', NULL, 40);
INSERT INTO `tbl_notif` VALUES (155, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/7j', '2023-05-10 15:01:11', NULL, NULL, 40);
INSERT INTO `tbl_notif` VALUES (156, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/7j', '2023-05-10 15:01:11', NULL, NULL, 40);
INSERT INTO `tbl_notif` VALUES (157, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/7j', '2023-05-10 15:01:11', NULL, NULL, 40);
INSERT INTO `tbl_notif` VALUES (158, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/7j', '2023-05-10 15:01:11', NULL, NULL, 40);
INSERT INTO `tbl_notif` VALUES (159, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/7j', '2023-05-10 15:01:11', NULL, NULL, 40);
INSERT INTO `tbl_notif` VALUES (160, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/8m', '2023-05-10 15:11:29', '1, ', NULL, 41);
INSERT INTO `tbl_notif` VALUES (161, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/8m', '2023-05-10 15:11:29', NULL, NULL, 41);
INSERT INTO `tbl_notif` VALUES (162, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/8m', '2023-05-10 15:11:29', NULL, NULL, 41);
INSERT INTO `tbl_notif` VALUES (163, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/8m', '2023-05-10 15:11:29', NULL, NULL, 41);
INSERT INTO `tbl_notif` VALUES (164, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/8m', '2023-05-10 15:11:29', NULL, NULL, 41);
INSERT INTO `tbl_notif` VALUES (165, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/8m', '2023-05-10 15:11:29', NULL, NULL, 41);
INSERT INTO `tbl_notif` VALUES (166, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/9x', '2023-05-10 19:41:40', '1, ', NULL, 42);
INSERT INTO `tbl_notif` VALUES (167, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/9x', '2023-05-10 19:41:40', NULL, NULL, 42);
INSERT INTO `tbl_notif` VALUES (168, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/9x', '2023-05-10 19:41:40', NULL, NULL, 42);
INSERT INTO `tbl_notif` VALUES (169, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/9x', '2023-05-10 19:41:40', NULL, NULL, 42);
INSERT INTO `tbl_notif` VALUES (170, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/9x', '2023-05-10 19:41:40', NULL, NULL, 42);
INSERT INTO `tbl_notif` VALUES (171, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/9x', '2023-05-10 19:41:40', NULL, NULL, 42);
INSERT INTO `tbl_notif` VALUES (172, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/0v', '2023-05-10 19:47:40', '1, ', NULL, 43);
INSERT INTO `tbl_notif` VALUES (173, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/0v', '2023-05-10 19:47:40', NULL, NULL, 43);
INSERT INTO `tbl_notif` VALUES (174, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/0v', '2023-05-10 19:47:40', NULL, NULL, 43);
INSERT INTO `tbl_notif` VALUES (175, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/0v', '2023-05-10 19:47:40', NULL, NULL, 43);
INSERT INTO `tbl_notif` VALUES (176, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/0v', '2023-05-10 19:47:40', NULL, NULL, 43);
INSERT INTO `tbl_notif` VALUES (177, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/0v', '2023-05-10 19:47:40', NULL, NULL, 43);
INSERT INTO `tbl_notif` VALUES (178, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/gJY', '2023-05-10 19:49:59', '1, ', NULL, 44);
INSERT INTO `tbl_notif` VALUES (179, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/gJY', '2023-05-10 19:49:59', NULL, NULL, 44);
INSERT INTO `tbl_notif` VALUES (180, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/gJY', '2023-05-10 19:49:59', NULL, NULL, 44);
INSERT INTO `tbl_notif` VALUES (181, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/gJY', '2023-05-10 19:49:59', NULL, NULL, 44);
INSERT INTO `tbl_notif` VALUES (182, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/gJY', '2023-05-10 19:49:59', NULL, NULL, 44);
INSERT INTO `tbl_notif` VALUES (183, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/gJY', '2023-05-10 19:49:59', NULL, NULL, 44);
INSERT INTO `tbl_notif` VALUES (184, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/jRR', '2023-05-10 19:50:36', '1, ', NULL, 45);
INSERT INTO `tbl_notif` VALUES (185, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/jRR', '2023-05-10 19:50:36', NULL, NULL, 45);
INSERT INTO `tbl_notif` VALUES (186, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/jRR', '2023-05-10 19:50:36', NULL, NULL, 45);
INSERT INTO `tbl_notif` VALUES (187, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/jRR', '2023-05-10 19:50:36', NULL, NULL, 45);
INSERT INTO `tbl_notif` VALUES (188, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/jRR', '2023-05-10 19:50:36', NULL, NULL, 45);
INSERT INTO `tbl_notif` VALUES (189, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/jRR', '2023-05-10 19:50:36', NULL, NULL, 45);
INSERT INTO `tbl_notif` VALUES (190, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/kR5', '2023-05-10 19:56:19', '1, ', NULL, 46);
INSERT INTO `tbl_notif` VALUES (191, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/kR5', '2023-05-10 19:56:19', NULL, NULL, 46);
INSERT INTO `tbl_notif` VALUES (192, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/kR5', '2023-05-10 19:56:19', NULL, NULL, 46);
INSERT INTO `tbl_notif` VALUES (193, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/kR5', '2023-05-10 19:56:19', NULL, NULL, 46);
INSERT INTO `tbl_notif` VALUES (194, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/kR5', '2023-05-10 19:56:19', NULL, NULL, 46);
INSERT INTO `tbl_notif` VALUES (195, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/kR5', '2023-05-10 19:56:19', NULL, NULL, 46);
INSERT INTO `tbl_notif` VALUES (196, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/lY5', '2023-05-12 08:26:34', '1, ', NULL, 47);
INSERT INTO `tbl_notif` VALUES (197, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/lY5', '2023-05-12 08:26:34', NULL, NULL, 47);
INSERT INTO `tbl_notif` VALUES (198, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/lY5', '2023-05-12 08:26:34', NULL, NULL, 47);
INSERT INTO `tbl_notif` VALUES (199, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/lY5', '2023-05-12 08:26:34', NULL, NULL, 47);
INSERT INTO `tbl_notif` VALUES (200, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/lY5', '2023-05-12 08:26:34', NULL, NULL, 47);
INSERT INTO `tbl_notif` VALUES (201, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/lY5', '2023-05-12 08:26:34', NULL, NULL, 47);
INSERT INTO `tbl_notif` VALUES (202, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/mZO', '2023-05-12 08:52:59', '1, ', NULL, 48);
INSERT INTO `tbl_notif` VALUES (203, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/mZO', '2023-05-12 08:52:59', NULL, NULL, 48);
INSERT INTO `tbl_notif` VALUES (204, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/mZO', '2023-05-12 08:52:59', NULL, NULL, 48);
INSERT INTO `tbl_notif` VALUES (205, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/mZO', '2023-05-12 08:52:59', NULL, NULL, 48);
INSERT INTO `tbl_notif` VALUES (206, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/mZO', '2023-05-12 08:52:59', NULL, NULL, 48);
INSERT INTO `tbl_notif` VALUES (207, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/mZO', '2023-05-12 08:52:59', NULL, NULL, 48);
INSERT INTO `tbl_notif` VALUES (208, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/n5R', '2023-05-12 08:53:24', '1, ', NULL, 49);
INSERT INTO `tbl_notif` VALUES (209, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/n5R', '2023-05-12 08:53:24', NULL, NULL, 49);
INSERT INTO `tbl_notif` VALUES (210, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/n5R', '2023-05-12 08:53:24', NULL, NULL, 49);
INSERT INTO `tbl_notif` VALUES (211, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/n5R', '2023-05-12 08:53:24', NULL, NULL, 49);
INSERT INTO `tbl_notif` VALUES (212, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/n5R', '2023-05-12 08:53:24', NULL, NULL, 49);
INSERT INTO `tbl_notif` VALUES (213, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/n5R', '2023-05-12 08:53:24', NULL, NULL, 49);
INSERT INTO `tbl_notif` VALUES (214, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/o2j', '2023-05-12 08:55:57', '1, ', NULL, 50);
INSERT INTO `tbl_notif` VALUES (215, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/o2j', '2023-05-12 08:55:57', NULL, NULL, 50);
INSERT INTO `tbl_notif` VALUES (216, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/o2j', '2023-05-12 08:55:57', NULL, NULL, 50);
INSERT INTO `tbl_notif` VALUES (217, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/o2j', '2023-05-12 08:55:57', NULL, NULL, 50);
INSERT INTO `tbl_notif` VALUES (218, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/o2j', '2023-05-12 08:55:57', NULL, NULL, 50);
INSERT INTO `tbl_notif` VALUES (219, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/o2j', '2023-05-12 08:55:57', NULL, NULL, 50);
INSERT INTO `tbl_notif` VALUES (220, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/pY2', '2023-05-12 08:58:01', '1, ', NULL, 51);
INSERT INTO `tbl_notif` VALUES (221, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/pY2', '2023-05-12 08:58:01', NULL, NULL, 51);
INSERT INTO `tbl_notif` VALUES (222, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/pY2', '2023-05-12 08:58:01', NULL, NULL, 51);
INSERT INTO `tbl_notif` VALUES (223, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/pY2', '2023-05-12 08:58:01', NULL, NULL, 51);
INSERT INTO `tbl_notif` VALUES (224, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/pY2', '2023-05-12 08:58:01', NULL, NULL, 51);
INSERT INTO `tbl_notif` VALUES (225, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/pY2', '2023-05-12 08:58:01', NULL, NULL, 51);
INSERT INTO `tbl_notif` VALUES (226, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/qx2', '2023-05-12 09:18:30', '1, ', NULL, 52);
INSERT INTO `tbl_notif` VALUES (227, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/qx2', '2023-05-12 09:18:30', NULL, NULL, 52);
INSERT INTO `tbl_notif` VALUES (228, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/qx2', '2023-05-12 09:18:30', NULL, NULL, 52);
INSERT INTO `tbl_notif` VALUES (229, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/qx2', '2023-05-12 09:18:30', NULL, NULL, 52);
INSERT INTO `tbl_notif` VALUES (230, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/qx2', '2023-05-12 09:18:30', NULL, NULL, 52);
INSERT INTO `tbl_notif` VALUES (231, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/qx2', '2023-05-12 09:18:30', NULL, NULL, 52);
INSERT INTO `tbl_notif` VALUES (232, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/rkE', '2023-05-12 09:22:45', '1, ', NULL, 53);
INSERT INTO `tbl_notif` VALUES (233, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/rkE', '2023-05-12 09:22:45', NULL, NULL, 53);
INSERT INTO `tbl_notif` VALUES (234, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/rkE', '2023-05-12 09:22:45', NULL, NULL, 53);
INSERT INTO `tbl_notif` VALUES (235, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/rkE', '2023-05-12 09:22:45', NULL, NULL, 53);
INSERT INTO `tbl_notif` VALUES (236, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/rkE', '2023-05-12 09:22:45', NULL, NULL, 53);
INSERT INTO `tbl_notif` VALUES (237, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/rkE', '2023-05-12 09:22:45', NULL, NULL, 53);
INSERT INTO `tbl_notif` VALUES (238, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/v2m', '2023-05-12 09:25:31', '1, ', NULL, 54);
INSERT INTO `tbl_notif` VALUES (239, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/v2m', '2023-05-12 09:25:31', NULL, NULL, 54);
INSERT INTO `tbl_notif` VALUES (240, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/v2m', '2023-05-12 09:25:31', NULL, NULL, 54);
INSERT INTO `tbl_notif` VALUES (241, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/v2m', '2023-05-12 09:25:31', NULL, NULL, 54);
INSERT INTO `tbl_notif` VALUES (242, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/v2m', '2023-05-12 09:25:31', NULL, NULL, 54);
INSERT INTO `tbl_notif` VALUES (243, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/v2m', '2023-05-12 09:25:31', NULL, NULL, 54);
INSERT INTO `tbl_notif` VALUES (244, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/wpR', '2023-05-12 09:27:30', '1, ', NULL, 55);
INSERT INTO `tbl_notif` VALUES (245, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/wpR', '2023-05-12 09:27:30', NULL, NULL, 55);
INSERT INTO `tbl_notif` VALUES (246, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/wpR', '2023-05-12 09:27:30', NULL, NULL, 55);
INSERT INTO `tbl_notif` VALUES (247, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/wpR', '2023-05-12 09:27:30', NULL, NULL, 55);
INSERT INTO `tbl_notif` VALUES (248, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/wpR', '2023-05-12 09:27:30', NULL, NULL, 55);
INSERT INTO `tbl_notif` VALUES (249, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/wpR', '2023-05-12 09:27:30', NULL, NULL, 55);
INSERT INTO `tbl_notif` VALUES (250, 8, 1, 'Mengirim bahan berita baru.', 'berita/v/d/xk9', '2023-05-12 14:51:54', '1, ', NULL, 56);
INSERT INTO `tbl_notif` VALUES (251, 8, 2, 'Mengirim bahan berita baru.', 'berita/v/d/xk9', '2023-05-12 14:51:54', NULL, NULL, 56);
INSERT INTO `tbl_notif` VALUES (252, 8, 3, 'Mengirim bahan berita baru.', 'berita/v/d/xk9', '2023-05-12 14:51:54', NULL, NULL, 56);
INSERT INTO `tbl_notif` VALUES (253, 8, 4, 'Mengirim bahan berita baru.', 'berita/v/d/xk9', '2023-05-12 14:51:54', NULL, NULL, 56);
INSERT INTO `tbl_notif` VALUES (254, 8, 5, 'Mengirim bahan berita baru.', 'berita/v/d/xk9', '2023-05-12 14:51:54', NULL, NULL, 56);
INSERT INTO `tbl_notif` VALUES (255, 8, 6, 'Mengirim bahan berita baru.', 'berita/v/d/xk9', '2023-05-12 14:51:54', NULL, NULL, 56);
INSERT INTO `tbl_notif` VALUES (256, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/ADO', '2023-05-23 13:46:58', '1, ', NULL, 59);
INSERT INTO `tbl_notif` VALUES (257, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/ADO', '2023-05-23 13:46:58', NULL, NULL, 59);
INSERT INTO `tbl_notif` VALUES (258, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/ADO', '2023-05-23 13:46:58', NULL, NULL, 59);
INSERT INTO `tbl_notif` VALUES (259, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/ADO', '2023-05-23 13:46:58', NULL, NULL, 59);
INSERT INTO `tbl_notif` VALUES (260, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/ADO', '2023-05-23 13:46:58', NULL, NULL, 59);
INSERT INTO `tbl_notif` VALUES (261, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/ADO', '2023-05-23 13:46:58', NULL, NULL, 59);
INSERT INTO `tbl_notif` VALUES (262, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Dkx', '2023-05-29 13:31:33', '1, ', NULL, 61);
INSERT INTO `tbl_notif` VALUES (263, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Dkx', '2023-05-29 13:31:33', NULL, NULL, 61);
INSERT INTO `tbl_notif` VALUES (264, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Dkx', '2023-05-29 13:31:33', NULL, NULL, 61);
INSERT INTO `tbl_notif` VALUES (265, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Dkx', '2023-05-29 13:31:33', NULL, NULL, 61);
INSERT INTO `tbl_notif` VALUES (266, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Dkx', '2023-05-29 13:31:33', NULL, NULL, 61);
INSERT INTO `tbl_notif` VALUES (267, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Dkx', '2023-05-29 13:31:33', NULL, NULL, 61);
INSERT INTO `tbl_notif` VALUES (268, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/ERv', '2023-05-29 13:49:14', '1, ', NULL, 62);
INSERT INTO `tbl_notif` VALUES (269, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/ERv', '2023-05-29 13:49:14', NULL, NULL, 62);
INSERT INTO `tbl_notif` VALUES (270, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/ERv', '2023-05-29 13:49:14', NULL, NULL, 62);
INSERT INTO `tbl_notif` VALUES (271, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/ERv', '2023-05-29 13:49:14', NULL, NULL, 62);
INSERT INTO `tbl_notif` VALUES (272, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/ERv', '2023-05-29 13:49:14', NULL, NULL, 62);
INSERT INTO `tbl_notif` VALUES (273, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/ERv', '2023-05-29 13:49:14', NULL, NULL, 62);
INSERT INTO `tbl_notif` VALUES (274, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/G67', '2023-05-30 13:56:14', '1, ', NULL, 63);
INSERT INTO `tbl_notif` VALUES (275, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/G67', '2023-05-30 13:56:14', NULL, NULL, 63);
INSERT INTO `tbl_notif` VALUES (276, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/G67', '2023-05-30 13:56:14', NULL, NULL, 63);
INSERT INTO `tbl_notif` VALUES (277, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/G67', '2023-05-30 13:56:14', NULL, NULL, 63);
INSERT INTO `tbl_notif` VALUES (278, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/G67', '2023-05-30 13:56:14', NULL, NULL, 63);
INSERT INTO `tbl_notif` VALUES (279, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/G67', '2023-05-30 13:56:14', NULL, NULL, 63);
INSERT INTO `tbl_notif` VALUES (280, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/J62', '2023-05-30 13:57:29', '1, ', NULL, 64);
INSERT INTO `tbl_notif` VALUES (281, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/J62', '2023-05-30 13:57:29', NULL, NULL, 64);
INSERT INTO `tbl_notif` VALUES (282, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/J62', '2023-05-30 13:57:29', NULL, NULL, 64);
INSERT INTO `tbl_notif` VALUES (283, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/J62', '2023-05-30 13:57:29', NULL, NULL, 64);
INSERT INTO `tbl_notif` VALUES (284, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/J62', '2023-05-30 13:57:29', NULL, NULL, 64);
INSERT INTO `tbl_notif` VALUES (285, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/J62', '2023-05-30 13:57:29', NULL, NULL, 64);
INSERT INTO `tbl_notif` VALUES (286, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/G67', '2023-05-30 14:15:30', '1, ', NULL, 63);
INSERT INTO `tbl_notif` VALUES (287, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/G67', '2023-05-30 14:15:30', NULL, NULL, 63);
INSERT INTO `tbl_notif` VALUES (288, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/G67', '2023-05-30 14:15:30', NULL, NULL, 63);
INSERT INTO `tbl_notif` VALUES (289, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/G67', '2023-05-30 14:15:30', NULL, NULL, 63);
INSERT INTO `tbl_notif` VALUES (290, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/G67', '2023-05-30 14:15:30', NULL, NULL, 63);
INSERT INTO `tbl_notif` VALUES (291, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/G67', '2023-05-30 14:15:30', NULL, NULL, 63);
INSERT INTO `tbl_notif` VALUES (292, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/J62', '2023-05-30 14:33:00', '1, ', NULL, 64);
INSERT INTO `tbl_notif` VALUES (293, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/J62', '2023-05-30 14:33:00', NULL, NULL, 64);
INSERT INTO `tbl_notif` VALUES (294, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/J62', '2023-05-30 14:33:00', NULL, NULL, 64);
INSERT INTO `tbl_notif` VALUES (295, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/J62', '2023-05-30 14:33:00', NULL, NULL, 64);
INSERT INTO `tbl_notif` VALUES (296, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/J62', '2023-05-30 14:33:00', NULL, NULL, 64);
INSERT INTO `tbl_notif` VALUES (297, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/J62', '2023-05-30 14:33:00', NULL, NULL, 64);
INSERT INTO `tbl_notif` VALUES (298, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/KrR', '2023-05-30 14:34:18', '1, ', NULL, 65);
INSERT INTO `tbl_notif` VALUES (299, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/KrR', '2023-05-30 14:34:18', NULL, NULL, 65);
INSERT INTO `tbl_notif` VALUES (300, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/KrR', '2023-05-30 14:34:18', NULL, NULL, 65);
INSERT INTO `tbl_notif` VALUES (301, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/KrR', '2023-05-30 14:34:18', NULL, NULL, 65);
INSERT INTO `tbl_notif` VALUES (302, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/KrR', '2023-05-30 14:34:18', NULL, NULL, 65);
INSERT INTO `tbl_notif` VALUES (303, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/KrR', '2023-05-30 14:34:18', NULL, NULL, 65);
INSERT INTO `tbl_notif` VALUES (304, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/L9w', '2023-05-30 14:55:45', '1, ', NULL, 66);
INSERT INTO `tbl_notif` VALUES (305, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/L9w', '2023-05-30 14:55:45', NULL, NULL, 66);
INSERT INTO `tbl_notif` VALUES (306, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/L9w', '2023-05-30 14:55:45', NULL, NULL, 66);
INSERT INTO `tbl_notif` VALUES (307, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/L9w', '2023-05-30 14:55:45', NULL, NULL, 66);
INSERT INTO `tbl_notif` VALUES (308, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/L9w', '2023-05-30 14:55:45', NULL, NULL, 66);
INSERT INTO `tbl_notif` VALUES (309, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/L9w', '2023-05-30 14:55:45', NULL, NULL, 66);
INSERT INTO `tbl_notif` VALUES (310, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/M8A', '2023-05-31 08:36:29', '1, ', NULL, 67);
INSERT INTO `tbl_notif` VALUES (311, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/M8A', '2023-05-31 08:36:29', NULL, NULL, 67);
INSERT INTO `tbl_notif` VALUES (312, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/M8A', '2023-05-31 08:36:29', NULL, NULL, 67);
INSERT INTO `tbl_notif` VALUES (313, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/M8A', '2023-05-31 08:36:29', NULL, NULL, 67);
INSERT INTO `tbl_notif` VALUES (314, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/M8A', '2023-05-31 08:36:29', NULL, NULL, 67);
INSERT INTO `tbl_notif` VALUES (315, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/M8A', '2023-05-31 08:36:29', NULL, NULL, 67);
INSERT INTO `tbl_notif` VALUES (316, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Nk6', '2023-05-31 09:01:18', '1, ', NULL, 68);
INSERT INTO `tbl_notif` VALUES (317, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Nk6', '2023-05-31 09:01:18', NULL, NULL, 68);
INSERT INTO `tbl_notif` VALUES (318, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Nk6', '2023-05-31 09:01:18', NULL, NULL, 68);
INSERT INTO `tbl_notif` VALUES (319, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Nk6', '2023-05-31 09:01:18', NULL, NULL, 68);
INSERT INTO `tbl_notif` VALUES (320, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Nk6', '2023-05-31 09:01:18', NULL, NULL, 68);
INSERT INTO `tbl_notif` VALUES (321, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Nk6', '2023-05-31 09:01:18', NULL, NULL, 68);
INSERT INTO `tbl_notif` VALUES (322, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/OYp', '2023-05-31 09:13:45', '1, ', NULL, 69);
INSERT INTO `tbl_notif` VALUES (323, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/OYp', '2023-05-31 09:13:45', NULL, NULL, 69);
INSERT INTO `tbl_notif` VALUES (324, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/OYp', '2023-05-31 09:13:45', NULL, NULL, 69);
INSERT INTO `tbl_notif` VALUES (325, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/OYp', '2023-05-31 09:13:45', NULL, NULL, 69);
INSERT INTO `tbl_notif` VALUES (326, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/OYp', '2023-05-31 09:13:45', NULL, NULL, 69);
INSERT INTO `tbl_notif` VALUES (327, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/OYp', '2023-05-31 09:13:45', NULL, NULL, 69);
INSERT INTO `tbl_notif` VALUES (328, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/PNw', '2023-05-31 09:18:47', '1, ', NULL, 70);
INSERT INTO `tbl_notif` VALUES (329, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/PNw', '2023-05-31 09:18:47', NULL, NULL, 70);
INSERT INTO `tbl_notif` VALUES (330, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/PNw', '2023-05-31 09:18:47', NULL, NULL, 70);
INSERT INTO `tbl_notif` VALUES (331, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/PNw', '2023-05-31 09:18:47', NULL, NULL, 70);
INSERT INTO `tbl_notif` VALUES (332, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/PNw', '2023-05-31 09:18:47', NULL, NULL, 70);
INSERT INTO `tbl_notif` VALUES (333, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/PNw', '2023-05-31 09:18:47', NULL, NULL, 70);
INSERT INTO `tbl_notif` VALUES (334, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/QWl', '2023-05-31 10:54:02', '1, ', NULL, 71);
INSERT INTO `tbl_notif` VALUES (335, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/QWl', '2023-05-31 10:54:02', NULL, NULL, 71);
INSERT INTO `tbl_notif` VALUES (336, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/QWl', '2023-05-31 10:54:02', NULL, NULL, 71);
INSERT INTO `tbl_notif` VALUES (337, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/QWl', '2023-05-31 10:54:02', NULL, NULL, 71);
INSERT INTO `tbl_notif` VALUES (338, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/QWl', '2023-05-31 10:54:02', NULL, NULL, 71);
INSERT INTO `tbl_notif` VALUES (339, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/QWl', '2023-05-31 10:54:02', NULL, NULL, 71);
INSERT INTO `tbl_notif` VALUES (340, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/R6q', '2023-05-31 13:40:15', '1, ', NULL, 72);
INSERT INTO `tbl_notif` VALUES (341, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/R6q', '2023-05-31 13:40:15', NULL, NULL, 72);
INSERT INTO `tbl_notif` VALUES (342, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/R6q', '2023-05-31 13:40:15', NULL, NULL, 72);
INSERT INTO `tbl_notif` VALUES (343, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/R6q', '2023-05-31 13:40:15', NULL, NULL, 72);
INSERT INTO `tbl_notif` VALUES (344, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/R6q', '2023-05-31 13:40:15', NULL, NULL, 72);
INSERT INTO `tbl_notif` VALUES (345, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/R6q', '2023-05-31 13:40:15', NULL, NULL, 72);
INSERT INTO `tbl_notif` VALUES (346, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/VOM', '2023-05-31 13:53:33', '1, ', NULL, 73);
INSERT INTO `tbl_notif` VALUES (347, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/VOM', '2023-05-31 13:53:33', NULL, NULL, 73);
INSERT INTO `tbl_notif` VALUES (348, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/VOM', '2023-05-31 13:53:33', NULL, NULL, 73);
INSERT INTO `tbl_notif` VALUES (349, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/VOM', '2023-05-31 13:53:33', NULL, NULL, 73);
INSERT INTO `tbl_notif` VALUES (350, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/VOM', '2023-05-31 13:53:33', NULL, NULL, 73);
INSERT INTO `tbl_notif` VALUES (351, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/VOM', '2023-05-31 13:53:33', NULL, NULL, 73);
INSERT INTO `tbl_notif` VALUES (352, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/W6J', '2023-05-31 14:08:17', '1, ', NULL, 74);
INSERT INTO `tbl_notif` VALUES (353, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/W6J', '2023-05-31 14:08:17', NULL, NULL, 74);
INSERT INTO `tbl_notif` VALUES (354, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/W6J', '2023-05-31 14:08:17', NULL, NULL, 74);
INSERT INTO `tbl_notif` VALUES (355, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/W6J', '2023-05-31 14:08:17', NULL, NULL, 74);
INSERT INTO `tbl_notif` VALUES (356, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/W6J', '2023-05-31 14:08:17', NULL, NULL, 74);
INSERT INTO `tbl_notif` VALUES (357, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/W6J', '2023-05-31 14:08:17', NULL, NULL, 74);
INSERT INTO `tbl_notif` VALUES (358, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/XDW', '2023-05-31 14:10:17', '1, ', NULL, 75);
INSERT INTO `tbl_notif` VALUES (359, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/XDW', '2023-05-31 14:10:17', NULL, NULL, 75);
INSERT INTO `tbl_notif` VALUES (360, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/XDW', '2023-05-31 14:10:17', NULL, NULL, 75);
INSERT INTO `tbl_notif` VALUES (361, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/XDW', '2023-05-31 14:10:17', NULL, NULL, 75);
INSERT INTO `tbl_notif` VALUES (362, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/XDW', '2023-05-31 14:10:17', NULL, NULL, 75);
INSERT INTO `tbl_notif` VALUES (363, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/XDW', '2023-05-31 14:10:17', NULL, NULL, 75);
INSERT INTO `tbl_notif` VALUES (364, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/YEK', '2023-05-31 14:15:37', '1, ', NULL, 76);
INSERT INTO `tbl_notif` VALUES (365, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/YEK', '2023-05-31 14:15:37', NULL, NULL, 76);
INSERT INTO `tbl_notif` VALUES (366, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/YEK', '2023-05-31 14:15:37', NULL, NULL, 76);
INSERT INTO `tbl_notif` VALUES (367, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/YEK', '2023-05-31 14:15:37', NULL, NULL, 76);
INSERT INTO `tbl_notif` VALUES (368, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/YEK', '2023-05-31 14:15:37', NULL, NULL, 76);
INSERT INTO `tbl_notif` VALUES (369, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/YEK', '2023-05-31 14:15:37', NULL, NULL, 76);
INSERT INTO `tbl_notif` VALUES (370, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Z6J', '2023-05-31 14:20:26', '1, ', NULL, 77);
INSERT INTO `tbl_notif` VALUES (371, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Z6J', '2023-05-31 14:20:26', NULL, NULL, 77);
INSERT INTO `tbl_notif` VALUES (372, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Z6J', '2023-05-31 14:20:26', NULL, NULL, 77);
INSERT INTO `tbl_notif` VALUES (373, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Z6J', '2023-05-31 14:20:26', NULL, NULL, 77);
INSERT INTO `tbl_notif` VALUES (374, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Z6J', '2023-05-31 14:20:26', NULL, NULL, 77);
INSERT INTO `tbl_notif` VALUES (375, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Z6J', '2023-05-31 14:20:26', NULL, NULL, 77);
INSERT INTO `tbl_notif` VALUES (376, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/1wR', '2023-05-31 14:21:27', '1, ', NULL, 78);
INSERT INTO `tbl_notif` VALUES (377, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/1wR', '2023-05-31 14:21:27', NULL, NULL, 78);
INSERT INTO `tbl_notif` VALUES (378, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/1wR', '2023-05-31 14:21:27', NULL, NULL, 78);
INSERT INTO `tbl_notif` VALUES (379, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/1wR', '2023-05-31 14:21:27', NULL, NULL, 78);
INSERT INTO `tbl_notif` VALUES (380, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/1wR', '2023-05-31 14:21:27', NULL, NULL, 78);
INSERT INTO `tbl_notif` VALUES (381, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/1wR', '2023-05-31 14:21:27', NULL, NULL, 78);
INSERT INTO `tbl_notif` VALUES (382, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/2kK', '2023-05-31 14:23:27', '1, ', NULL, 79);
INSERT INTO `tbl_notif` VALUES (383, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/2kK', '2023-05-31 14:23:27', NULL, NULL, 79);
INSERT INTO `tbl_notif` VALUES (384, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/2kK', '2023-05-31 14:23:27', NULL, NULL, 79);
INSERT INTO `tbl_notif` VALUES (385, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/2kK', '2023-05-31 14:23:27', NULL, NULL, 79);
INSERT INTO `tbl_notif` VALUES (386, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/2kK', '2023-05-31 14:23:27', NULL, NULL, 79);
INSERT INTO `tbl_notif` VALUES (387, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/2kK', '2023-05-31 14:23:27', NULL, NULL, 79);
INSERT INTO `tbl_notif` VALUES (388, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/31M', '2023-06-01 07:28:28', '1, ', NULL, 80);
INSERT INTO `tbl_notif` VALUES (389, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/31M', '2023-06-01 07:28:28', NULL, NULL, 80);
INSERT INTO `tbl_notif` VALUES (390, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/31M', '2023-06-01 07:28:28', NULL, NULL, 80);
INSERT INTO `tbl_notif` VALUES (391, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/31M', '2023-06-01 07:28:28', NULL, NULL, 80);
INSERT INTO `tbl_notif` VALUES (392, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/31M', '2023-06-01 07:28:28', NULL, NULL, 80);
INSERT INTO `tbl_notif` VALUES (393, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/31M', '2023-06-01 07:28:28', NULL, NULL, 80);
INSERT INTO `tbl_notif` VALUES (394, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/4x1', '2023-06-03 08:14:54', '1, ', NULL, 81);
INSERT INTO `tbl_notif` VALUES (395, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/4x1', '2023-06-03 08:14:54', NULL, NULL, 81);
INSERT INTO `tbl_notif` VALUES (396, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/4x1', '2023-06-03 08:14:54', NULL, NULL, 81);
INSERT INTO `tbl_notif` VALUES (397, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/4x1', '2023-06-03 08:14:54', NULL, NULL, 81);
INSERT INTO `tbl_notif` VALUES (398, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/4x1', '2023-06-03 08:14:54', NULL, NULL, 81);
INSERT INTO `tbl_notif` VALUES (399, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/4x1', '2023-06-03 08:14:54', NULL, NULL, 81);
INSERT INTO `tbl_notif` VALUES (400, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/5yB', '2023-06-03 11:21:00', '1, ', NULL, 82);
INSERT INTO `tbl_notif` VALUES (401, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/5yB', '2023-06-03 11:21:00', NULL, NULL, 82);
INSERT INTO `tbl_notif` VALUES (402, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/5yB', '2023-06-03 11:21:00', NULL, NULL, 82);
INSERT INTO `tbl_notif` VALUES (403, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/5yB', '2023-06-03 11:21:00', NULL, NULL, 82);
INSERT INTO `tbl_notif` VALUES (404, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/5yB', '2023-06-03 11:21:00', NULL, NULL, 82);
INSERT INTO `tbl_notif` VALUES (405, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/5yB', '2023-06-03 11:21:00', NULL, NULL, 82);
INSERT INTO `tbl_notif` VALUES (406, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/68n', '2023-06-03 11:45:58', '1, ', NULL, 83);
INSERT INTO `tbl_notif` VALUES (407, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/68n', '2023-06-03 11:45:58', NULL, NULL, 83);
INSERT INTO `tbl_notif` VALUES (408, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/68n', '2023-06-03 11:45:58', NULL, NULL, 83);
INSERT INTO `tbl_notif` VALUES (409, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/68n', '2023-06-03 11:45:58', NULL, NULL, 83);
INSERT INTO `tbl_notif` VALUES (410, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/68n', '2023-06-03 11:45:58', NULL, NULL, 83);
INSERT INTO `tbl_notif` VALUES (411, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/68n', '2023-06-03 11:45:58', NULL, NULL, 83);
INSERT INTO `tbl_notif` VALUES (412, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/73j', '2023-06-04 08:29:49', '1, ', NULL, 84);
INSERT INTO `tbl_notif` VALUES (413, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/73j', '2023-06-04 08:29:49', NULL, NULL, 84);
INSERT INTO `tbl_notif` VALUES (414, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/73j', '2023-06-04 08:29:49', NULL, NULL, 84);
INSERT INTO `tbl_notif` VALUES (415, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/73j', '2023-06-04 08:29:49', NULL, NULL, 84);
INSERT INTO `tbl_notif` VALUES (416, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/73j', '2023-06-04 08:29:49', NULL, NULL, 84);
INSERT INTO `tbl_notif` VALUES (417, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/73j', '2023-06-04 08:29:49', NULL, NULL, 84);
INSERT INTO `tbl_notif` VALUES (418, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/82m', '2023-06-04 08:32:03', '1, ', NULL, 85);
INSERT INTO `tbl_notif` VALUES (419, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/82m', '2023-06-04 08:32:03', NULL, NULL, 85);
INSERT INTO `tbl_notif` VALUES (420, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/82m', '2023-06-04 08:32:03', NULL, NULL, 85);
INSERT INTO `tbl_notif` VALUES (421, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/82m', '2023-06-04 08:32:03', NULL, NULL, 85);
INSERT INTO `tbl_notif` VALUES (422, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/82m', '2023-06-04 08:32:03', NULL, NULL, 85);
INSERT INTO `tbl_notif` VALUES (423, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/82m', '2023-06-04 08:32:03', NULL, NULL, 85);
INSERT INTO `tbl_notif` VALUES (424, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/9rx', '2023-06-04 16:53:03', '1, ', NULL, 86);
INSERT INTO `tbl_notif` VALUES (425, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/9rx', '2023-06-04 16:53:03', NULL, NULL, 86);
INSERT INTO `tbl_notif` VALUES (426, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/9rx', '2023-06-04 16:53:03', NULL, NULL, 86);
INSERT INTO `tbl_notif` VALUES (427, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/9rx', '2023-06-04 16:53:03', NULL, NULL, 86);
INSERT INTO `tbl_notif` VALUES (428, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/9rx', '2023-06-04 16:53:03', NULL, NULL, 86);
INSERT INTO `tbl_notif` VALUES (429, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/9rx', '2023-06-04 16:53:03', NULL, NULL, 86);
INSERT INTO `tbl_notif` VALUES (430, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/g5Y', '2023-06-05 07:07:41', '1, ', NULL, 88);
INSERT INTO `tbl_notif` VALUES (431, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/g5Y', '2023-06-05 07:07:41', NULL, NULL, 88);
INSERT INTO `tbl_notif` VALUES (432, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/g5Y', '2023-06-05 07:07:41', NULL, NULL, 88);
INSERT INTO `tbl_notif` VALUES (433, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/g5Y', '2023-06-05 07:07:41', NULL, NULL, 88);
INSERT INTO `tbl_notif` VALUES (434, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/g5Y', '2023-06-05 07:07:41', NULL, NULL, 88);
INSERT INTO `tbl_notif` VALUES (435, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/g5Y', '2023-06-05 07:07:41', NULL, NULL, 88);
INSERT INTO `tbl_notif` VALUES (436, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/j2R', '2023-06-06 08:38:56', '1, ', NULL, 89);
INSERT INTO `tbl_notif` VALUES (437, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/j2R', '2023-06-06 08:38:56', NULL, NULL, 89);
INSERT INTO `tbl_notif` VALUES (438, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/j2R', '2023-06-06 08:38:56', NULL, NULL, 89);
INSERT INTO `tbl_notif` VALUES (439, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/j2R', '2023-06-06 08:38:56', NULL, NULL, 89);
INSERT INTO `tbl_notif` VALUES (440, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/j2R', '2023-06-06 08:38:56', NULL, NULL, 89);
INSERT INTO `tbl_notif` VALUES (441, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/j2R', '2023-06-06 08:38:56', NULL, NULL, 89);
INSERT INTO `tbl_notif` VALUES (442, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/k55', '2023-06-06 09:02:44', '1, ', NULL, 90);
INSERT INTO `tbl_notif` VALUES (443, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/k55', '2023-06-06 09:02:44', NULL, NULL, 90);
INSERT INTO `tbl_notif` VALUES (444, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/k55', '2023-06-06 09:02:44', NULL, NULL, 90);
INSERT INTO `tbl_notif` VALUES (445, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/k55', '2023-06-06 09:02:44', NULL, NULL, 90);
INSERT INTO `tbl_notif` VALUES (446, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/k55', '2023-06-06 09:02:44', NULL, NULL, 90);
INSERT INTO `tbl_notif` VALUES (447, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/k55', '2023-06-06 09:02:44', NULL, NULL, 90);
INSERT INTO `tbl_notif` VALUES (448, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/68n', '2023-06-07 11:02:58', '1, ', NULL, 83);
INSERT INTO `tbl_notif` VALUES (449, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/68n', '2023-06-07 11:02:58', NULL, NULL, 83);
INSERT INTO `tbl_notif` VALUES (450, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/68n', '2023-06-07 11:02:58', NULL, NULL, 83);
INSERT INTO `tbl_notif` VALUES (451, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/68n', '2023-06-07 11:02:58', NULL, NULL, 83);
INSERT INTO `tbl_notif` VALUES (452, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/68n', '2023-06-07 11:02:58', NULL, NULL, 83);
INSERT INTO `tbl_notif` VALUES (453, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/68n', '2023-06-07 11:02:58', NULL, NULL, 83);
INSERT INTO `tbl_notif` VALUES (454, 9, 1, 'Mengirim bahan berita baru.', 'berita/v/d/nZR', '2023-06-13 13:09:37', '1, ', NULL, 93);
INSERT INTO `tbl_notif` VALUES (455, 9, 2, 'Mengirim bahan berita baru.', 'berita/v/d/nZR', '2023-06-13 13:09:37', NULL, NULL, 93);
INSERT INTO `tbl_notif` VALUES (456, 9, 3, 'Mengirim bahan berita baru.', 'berita/v/d/nZR', '2023-06-13 13:09:37', NULL, NULL, 93);
INSERT INTO `tbl_notif` VALUES (457, 9, 4, 'Mengirim bahan berita baru.', 'berita/v/d/nZR', '2023-06-13 13:09:37', NULL, NULL, 93);
INSERT INTO `tbl_notif` VALUES (458, 9, 5, 'Mengirim bahan berita baru.', 'berita/v/d/nZR', '2023-06-13 13:09:37', NULL, NULL, 93);
INSERT INTO `tbl_notif` VALUES (459, 9, 6, 'Mengirim bahan berita baru.', 'berita/v/d/nZR', '2023-06-13 13:09:37', NULL, NULL, 93);
INSERT INTO `tbl_notif` VALUES (460, 9, 1, 'Mengirim bahan berita baru.', 'berita/v/d/oYj', '2023-06-13 13:11:29', '1, ', NULL, 94);
INSERT INTO `tbl_notif` VALUES (461, 9, 2, 'Mengirim bahan berita baru.', 'berita/v/d/oYj', '2023-06-13 13:11:29', NULL, NULL, 94);
INSERT INTO `tbl_notif` VALUES (462, 9, 3, 'Mengirim bahan berita baru.', 'berita/v/d/oYj', '2023-06-13 13:11:29', NULL, NULL, 94);
INSERT INTO `tbl_notif` VALUES (463, 9, 4, 'Mengirim bahan berita baru.', 'berita/v/d/oYj', '2023-06-13 13:11:29', NULL, NULL, 94);
INSERT INTO `tbl_notif` VALUES (464, 9, 5, 'Mengirim bahan berita baru.', 'berita/v/d/oYj', '2023-06-13 13:11:29', NULL, NULL, 94);
INSERT INTO `tbl_notif` VALUES (465, 9, 6, 'Mengirim bahan berita baru.', 'berita/v/d/oYj', '2023-06-13 13:11:29', NULL, NULL, 94);
INSERT INTO `tbl_notif` VALUES (466, 9, 1, 'Mengirim bahan berita baru.', 'berita/v/d/pg2', '2023-06-13 13:12:12', '1, ', NULL, 95);
INSERT INTO `tbl_notif` VALUES (467, 9, 2, 'Mengirim bahan berita baru.', 'berita/v/d/pg2', '2023-06-13 13:12:12', NULL, NULL, 95);
INSERT INTO `tbl_notif` VALUES (468, 9, 3, 'Mengirim bahan berita baru.', 'berita/v/d/pg2', '2023-06-13 13:12:12', NULL, NULL, 95);
INSERT INTO `tbl_notif` VALUES (469, 9, 4, 'Mengirim bahan berita baru.', 'berita/v/d/pg2', '2023-06-13 13:12:12', NULL, NULL, 95);
INSERT INTO `tbl_notif` VALUES (470, 9, 5, 'Mengirim bahan berita baru.', 'berita/v/d/pg2', '2023-06-13 13:12:12', NULL, NULL, 95);
INSERT INTO `tbl_notif` VALUES (471, 9, 6, 'Mengirim bahan berita baru.', 'berita/v/d/pg2', '2023-06-13 13:12:12', NULL, NULL, 95);
INSERT INTO `tbl_notif` VALUES (472, 20, 1, 'Mengirim bahan berita baru.', 'berita/v/d/wjR', '2023-06-14 09:34:52', '1, ', NULL, 99);
INSERT INTO `tbl_notif` VALUES (473, 20, 2, 'Mengirim bahan berita baru.', 'berita/v/d/wjR', '2023-06-14 09:34:52', NULL, NULL, 99);
INSERT INTO `tbl_notif` VALUES (474, 20, 3, 'Mengirim bahan berita baru.', 'berita/v/d/wjR', '2023-06-14 09:34:52', NULL, NULL, 99);
INSERT INTO `tbl_notif` VALUES (475, 20, 4, 'Mengirim bahan berita baru.', 'berita/v/d/wjR', '2023-06-14 09:34:52', NULL, NULL, 99);
INSERT INTO `tbl_notif` VALUES (476, 20, 5, 'Mengirim bahan berita baru.', 'berita/v/d/wjR', '2023-06-14 09:34:52', NULL, NULL, 99);
INSERT INTO `tbl_notif` VALUES (477, 20, 6, 'Mengirim bahan berita baru.', 'berita/v/d/wjR', '2023-06-14 09:34:52', NULL, NULL, 99);
INSERT INTO `tbl_notif` VALUES (478, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/j25', '2023-07-02 05:03:26', '1, ', NULL, 101);
INSERT INTO `tbl_notif` VALUES (479, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/j25', '2023-07-02 05:03:26', NULL, NULL, 101);
INSERT INTO `tbl_notif` VALUES (480, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/j25', '2023-07-02 05:03:26', NULL, NULL, 101);
INSERT INTO `tbl_notif` VALUES (481, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/j25', '2023-07-02 05:03:26', NULL, NULL, 101);
INSERT INTO `tbl_notif` VALUES (482, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/j25', '2023-07-02 05:03:26', NULL, NULL, 101);
INSERT INTO `tbl_notif` VALUES (483, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/j25', '2023-07-02 05:03:26', NULL, NULL, 101);
INSERT INTO `tbl_notif` VALUES (484, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/qjr', '2023-07-11 06:41:34', '1, ', NULL, 108);
INSERT INTO `tbl_notif` VALUES (485, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/qjr', '2023-07-11 06:41:34', NULL, NULL, 108);
INSERT INTO `tbl_notif` VALUES (486, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/qjr', '2023-07-11 06:41:34', NULL, NULL, 108);
INSERT INTO `tbl_notif` VALUES (487, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/qjr', '2023-07-11 06:41:34', NULL, NULL, 108);
INSERT INTO `tbl_notif` VALUES (488, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/qjr', '2023-07-11 06:41:34', NULL, NULL, 108);
INSERT INTO `tbl_notif` VALUES (489, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/qjr', '2023-07-11 06:41:34', NULL, NULL, 108);
INSERT INTO `tbl_notif` VALUES (490, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/r06', '2023-07-11 06:44:19', '1, ', NULL, 109);
INSERT INTO `tbl_notif` VALUES (491, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/r06', '2023-07-11 06:44:19', NULL, NULL, 109);
INSERT INTO `tbl_notif` VALUES (492, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/r06', '2023-07-11 06:44:19', NULL, NULL, 109);
INSERT INTO `tbl_notif` VALUES (493, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/r06', '2023-07-11 06:44:19', NULL, NULL, 109);
INSERT INTO `tbl_notif` VALUES (494, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/r06', '2023-07-11 06:44:19', NULL, NULL, 109);
INSERT INTO `tbl_notif` VALUES (495, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/r06', '2023-07-11 06:44:19', NULL, NULL, 109);
INSERT INTO `tbl_notif` VALUES (496, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/vgr', '2023-07-13 13:22:02', '1, ', NULL, 110);
INSERT INTO `tbl_notif` VALUES (497, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/vgr', '2023-07-13 13:22:02', NULL, NULL, 110);
INSERT INTO `tbl_notif` VALUES (498, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/vgr', '2023-07-13 13:22:02', NULL, NULL, 110);
INSERT INTO `tbl_notif` VALUES (499, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/vgr', '2023-07-13 13:22:02', NULL, NULL, 110);
INSERT INTO `tbl_notif` VALUES (500, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/vgr', '2023-07-13 13:22:02', NULL, NULL, 110);
INSERT INTO `tbl_notif` VALUES (501, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/vgr', '2023-07-13 13:22:02', NULL, NULL, 110);
INSERT INTO `tbl_notif` VALUES (502, 14, 1, 'Mengirim bahan berita baru.', 'berita/v/d/xGr', '2023-07-18 07:43:04', '1, ', NULL, 112);
INSERT INTO `tbl_notif` VALUES (503, 14, 2, 'Mengirim bahan berita baru.', 'berita/v/d/xGr', '2023-07-18 07:43:04', NULL, NULL, 112);
INSERT INTO `tbl_notif` VALUES (504, 14, 3, 'Mengirim bahan berita baru.', 'berita/v/d/xGr', '2023-07-18 07:43:04', NULL, NULL, 112);
INSERT INTO `tbl_notif` VALUES (505, 14, 4, 'Mengirim bahan berita baru.', 'berita/v/d/xGr', '2023-07-18 07:43:04', NULL, NULL, 112);
INSERT INTO `tbl_notif` VALUES (506, 14, 5, 'Mengirim bahan berita baru.', 'berita/v/d/xGr', '2023-07-18 07:43:04', NULL, NULL, 112);
INSERT INTO `tbl_notif` VALUES (507, 14, 6, 'Mengirim bahan berita baru.', 'berita/v/d/xGr', '2023-07-18 07:43:04', NULL, NULL, 112);
INSERT INTO `tbl_notif` VALUES (508, 13, 1, 'Mengirim bahan berita baru.', 'berita/v/d/y8W', '2023-07-18 07:44:10', '1, ', NULL, 113);
INSERT INTO `tbl_notif` VALUES (509, 13, 2, 'Mengirim bahan berita baru.', 'berita/v/d/y8W', '2023-07-18 07:44:10', NULL, NULL, 113);
INSERT INTO `tbl_notif` VALUES (510, 13, 3, 'Mengirim bahan berita baru.', 'berita/v/d/y8W', '2023-07-18 07:44:10', NULL, NULL, 113);
INSERT INTO `tbl_notif` VALUES (511, 13, 4, 'Mengirim bahan berita baru.', 'berita/v/d/y8W', '2023-07-18 07:44:10', NULL, NULL, 113);
INSERT INTO `tbl_notif` VALUES (512, 13, 5, 'Mengirim bahan berita baru.', 'berita/v/d/y8W', '2023-07-18 07:44:10', NULL, NULL, 113);
INSERT INTO `tbl_notif` VALUES (513, 13, 6, 'Mengirim bahan berita baru.', 'berita/v/d/y8W', '2023-07-18 07:44:10', NULL, NULL, 113);
INSERT INTO `tbl_notif` VALUES (514, 15, 1, 'Mengirim bahan berita baru.', 'berita/v/d/zm8', '2023-07-18 07:53:24', '1, ', NULL, 114);
INSERT INTO `tbl_notif` VALUES (515, 15, 2, 'Mengirim bahan berita baru.', 'berita/v/d/zm8', '2023-07-18 07:53:24', NULL, NULL, 114);
INSERT INTO `tbl_notif` VALUES (516, 15, 3, 'Mengirim bahan berita baru.', 'berita/v/d/zm8', '2023-07-18 07:53:24', NULL, NULL, 114);
INSERT INTO `tbl_notif` VALUES (517, 15, 4, 'Mengirim bahan berita baru.', 'berita/v/d/zm8', '2023-07-18 07:53:24', NULL, NULL, 114);
INSERT INTO `tbl_notif` VALUES (518, 15, 5, 'Mengirim bahan berita baru.', 'berita/v/d/zm8', '2023-07-18 07:53:24', NULL, NULL, 114);
INSERT INTO `tbl_notif` VALUES (519, 15, 6, 'Mengirim bahan berita baru.', 'berita/v/d/zm8', '2023-07-18 07:53:24', NULL, NULL, 114);
INSERT INTO `tbl_notif` VALUES (520, 16, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Anz', '2023-07-18 07:58:23', '1, ', NULL, 115);
INSERT INTO `tbl_notif` VALUES (521, 16, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Anz', '2023-07-18 07:58:23', NULL, NULL, 115);
INSERT INTO `tbl_notif` VALUES (522, 16, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Anz', '2023-07-18 07:58:23', NULL, NULL, 115);
INSERT INTO `tbl_notif` VALUES (523, 16, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Anz', '2023-07-18 07:58:23', NULL, NULL, 115);
INSERT INTO `tbl_notif` VALUES (524, 16, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Anz', '2023-07-18 07:58:23', NULL, NULL, 115);
INSERT INTO `tbl_notif` VALUES (525, 16, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Anz', '2023-07-18 07:58:23', NULL, NULL, 115);
INSERT INTO `tbl_notif` VALUES (526, 17, 1, 'Mengirim bahan berita baru.', 'berita/v/d/BgJ', '2023-07-18 08:01:50', '1, ', NULL, 116);
INSERT INTO `tbl_notif` VALUES (527, 17, 2, 'Mengirim bahan berita baru.', 'berita/v/d/BgJ', '2023-07-18 08:01:50', NULL, NULL, 116);
INSERT INTO `tbl_notif` VALUES (528, 17, 3, 'Mengirim bahan berita baru.', 'berita/v/d/BgJ', '2023-07-18 08:01:50', NULL, NULL, 116);
INSERT INTO `tbl_notif` VALUES (529, 17, 4, 'Mengirim bahan berita baru.', 'berita/v/d/BgJ', '2023-07-18 08:01:50', NULL, NULL, 116);
INSERT INTO `tbl_notif` VALUES (530, 17, 5, 'Mengirim bahan berita baru.', 'berita/v/d/BgJ', '2023-07-18 08:01:50', NULL, NULL, 116);
INSERT INTO `tbl_notif` VALUES (531, 17, 6, 'Mengirim bahan berita baru.', 'berita/v/d/BgJ', '2023-07-18 08:01:50', NULL, NULL, 116);
INSERT INTO `tbl_notif` VALUES (532, 18, 1, 'Mengirim bahan berita baru.', 'berita/v/d/DRn', '2023-07-18 08:06:05', '1, ', NULL, 117);
INSERT INTO `tbl_notif` VALUES (533, 18, 2, 'Mengirim bahan berita baru.', 'berita/v/d/DRn', '2023-07-18 08:06:05', NULL, NULL, 117);
INSERT INTO `tbl_notif` VALUES (534, 18, 3, 'Mengirim bahan berita baru.', 'berita/v/d/DRn', '2023-07-18 08:06:05', NULL, NULL, 117);
INSERT INTO `tbl_notif` VALUES (535, 18, 4, 'Mengirim bahan berita baru.', 'berita/v/d/DRn', '2023-07-18 08:06:05', NULL, NULL, 117);
INSERT INTO `tbl_notif` VALUES (536, 18, 5, 'Mengirim bahan berita baru.', 'berita/v/d/DRn', '2023-07-18 08:06:05', NULL, NULL, 117);
INSERT INTO `tbl_notif` VALUES (537, 18, 6, 'Mengirim bahan berita baru.', 'berita/v/d/DRn', '2023-07-18 08:06:05', NULL, NULL, 117);
INSERT INTO `tbl_notif` VALUES (538, 19, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Elk', '2023-07-18 08:10:49', '1, ', NULL, 118);
INSERT INTO `tbl_notif` VALUES (539, 19, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Elk', '2023-07-18 08:10:49', NULL, NULL, 118);
INSERT INTO `tbl_notif` VALUES (540, 19, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Elk', '2023-07-18 08:10:49', NULL, NULL, 118);
INSERT INTO `tbl_notif` VALUES (541, 19, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Elk', '2023-07-18 08:10:49', NULL, NULL, 118);
INSERT INTO `tbl_notif` VALUES (542, 19, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Elk', '2023-07-18 08:10:49', NULL, NULL, 118);
INSERT INTO `tbl_notif` VALUES (543, 19, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Elk', '2023-07-18 08:10:49', NULL, NULL, 118);
INSERT INTO `tbl_notif` VALUES (544, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/JZo', '2023-07-21 15:29:06', '1, ', NULL, 120);
INSERT INTO `tbl_notif` VALUES (545, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/JZo', '2023-07-21 15:29:06', NULL, NULL, 120);
INSERT INTO `tbl_notif` VALUES (546, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/JZo', '2023-07-21 15:29:06', NULL, NULL, 120);
INSERT INTO `tbl_notif` VALUES (547, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/JZo', '2023-07-21 15:29:06', NULL, NULL, 120);
INSERT INTO `tbl_notif` VALUES (548, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/JZo', '2023-07-21 15:29:06', NULL, NULL, 120);
INSERT INTO `tbl_notif` VALUES (549, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/JZo', '2023-07-21 15:29:06', NULL, NULL, 120);
INSERT INTO `tbl_notif` VALUES (550, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/KOn', '2023-07-21 15:34:21', '1, ', NULL, 121);
INSERT INTO `tbl_notif` VALUES (551, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/KOn', '2023-07-21 15:34:21', NULL, NULL, 121);
INSERT INTO `tbl_notif` VALUES (552, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/KOn', '2023-07-21 15:34:21', NULL, NULL, 121);
INSERT INTO `tbl_notif` VALUES (553, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/KOn', '2023-07-21 15:34:21', NULL, NULL, 121);
INSERT INTO `tbl_notif` VALUES (554, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/KOn', '2023-07-21 15:34:21', NULL, NULL, 121);
INSERT INTO `tbl_notif` VALUES (555, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/KOn', '2023-07-21 15:34:21', NULL, NULL, 121);
INSERT INTO `tbl_notif` VALUES (556, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Lg4', '2023-09-14 08:33:07', '1, ', NULL, 122);
INSERT INTO `tbl_notif` VALUES (557, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Lg4', '2023-09-14 08:33:07', NULL, NULL, 122);
INSERT INTO `tbl_notif` VALUES (558, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Lg4', '2023-09-14 08:33:07', NULL, NULL, 122);
INSERT INTO `tbl_notif` VALUES (559, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Lg4', '2023-09-14 08:33:07', NULL, NULL, 122);
INSERT INTO `tbl_notif` VALUES (560, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Lg4', '2023-09-14 08:33:07', NULL, NULL, 122);
INSERT INTO `tbl_notif` VALUES (561, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Lg4', '2023-09-14 08:33:07', NULL, NULL, 122);
INSERT INTO `tbl_notif` VALUES (562, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Mj3', '2023-09-14 13:29:12', '1, ', NULL, 123);
INSERT INTO `tbl_notif` VALUES (563, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Mj3', '2023-09-14 13:29:12', NULL, NULL, 123);
INSERT INTO `tbl_notif` VALUES (564, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Mj3', '2023-09-14 13:29:12', NULL, NULL, 123);
INSERT INTO `tbl_notif` VALUES (565, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Mj3', '2023-09-14 13:29:12', NULL, NULL, 123);
INSERT INTO `tbl_notif` VALUES (566, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Mj3', '2023-09-14 13:29:12', NULL, NULL, 123);
INSERT INTO `tbl_notif` VALUES (567, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Mj3', '2023-09-14 13:29:12', NULL, NULL, 123);
INSERT INTO `tbl_notif` VALUES (568, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Nxz', '2023-09-14 13:29:50', '1, ', NULL, 124);
INSERT INTO `tbl_notif` VALUES (569, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Nxz', '2023-09-14 13:29:50', NULL, NULL, 124);
INSERT INTO `tbl_notif` VALUES (570, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Nxz', '2023-09-14 13:29:50', NULL, NULL, 124);
INSERT INTO `tbl_notif` VALUES (571, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Nxz', '2023-09-14 13:29:50', NULL, NULL, 124);
INSERT INTO `tbl_notif` VALUES (572, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Nxz', '2023-09-14 13:29:50', NULL, NULL, 124);
INSERT INTO `tbl_notif` VALUES (573, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Nxz', '2023-09-14 13:29:50', NULL, NULL, 124);
INSERT INTO `tbl_notif` VALUES (574, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/O7N', '2023-09-14 13:32:41', '1, ', NULL, 125);
INSERT INTO `tbl_notif` VALUES (575, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/O7N', '2023-09-14 13:32:41', NULL, NULL, 125);
INSERT INTO `tbl_notif` VALUES (576, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/O7N', '2023-09-14 13:32:41', NULL, NULL, 125);
INSERT INTO `tbl_notif` VALUES (577, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/O7N', '2023-09-14 13:32:41', NULL, NULL, 125);
INSERT INTO `tbl_notif` VALUES (578, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/O7N', '2023-09-14 13:32:41', NULL, NULL, 125);
INSERT INTO `tbl_notif` VALUES (579, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/O7N', '2023-09-14 13:32:41', NULL, NULL, 125);
INSERT INTO `tbl_notif` VALUES (580, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/P1n', '2023-09-14 13:36:45', '1, ', NULL, 126);
INSERT INTO `tbl_notif` VALUES (581, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/P1n', '2023-09-14 13:36:45', NULL, NULL, 126);
INSERT INTO `tbl_notif` VALUES (582, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/P1n', '2023-09-14 13:36:45', NULL, NULL, 126);
INSERT INTO `tbl_notif` VALUES (583, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/P1n', '2023-09-14 13:36:45', NULL, NULL, 126);
INSERT INTO `tbl_notif` VALUES (584, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/P1n', '2023-09-14 13:36:45', NULL, NULL, 126);
INSERT INTO `tbl_notif` VALUES (585, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/P1n', '2023-09-14 13:36:45', NULL, NULL, 126);
INSERT INTO `tbl_notif` VALUES (586, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Q1Y', '2023-09-14 13:37:41', '1, ', NULL, 127);
INSERT INTO `tbl_notif` VALUES (587, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Q1Y', '2023-09-14 13:37:41', NULL, NULL, 127);
INSERT INTO `tbl_notif` VALUES (588, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Q1Y', '2023-09-14 13:37:41', NULL, NULL, 127);
INSERT INTO `tbl_notif` VALUES (589, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Q1Y', '2023-09-14 13:37:41', NULL, NULL, 127);
INSERT INTO `tbl_notif` VALUES (590, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Q1Y', '2023-09-14 13:37:41', NULL, NULL, 127);
INSERT INTO `tbl_notif` VALUES (591, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Q1Y', '2023-09-14 13:37:41', NULL, NULL, 127);
INSERT INTO `tbl_notif` VALUES (592, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/RgR', '2023-09-14 13:38:26', '1, ', NULL, 128);
INSERT INTO `tbl_notif` VALUES (593, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/RgR', '2023-09-14 13:38:26', NULL, NULL, 128);
INSERT INTO `tbl_notif` VALUES (594, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/RgR', '2023-09-14 13:38:26', NULL, NULL, 128);
INSERT INTO `tbl_notif` VALUES (595, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/RgR', '2023-09-14 13:38:26', NULL, NULL, 128);
INSERT INTO `tbl_notif` VALUES (596, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/RgR', '2023-09-14 13:38:26', NULL, NULL, 128);
INSERT INTO `tbl_notif` VALUES (597, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/RgR', '2023-09-14 13:38:26', NULL, NULL, 128);
INSERT INTO `tbl_notif` VALUES (598, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Vm1', '2023-09-14 13:38:56', '1, ', NULL, 129);
INSERT INTO `tbl_notif` VALUES (599, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Vm1', '2023-09-14 13:38:56', NULL, NULL, 129);
INSERT INTO `tbl_notif` VALUES (600, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Vm1', '2023-09-14 13:38:56', NULL, NULL, 129);
INSERT INTO `tbl_notif` VALUES (601, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Vm1', '2023-09-14 13:38:56', NULL, NULL, 129);
INSERT INTO `tbl_notif` VALUES (602, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Vm1', '2023-09-14 13:38:56', NULL, NULL, 129);
INSERT INTO `tbl_notif` VALUES (603, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Vm1', '2023-09-14 13:38:56', NULL, NULL, 129);
INSERT INTO `tbl_notif` VALUES (604, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Wng', '2023-09-14 13:40:05', '1, ', NULL, 130);
INSERT INTO `tbl_notif` VALUES (605, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Wng', '2023-09-14 13:40:05', NULL, NULL, 130);
INSERT INTO `tbl_notif` VALUES (606, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Wng', '2023-09-14 13:40:05', NULL, NULL, 130);
INSERT INTO `tbl_notif` VALUES (607, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Wng', '2023-09-14 13:40:05', NULL, NULL, 130);
INSERT INTO `tbl_notif` VALUES (608, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Wng', '2023-09-14 13:40:05', NULL, NULL, 130);
INSERT INTO `tbl_notif` VALUES (609, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Wng', '2023-09-14 13:40:05', NULL, NULL, 130);
INSERT INTO `tbl_notif` VALUES (610, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/X6m', '2023-09-14 13:40:44', '1, ', NULL, 131);
INSERT INTO `tbl_notif` VALUES (611, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/X6m', '2023-09-14 13:40:44', NULL, NULL, 131);
INSERT INTO `tbl_notif` VALUES (612, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/X6m', '2023-09-14 13:40:44', NULL, NULL, 131);
INSERT INTO `tbl_notif` VALUES (613, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/X6m', '2023-09-14 13:40:44', NULL, NULL, 131);
INSERT INTO `tbl_notif` VALUES (614, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/X6m', '2023-09-14 13:40:44', NULL, NULL, 131);
INSERT INTO `tbl_notif` VALUES (615, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/X6m', '2023-09-14 13:40:44', NULL, NULL, 131);
INSERT INTO `tbl_notif` VALUES (616, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Yvp', '2023-09-14 13:41:41', '1, ', NULL, 132);
INSERT INTO `tbl_notif` VALUES (617, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Yvp', '2023-09-14 13:41:41', NULL, NULL, 132);
INSERT INTO `tbl_notif` VALUES (618, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Yvp', '2023-09-14 13:41:41', NULL, NULL, 132);
INSERT INTO `tbl_notif` VALUES (619, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Yvp', '2023-09-14 13:41:41', NULL, NULL, 132);
INSERT INTO `tbl_notif` VALUES (620, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Yvp', '2023-09-14 13:41:41', NULL, NULL, 132);
INSERT INTO `tbl_notif` VALUES (621, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Yvp', '2023-09-14 13:41:41', NULL, NULL, 132);
INSERT INTO `tbl_notif` VALUES (622, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/ZV6', '2023-09-14 13:42:39', '1, ', NULL, 133);
INSERT INTO `tbl_notif` VALUES (623, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/ZV6', '2023-09-14 13:42:39', NULL, NULL, 133);
INSERT INTO `tbl_notif` VALUES (624, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/ZV6', '2023-09-14 13:42:39', NULL, NULL, 133);
INSERT INTO `tbl_notif` VALUES (625, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/ZV6', '2023-09-14 13:42:39', NULL, NULL, 133);
INSERT INTO `tbl_notif` VALUES (626, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/ZV6', '2023-09-14 13:42:39', NULL, NULL, 133);
INSERT INTO `tbl_notif` VALUES (627, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/ZV6', '2023-09-14 13:42:39', NULL, NULL, 133);
INSERT INTO `tbl_notif` VALUES (628, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/1rj', '2023-09-14 13:44:23', '1, ', NULL, 134);
INSERT INTO `tbl_notif` VALUES (629, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/1rj', '2023-09-14 13:44:23', NULL, NULL, 134);
INSERT INTO `tbl_notif` VALUES (630, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/1rj', '2023-09-14 13:44:23', NULL, NULL, 134);
INSERT INTO `tbl_notif` VALUES (631, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/1rj', '2023-09-14 13:44:23', NULL, NULL, 134);
INSERT INTO `tbl_notif` VALUES (632, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/1rj', '2023-09-14 13:44:23', NULL, NULL, 134);
INSERT INTO `tbl_notif` VALUES (633, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/1rj', '2023-09-14 13:44:23', NULL, NULL, 134);
INSERT INTO `tbl_notif` VALUES (634, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/2vv', '2023-09-14 13:45:00', '1, ', NULL, 135);
INSERT INTO `tbl_notif` VALUES (635, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/2vv', '2023-09-14 13:45:00', NULL, NULL, 135);
INSERT INTO `tbl_notif` VALUES (636, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/2vv', '2023-09-14 13:45:00', NULL, NULL, 135);
INSERT INTO `tbl_notif` VALUES (637, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/2vv', '2023-09-14 13:45:00', NULL, NULL, 135);
INSERT INTO `tbl_notif` VALUES (638, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/2vv', '2023-09-14 13:45:00', NULL, NULL, 135);
INSERT INTO `tbl_notif` VALUES (639, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/2vv', '2023-09-14 13:45:00', NULL, NULL, 135);
INSERT INTO `tbl_notif` VALUES (640, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/32Q', '2023-09-14 13:45:30', '1, ', NULL, 136);
INSERT INTO `tbl_notif` VALUES (641, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/32Q', '2023-09-14 13:45:30', NULL, NULL, 136);
INSERT INTO `tbl_notif` VALUES (642, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/32Q', '2023-09-14 13:45:30', NULL, NULL, 136);
INSERT INTO `tbl_notif` VALUES (643, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/32Q', '2023-09-14 13:45:30', NULL, NULL, 136);
INSERT INTO `tbl_notif` VALUES (644, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/32Q', '2023-09-14 13:45:30', NULL, NULL, 136);
INSERT INTO `tbl_notif` VALUES (645, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/32Q', '2023-09-14 13:45:30', NULL, NULL, 136);
INSERT INTO `tbl_notif` VALUES (646, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/4R6', '2023-09-14 13:48:15', '1, ', NULL, 137);
INSERT INTO `tbl_notif` VALUES (647, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/4R6', '2023-09-14 13:48:15', NULL, NULL, 137);
INSERT INTO `tbl_notif` VALUES (648, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/4R6', '2023-09-14 13:48:15', NULL, NULL, 137);
INSERT INTO `tbl_notif` VALUES (649, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/4R6', '2023-09-14 13:48:15', NULL, NULL, 137);
INSERT INTO `tbl_notif` VALUES (650, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/4R6', '2023-09-14 13:48:15', NULL, NULL, 137);
INSERT INTO `tbl_notif` VALUES (651, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/4R6', '2023-09-14 13:48:15', NULL, NULL, 137);
INSERT INTO `tbl_notif` VALUES (652, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/59R', '2023-09-14 14:25:41', '1, ', NULL, 138);
INSERT INTO `tbl_notif` VALUES (653, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/59R', '2023-09-14 14:25:41', NULL, NULL, 138);
INSERT INTO `tbl_notif` VALUES (654, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/59R', '2023-09-14 14:25:41', NULL, NULL, 138);
INSERT INTO `tbl_notif` VALUES (655, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/59R', '2023-09-14 14:25:41', NULL, NULL, 138);
INSERT INTO `tbl_notif` VALUES (656, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/59R', '2023-09-14 14:25:41', NULL, NULL, 138);
INSERT INTO `tbl_notif` VALUES (657, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/59R', '2023-09-14 14:25:41', NULL, NULL, 138);
INSERT INTO `tbl_notif` VALUES (658, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/6R9', '2023-09-14 14:28:01', '1, ', NULL, 139);
INSERT INTO `tbl_notif` VALUES (659, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/6R9', '2023-09-14 14:28:01', NULL, NULL, 139);
INSERT INTO `tbl_notif` VALUES (660, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/6R9', '2023-09-14 14:28:01', NULL, NULL, 139);
INSERT INTO `tbl_notif` VALUES (661, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/6R9', '2023-09-14 14:28:01', NULL, NULL, 139);
INSERT INTO `tbl_notif` VALUES (662, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/6R9', '2023-09-14 14:28:01', NULL, NULL, 139);
INSERT INTO `tbl_notif` VALUES (663, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/6R9', '2023-09-14 14:28:01', NULL, NULL, 139);
INSERT INTO `tbl_notif` VALUES (664, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/7LA', '2023-09-14 14:29:42', '1, ', NULL, 140);
INSERT INTO `tbl_notif` VALUES (665, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/7LA', '2023-09-14 14:29:42', NULL, NULL, 140);
INSERT INTO `tbl_notif` VALUES (666, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/7LA', '2023-09-14 14:29:42', NULL, NULL, 140);
INSERT INTO `tbl_notif` VALUES (667, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/7LA', '2023-09-14 14:29:42', NULL, NULL, 140);
INSERT INTO `tbl_notif` VALUES (668, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/7LA', '2023-09-14 14:29:42', NULL, NULL, 140);
INSERT INTO `tbl_notif` VALUES (669, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/7LA', '2023-09-14 14:29:42', NULL, NULL, 140);
INSERT INTO `tbl_notif` VALUES (670, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/86o', '2023-09-16 05:14:25', '1, ', NULL, 141);
INSERT INTO `tbl_notif` VALUES (671, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/86o', '2023-09-16 05:14:25', NULL, NULL, 141);
INSERT INTO `tbl_notif` VALUES (672, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/86o', '2023-09-16 05:14:25', NULL, NULL, 141);
INSERT INTO `tbl_notif` VALUES (673, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/86o', '2023-09-16 05:14:25', NULL, NULL, 141);
INSERT INTO `tbl_notif` VALUES (674, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/86o', '2023-09-16 05:14:25', NULL, NULL, 141);
INSERT INTO `tbl_notif` VALUES (675, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/86o', '2023-09-16 05:14:25', NULL, NULL, 141);
INSERT INTO `tbl_notif` VALUES (676, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/9Q3', '2023-09-16 11:03:52', '1, ', NULL, 142);
INSERT INTO `tbl_notif` VALUES (677, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/9Q3', '2023-09-16 11:03:52', NULL, NULL, 142);
INSERT INTO `tbl_notif` VALUES (678, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/9Q3', '2023-09-16 11:03:52', NULL, NULL, 142);
INSERT INTO `tbl_notif` VALUES (679, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/9Q3', '2023-09-16 11:03:52', NULL, NULL, 142);
INSERT INTO `tbl_notif` VALUES (680, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/9Q3', '2023-09-16 11:03:52', NULL, NULL, 142);
INSERT INTO `tbl_notif` VALUES (681, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/9Q3', '2023-09-16 11:03:52', NULL, NULL, 142);
INSERT INTO `tbl_notif` VALUES (682, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/0VX', '2023-09-16 21:13:01', '1, ', NULL, 143);
INSERT INTO `tbl_notif` VALUES (683, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/0VX', '2023-09-16 21:13:01', NULL, NULL, 143);
INSERT INTO `tbl_notif` VALUES (684, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/0VX', '2023-09-16 21:13:01', NULL, NULL, 143);
INSERT INTO `tbl_notif` VALUES (685, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/0VX', '2023-09-16 21:13:01', NULL, NULL, 143);
INSERT INTO `tbl_notif` VALUES (686, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/0VX', '2023-09-16 21:13:01', NULL, NULL, 143);
INSERT INTO `tbl_notif` VALUES (687, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/0VX', '2023-09-16 21:13:01', NULL, NULL, 143);
INSERT INTO `tbl_notif` VALUES (688, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/gL6', '2023-09-16 23:02:10', '1, ', NULL, 144);
INSERT INTO `tbl_notif` VALUES (689, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/gL6', '2023-09-16 23:02:10', NULL, NULL, 144);
INSERT INTO `tbl_notif` VALUES (690, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/gL6', '2023-09-16 23:02:10', NULL, NULL, 144);
INSERT INTO `tbl_notif` VALUES (691, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/gL6', '2023-09-16 23:02:10', NULL, NULL, 144);
INSERT INTO `tbl_notif` VALUES (692, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/gL6', '2023-09-16 23:02:10', NULL, NULL, 144);
INSERT INTO `tbl_notif` VALUES (693, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/gL6', '2023-09-16 23:02:10', NULL, NULL, 144);
INSERT INTO `tbl_notif` VALUES (694, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/jq5', '2023-09-18 13:30:38', '1, ', NULL, 145);
INSERT INTO `tbl_notif` VALUES (695, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/jq5', '2023-09-18 13:30:38', NULL, NULL, 145);
INSERT INTO `tbl_notif` VALUES (696, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/jq5', '2023-09-18 13:30:38', NULL, NULL, 145);
INSERT INTO `tbl_notif` VALUES (697, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/jq5', '2023-09-18 13:30:38', NULL, NULL, 145);
INSERT INTO `tbl_notif` VALUES (698, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/jq5', '2023-09-18 13:30:38', NULL, NULL, 145);
INSERT INTO `tbl_notif` VALUES (699, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/jq5', '2023-09-18 13:30:38', NULL, NULL, 145);
INSERT INTO `tbl_notif` VALUES (700, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/kZX', '2023-09-18 16:15:54', '1, ', NULL, 146);
INSERT INTO `tbl_notif` VALUES (701, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/kZX', '2023-09-18 16:15:54', NULL, NULL, 146);
INSERT INTO `tbl_notif` VALUES (702, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/kZX', '2023-09-18 16:15:54', NULL, NULL, 146);
INSERT INTO `tbl_notif` VALUES (703, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/kZX', '2023-09-18 16:15:54', NULL, NULL, 146);
INSERT INTO `tbl_notif` VALUES (704, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/kZX', '2023-09-18 16:15:54', NULL, NULL, 146);
INSERT INTO `tbl_notif` VALUES (705, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/kZX', '2023-09-18 16:15:54', NULL, NULL, 146);
INSERT INTO `tbl_notif` VALUES (706, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/l56', '2023-09-19 14:02:32', '1, ', NULL, 147);
INSERT INTO `tbl_notif` VALUES (707, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/l56', '2023-09-19 14:02:32', NULL, NULL, 147);
INSERT INTO `tbl_notif` VALUES (708, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/l56', '2023-09-19 14:02:32', NULL, NULL, 147);
INSERT INTO `tbl_notif` VALUES (709, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/l56', '2023-09-19 14:02:32', NULL, NULL, 147);
INSERT INTO `tbl_notif` VALUES (710, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/l56', '2023-09-19 14:02:32', NULL, NULL, 147);
INSERT INTO `tbl_notif` VALUES (711, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/l56', '2023-09-19 14:02:32', NULL, NULL, 147);
INSERT INTO `tbl_notif` VALUES (712, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/Xom', '2023-11-15 14:29:19', '1, ', NULL, 175);
INSERT INTO `tbl_notif` VALUES (713, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/Xom', '2023-11-15 14:29:19', NULL, NULL, 175);
INSERT INTO `tbl_notif` VALUES (714, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/Xom', '2023-11-15 14:29:19', NULL, NULL, 175);
INSERT INTO `tbl_notif` VALUES (715, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/Xom', '2023-11-15 14:29:19', NULL, NULL, 175);
INSERT INTO `tbl_notif` VALUES (716, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/Xom', '2023-11-15 14:29:19', NULL, NULL, 175);
INSERT INTO `tbl_notif` VALUES (717, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/Xom', '2023-11-15 14:29:19', NULL, NULL, 175);
INSERT INTO `tbl_notif` VALUES (718, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/YWp', '2023-11-15 14:31:27', '1, ', NULL, 176);
INSERT INTO `tbl_notif` VALUES (719, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/YWp', '2023-11-15 14:31:27', NULL, NULL, 176);
INSERT INTO `tbl_notif` VALUES (720, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/YWp', '2023-11-15 14:31:27', NULL, NULL, 176);
INSERT INTO `tbl_notif` VALUES (721, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/YWp', '2023-11-15 14:31:27', NULL, NULL, 176);
INSERT INTO `tbl_notif` VALUES (722, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/YWp', '2023-11-15 14:31:27', NULL, NULL, 176);
INSERT INTO `tbl_notif` VALUES (723, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/YWp', '2023-11-15 14:31:27', NULL, NULL, 176);
INSERT INTO `tbl_notif` VALUES (724, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/2xv', '2023-12-21 07:22:42', '1, ', NULL, 179);
INSERT INTO `tbl_notif` VALUES (725, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/2xv', '2023-12-21 07:22:42', NULL, NULL, 179);
INSERT INTO `tbl_notif` VALUES (726, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/2xv', '2023-12-21 07:22:42', NULL, NULL, 179);
INSERT INTO `tbl_notif` VALUES (727, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/2xv', '2023-12-21 07:22:42', NULL, NULL, 179);
INSERT INTO `tbl_notif` VALUES (728, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/2xv', '2023-12-21 07:22:42', NULL, NULL, 179);
INSERT INTO `tbl_notif` VALUES (729, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/2xv', '2023-12-21 07:22:42', NULL, NULL, 179);
INSERT INTO `tbl_notif` VALUES (730, 1, 1, 'Mengirim bahan berita baru.', 'berita/v/d/3QQ', '2023-12-21 07:59:42', '1, ', NULL, 180);
INSERT INTO `tbl_notif` VALUES (731, 1, 2, 'Mengirim bahan berita baru.', 'berita/v/d/3QQ', '2023-12-21 07:59:42', NULL, NULL, 180);
INSERT INTO `tbl_notif` VALUES (732, 1, 3, 'Mengirim bahan berita baru.', 'berita/v/d/3QQ', '2023-12-21 07:59:42', NULL, NULL, 180);
INSERT INTO `tbl_notif` VALUES (733, 1, 4, 'Mengirim bahan berita baru.', 'berita/v/d/3QQ', '2023-12-21 07:59:42', NULL, NULL, 180);
INSERT INTO `tbl_notif` VALUES (734, 1, 5, 'Mengirim bahan berita baru.', 'berita/v/d/3QQ', '2023-12-21 07:59:42', NULL, NULL, 180);
INSERT INTO `tbl_notif` VALUES (735, 1, 6, 'Mengirim bahan berita baru.', 'berita/v/d/3QQ', '2023-12-21 07:59:42', NULL, NULL, 180);
INSERT INTO `tbl_notif` VALUES (736, 10, 1, 'Mengirim bahan berita baru.', 'berita/v/d/gZ6', '2023-12-22 08:51:41', '1, ', NULL, 188);
INSERT INTO `tbl_notif` VALUES (737, 10, 2, 'Mengirim bahan berita baru.', 'berita/v/d/gZ6', '2023-12-22 08:51:41', NULL, NULL, 188);
INSERT INTO `tbl_notif` VALUES (738, 10, 3, 'Mengirim bahan berita baru.', 'berita/v/d/gZ6', '2023-12-22 08:51:41', NULL, NULL, 188);
INSERT INTO `tbl_notif` VALUES (739, 10, 4, 'Mengirim bahan berita baru.', 'berita/v/d/gZ6', '2023-12-22 08:51:41', NULL, NULL, 188);
INSERT INTO `tbl_notif` VALUES (740, 10, 5, 'Mengirim bahan berita baru.', 'berita/v/d/gZ6', '2023-12-22 08:51:41', NULL, NULL, 188);
INSERT INTO `tbl_notif` VALUES (741, 10, 6, 'Mengirim bahan berita baru.', 'berita/v/d/gZ6', '2023-12-22 08:51:41', NULL, NULL, 188);

-- ----------------------------
-- Table structure for tbl_tahun
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tahun`;
CREATE TABLE `tbl_tahun`  (
  `id_draft_permohonan` int(10) NOT NULL AUTO_INCREMENT,
  `nama_draft_permohonan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_input` datetime(0) NULL DEFAULT NULL,
  `status` enum('belum_diproses','perbaikan','sedang_diproses','draft_sedang_dibuat','menunggu_koreksi','selesai') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lamp_surat_permohonan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url_data_dukung` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `naskah_akademik_dll` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `draft_harmonisasi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_user` int(10) NOT NULL,
  `jenis_dokumen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `zona_dokumen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_update` datetime(0) NULL DEFAULT NULL,
  `id_perancang` int(10) NOT NULL,
  `nama_perancang` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_draft_permohonan`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 156 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_tahun
-- ----------------------------
INSERT INTO `tbl_tahun` VALUES (106, 'TAMBAH DRAFT RAPERDA PEMPROV NTB VX', '2023-06-09 08:49:03', 'selesai', 'file/bahan_draft_raperda/1._MHH04KU0303THN2017.pdf', '[\"file\\/bahan_draft_raperda\\/1._Peraturan-Menteri-Keuangan-Nomor-52PMK062016.pdf\",\"file\\/bahan_draft_raperda\\/1._Permenkumham_Ttg_41_Tahun_2021.pdf\"]', NULL, NULL, 9, 'raperda', 'pemprov_ntb', '2023-06-09 08:54:13', 0, 'Rara Perancang');
INSERT INTO `tbl_tahun` VALUES (108, 'tambah 2 pemprov ntb', '2023-06-09 09:04:27', 'selesai', 'file/bahan_draft_raperda/2._SOP_TUSI_KEUANGAN.pdf', '[\"file\\/bahan_draft_raperda\\/1._Permenkumham_ttg_orta.pdf\"]', NULL, NULL, 9, 'raperda', 'pemprov_ntb', '2023-06-09 09:06:01', 0, 'dini ');
INSERT INTO `tbl_tahun` VALUES (109, 'Tambah Draft pemkot MTRM', '2023-06-09 09:10:23', 'selesai', 'file/bahan_draft_raperda/1._MHH04KU0303THN20171.pdf', '[\"file\\/bahan_draft_raperda\\/1._Permenkumham_Nomor_27_Tahun_20191.pdf\"]', NULL, NULL, 11, 'raperda', 'pemkot_mataram', '2023-06-09 09:19:50', 0, 'ryan');
INSERT INTO `tbl_tahun` VALUES (110, 'Pemkot BIMA Raperkada', '2023-06-09 14:29:10', 'selesai', 'file/bahan_draft_raperda/3._SOP_Perencanaan_dan_Pengelolaan_Aset.pdf', '[\"file\\/bahan_draft_raperda\\/3._Permenkumham_Nomor_38_Tahun_2015.pdf\",\"file\\/bahan_draft_raperda\\/50~PMK.05~2018Per.pdf\"]', NULL, NULL, 12, 'raperkada', 'pemkot_bima', '2023-06-09 14:35:41', 0, 'Fina Perancang');
INSERT INTO `tbl_tahun` VALUES (111, 'coba input pemprov ntb', '2023-06-12 12:03:57', 'selesai', 'file/bahan_draft_raperda/202306071335134150.pdf', '[\"file\\/bahan_draft_raperda\\/Laporan_Evaluasi_Terhadap_Penggunaan_dan_Kondisi_perangkat_jaringan_utama_dan_nirkabel.docx_(1).pdf\",\"file\\/bahan_draft_raperda\\/Panduan_Aplikasi_Katamaran_(3).pdf\"]', NULL, NULL, 9, 'raperda', 'pemprov_ntb', '2023-06-12 12:14:56', 0, 'Rio');
INSERT INTO `tbl_tahun` VALUES (112, 'IDR', '2023-06-13 14:18:53', 'selesai', 'file/bahan_draft_raperda/Surat_Penyampaian_RKT_RB_Tahun_2023_Kantor_Wilayah.pdf', '[\"file\\/bahan_draft_raperda\\/1151_-_Penyampaian_Hasil_Evaluasi_SPBE_Tahun_2022_dan_Pemberitahuan_Penyusunan_Rencana_Aksi_SPBE_(1)_(1).pdf\",\"file\\/bahan_draft_raperda\\/_Laporan_Evaluasi_Tingkat_Kematangan_Pengelolaan_Perangkat_TI.docx_(1).pdf\",\"file\\/bahan_draft_raperda\\/Dokumentasi_Kegiatan_CAT_CATAR_Hari_I_Kanwil_NTB_230612_191728.pdf\"]', NULL, NULL, 9, 'raperda', 'pemprov_ntb', '2023-09-23 08:28:40', 0, 'Fina Panduwinata');
INSERT INTO `tbl_tahun` VALUES (113, 'Coba Raperda Pemkot Mataram 2', '2023-06-14 09:44:45', 'selesai', 'file/bahan_draft_raperda/Undangan_Rekon_HUKDIS_TW_II_Tahun_2023_230603_081839.pdf', '[\"file\\/bahan_draft_raperda\\/Surat_Penyampaian_RKT_RB_Tahun_2023_Kantor_Wilayah1.pdf\",\"file\\/bahan_draft_raperda\\/Undangan_Pembukaan_FMD_Petugas_Pemasyarakatan.pdf\"]', NULL, NULL, 11, 'raperda', 'pemkot_mataram', '2023-09-23 08:26:48', 0, 'Hermi Sakinna');
INSERT INTO `tbl_tahun` VALUES (114, 'RAPERKADA BIMA PEMKAB', '2023-06-14 10:24:56', 'selesai', 'file/bahan_draft_raperda/_Laporan_Evaluasi_Tingkat_Kematangan_Pengelolaan_Perangkat_TI.docx_(1)1.pdf', '[\"file\\/bahan_draft_raperda\\/Buku_Pedoman_Orientasi_CPNS_KUMHAM_2022.pdf\",\"file\\/bahan_draft_raperda\\/Akte_Kelahiran_Kalila_Shezani_Iswara.pdf\"]', NULL, NULL, 20, 'raperkada', 'pemkab_bima', '2023-09-23 08:45:15', 0, 'Yanto Madya');
INSERT INTO `tbl_tahun` VALUES (115, 'Pemprov NTB Raperda III', '2023-06-14 14:07:59', 'belum_diproses', 'file/bahan_draft_raperda/1._Permenkumham_57_tahun_2016_tentang_pengelolaan.pdf', '[\"file\\/bahan_draft_raperda\\/1._Permenkumham_Ttg_41_Tahun_20212.pdf\",\"file\\/bahan_draft_raperda\\/1._Peraturan-Menteri-Keuangan-Nomor-52PMK0620161.pdf\"]', NULL, NULL, 9, 'raperda', 'pemprov_ntb', '2023-06-14 15:22:32', 0, 'Rio');
INSERT INTO `tbl_tahun` VALUES (117, 'ujikkk', '2023-07-03 11:46:00', 'selesai', 'file/bahan_draft_raperda/2._PERBKN-2-TAHUN-2021.pdf', '[\"file\\/bahan_draft_raperda\\/1._Permenkumham_Ttg_41_Tahun_20213.pdf\",\"file\\/bahan_draft_raperda\\/3._SOP_Perencanaan_dan_Pengelolaan_Aset1.pdf\"]', NULL, NULL, 1, 'raperkada', 'pemprov_ntb', '2023-07-03 17:02:22', 0, NULL);
INSERT INTO `tbl_tahun` VALUES (128, 'ttttt', '2023-07-05 10:22:44', 'belum_diproses', 'file/bahan_draft_raperda/1._MHH04KU0303THN20178.pdf', '[\"file\\/bahan_draft_raperda\\/1._Peraturan-Menteri-Keuangan-Nomor-52PMK0620163.pdf\"]', 'file/bahan_draft_raperda/1._PERATURAN_MENTERI_KEUANGAN_REPUBLIK_INDONESIA3.pdf', NULL, 1, 'raperda', 'pemprov_ntb', '2023-07-05 10:22:44', 0, NULL);
INSERT INTO `tbl_tahun` VALUES (129, 'i will be taken', '2023-07-05 10:37:28', 'belum_diproses', 'file/bahan_draft_raperda/1._MHH04KU0303THN20179.pdf', '[\"file\\/bahan_draft_raperda\\/2._PERBKN-2-TAHUN-20211.pdf\",\"file\\/bahan_draft_raperda\\/2_Juknis-SAIBA-versi-19.0.01.pdf\",\"file\\/bahan_draft_raperda\\/198912292022031002_JOHAN_ISWARA_.pdf\"]', 'file/bahan_draft_raperda/1._PERATURAN_MENTERI_KEUANGAN_REPUBLIK_INDONESIA4.pdf', 'file/bahan_draft_raperda/1._Permenkumham_Ttg_41_Tahun_20214.pdf', 1, 'raperda', 'pemprov_ntb', '2023-07-06 15:25:37', 0, NULL);
INSERT INTO `tbl_tahun` VALUES (133, 'raperkada eett', '2023-07-06 15:28:36', 'selesai', 'file/bahan_draft_raperda/1._Permenkumham_Ttg_41_Tahun_20215.pdf', '[\"file\\/bahan_draft_raperda\\/2._PERBKN-2-TAHUN-20212.pdf\",\"file\\/bahan_draft_raperda\\/2._Salinan-Per.BKN-No.1-Th.2021-13.pdf\"]', 'file/bahan_draft_raperda/Surat_Undangan_Peserta_Sosialisasi_IRH_2023.pdf', 'file/bahan_draft_raperda/Rundown_Agenda_Wamenkumham_KGTC_Mataram.docx', 1, 'raperda', 'pemprov_ntb', '2023-07-10 07:48:10', 0, 'Fika');
INSERT INTO `tbl_tahun` VALUES (134, 'sikk asik jozz', '2023-07-10 10:23:54', 'selesai', 'file/bahan_draft_raperda/Surat_Undangan_Peserta_Sosialisasi_IRH_20232.pdf', '[\"file\\/bahan_draft_raperda\\/UM.66_Evaluasi_dan_Silaturahmi_dengan_Kepala_Divisi_Pemasyarakatan_dan_Kepala_UPT_Se-Nusantara1.pdf\",\"file\\/bahan_draft_raperda\\/2._SOP_TUSI_KEUANGAN1.pdf\",\"file\\/bahan_draft_raperda\\/3._Permenkumham_Nomor_38_Tahun_20151.pdf\"]', 'file/bahan_draft_raperda/Perubahan_Tanggal_Pelaksanaan_Kegiatan_Penilaian_K_230702_1806542.pdf', 'file/bahan_draft_raperda/PERUBAHAN_PERDA_NO_13_TAHUN_2016_final_print.rtf3.doc', 1, 'raperda', 'pemprov_ntb', '2023-07-10 15:31:30', 0, 'Finag');
INSERT INTO `tbl_tahun` VALUES (135, 'sek bijimanez', '2023-07-10 15:50:31', 'belum_diproses', 'file/bahan_draft_raperda/Surat_Undangan_Peserta_Sosialisasi_IRH_20233.pdf', 'null', 'file/bahan_draft_raperda/PERUBAHAN_PERDA_NO_13_TAHUN_2016_final_print.rtf4.doc', 'file/bahan_draft_raperda/hahahah.docx', 1, 'raperkada', 'pemprov_ntb', '2023-07-11 09:29:00', 0, NULL);
INSERT INTO `tbl_tahun` VALUES (136, 'asa', '2023-07-13 15:33:02', 'belum_diproses', 'file/bahan_draft_raperda/1._MHH04KU0303THN201710.pdf', 'null', NULL, 'file/bahan_draft_raperda/hahahah1.docx', 1, 'raperda', 'pemprov_ntb', '2023-07-13 15:42:52', 0, NULL);
INSERT INTO `tbl_tahun` VALUES (137, 'sumbawa barat Raperda', '2023-07-18 14:59:14', 'belum_diproses', 'file/bahan_draft_raperda/1._MHH04KU0303THN201711.pdf', 'null', NULL, 'file/bahan_draft_raperda/surat_pernyataan_potongan_tunker_21.docx', 10, 'raperda', 'pemkab_sumbawa_barat', '2023-09-29 06:34:38', 0, NULL);
INSERT INTO `tbl_tahun` VALUES (138, 'saas', '2023-08-24 11:26:02', 'selesai', 'file/bahan_draft_raperda/Surat_Penunjukan_kontributor_2023.docx', 'null', 'file/bahan_draft_raperda/surat_11905310.pdf', 'file/bahan_draft_raperda/Surat_Penunjukan_kontributor_20231.docx', 1, 'raperda', 'pemprov_ntb', '2023-09-25 08:47:58', 0, 'edit nama perancang');
INSERT INTO `tbl_tahun` VALUES (148, 'asds', '2023-09-29 16:03:59', 'belum_diproses', 'file/bahan_draft_raperda/RAPERBUP_TENTANG_RAD_KLA_2023-20281.doc', '[\"file\\/bahan_draft_raperda\\/absensi_apel_harian_pagi_n_sore_(1)2.docx\"]', 'file/bahan_draft_raperda/Nodin_Koordinasi_Konsultasi_KEHUMASAN_dan_TI_(1)1.docx', 'file/bahan_draft_raperda/absensi_apel_harian_pagi_n_sore_(1)_(1)1.docx', 13, 'raperda', 'pemkab_sumbawa_barat', '2023-09-29 12:03:58', 0, '');
INSERT INTO `tbl_tahun` VALUES (150, 'Pemprov NTB 14', '2023-09-29 17:57:22', 'belum_diproses', 'file/bahan_draft_raperda/RAPERBUP_TENTANG_RAD_KLA_2023-20283.doc', '[\"file\\/bahan_draft_raperda\\/DRAF_PEDOMAN_12_SEP3.docx\"]', 'file/bahan_draft_raperda/Nodin_Koordinasi_Konsultasi_KEHUMASAN_dan_TI_(1)3.docx', 'file/bahan_draft_raperda/absensi_apel_harian_pagi_n_sore_(1)_(1)3.docx', 9, 'raperda', 'pemprov_ntb', '2023-09-29 12:08:44', 0, '');
INSERT INTO `tbl_tahun` VALUES (152, 'ujian sumbawa baratz', '2023-10-02 09:04:33', 'sedang_diproses', 'file/bahan_draft_raperda/Tanggapan_Raperwal_Perubahan_Tambahan_Penghasilan_ASN.docx', '[\"file\\/bahan_draft_raperda\\/laporan_Konsul.docx\"]', 'file/bahan_draft_raperda/Nodin_Koordinasi_Konsultasi_KEHUMASAN_dan_TI_(1)2.docx', 'file/bahan_draft_raperda/RAPERBUP_TENTANG_PETA_BATAS_DESA_SETELUK_TENGAH_SETELAH_PEMEKARAN.docx', 13, 'raperda', 'pemkab_sumbawa_barat', '2023-11-15 15:59:45', 0, 'Baiq Fina');
INSERT INTO `tbl_tahun` VALUES (153, 'Ujian SUMBARAT', '2023-10-02 09:53:11', 'selesai', 'file/bahan_draft_raperda/RAPERBUP_TENTANG_PETA_BATAS_DESA_SETELUK_TENGAH_SETELAH_PEMEKARAN13.docx', '[\"file\\/bahan_draft_raperda\\/Tanggapan_Raperda_Kota_Mataram_Pengelolaan_Parkir.pdf\"]', 'file/bahan_draft_raperda/2023_Sambutan_Menkumham_pada_Upacara_Peringatan_Hari_Kesaktian_Pancasila.pdf', 'file/bahan_draft_raperda/Tanggapan_Raperwal_Perubahan_Tambahan_Penghasilan_ASN2.docx', 13, 'raperda', 'pemkab_sumbawa_barat', '2023-10-02 09:57:34', 0, 'Baiq Rara');
INSERT INTO `tbl_tahun` VALUES (154, 'tes', '2023-11-13 13:58:26', 'sedang_diproses', 'file/bahan_draft_raperda/RAPERBUP_TENTANG_SMART_CITY_SUMBAWA_BARAT.docx', 'null', 'file/bahan_draft_raperda/lap-bm-semua-tanggal.pdf', 'file/bahan_draft_raperda/absensi_apel_harian_pagi_n_sore_(1)_(3).docx', 11, 'raperda', 'pemkot_mataram', '2023-11-15 15:24:38', 0, 'Jufriadi');

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `kode_pereseanuser` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `foto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `level` enum('superadmin','pelaksana','humas','perancang','kasub_perancang','pemda','guest','disable') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `no_handphone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_zona` int(10) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `tgl_update` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE,
  INDEX `id_zona`(`id_zona`) USING BTREE,
  INDEX `kode_pereseanuser`(`kode_pereseanuser`(768)) USING BTREE,
  CONSTRAINT `tbl_user_ibfk_1` FOREIGN KEY (`id_zona`) REFERENCES `tbl_zona` (`id_zona`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, 'PRS-NTB-01', 'Administrator Kanwil', 'administrator', '$2y$10$GlIaKFfuH5FBojpBRrdnD.g7P/t.LGVsDr4iaxdjhcJE729lkIrGW', 'administrator.png', 'superadmin', '6282144874510', 64, NULL, '2025-02-10 15:07:17');
INSERT INTO `tbl_user` VALUES (2, 'PRS-NTB-02', 'Pelaksana', 'pelaksana', '$2y$10$V.Es3WiUs2U1xnlnOmw/lOoisLQMbRvBYTZa6eqCMKM65sznly3S.', NULL, 'pelaksana', '6282144874501', NULL, NULL, NULL);
INSERT INTO `tbl_user` VALUES (3, 'PRS-NTB-03', 'Humas', 'humas', '$2y$10$V.Es3WiUs2U1xnlnOmw/lOoisLQMbRvBYTZa6eqCMKM65sznly3S.', NULL, 'humas', '6282144874504', NULL, NULL, NULL);
INSERT INTO `tbl_user` VALUES (8, NULL, 'Perancang edit', 'perancang', '$2y$10$V.Es3WiUs2U1xnlnOmw/lOoisLQMbRvBYTZa6eqCMKM65sznly3S.', NULL, 'perancang', '6282144874503', 1, NULL, NULL);
INSERT INTO `tbl_user` VALUES (9, 'PRS-NTB-05', 'Pemerintah Provinsi NTB', 'pemprov_ntb', '$2y$10$V.Es3WiUs2U1xnlnOmw/lOoisLQMbRvBYTZa6eqCMKM65sznly3S.', NULL, 'pemda', '6282144874503', 7, NULL, '2023-06-19 09:08:30');
INSERT INTO `tbl_user` VALUES (10, 'PRS-NTB-06', 'Kasub Perancang', 'kasub_perancang', '$2y$10$V.Es3WiUs2U1xnlnOmw/lOoisLQMbRvBYTZa6eqCMKM65sznly3S.', NULL, 'kasub_perancang', '6282144874503', 1, NULL, NULL);
INSERT INTO `tbl_user` VALUES (11, 'PRS-NTB-07', 'Pemerintah Kota Mataram', 'pemkot_mataram', '$2y$10$V.Es3WiUs2U1xnlnOmw/lOoisLQMbRvBYTZa6eqCMKM65sznly3S.', NULL, 'pemda', '6281803703385', 8, NULL, NULL);
INSERT INTO `tbl_user` VALUES (12, 'PRS-NTB-08', 'Pemerintah Kota Bima', 'pemkot_bima', '$2y$10$V.Es3WiUs2U1xnlnOmw/lOoisLQMbRvBYTZa6eqCMKM65sznly3S.', NULL, 'pemda', '6282144874503', 10, NULL, NULL);
INSERT INTO `tbl_user` VALUES (13, 'PRS-NTB-09', 'Pemerintah Kabupaten Sumbawa Barat', 'pemkab_sumbawa_barat', '$2y$10$V.Es3WiUs2U1xnlnOmw/lOoisLQMbRvBYTZa6eqCMKM65sznly3S.', NULL, 'pemda', '6282144874503', 13, NULL, NULL);
INSERT INTO `tbl_user` VALUES (14, 'PRS-NTB-010', 'Pemerintah Kabupaten Sumbawa', 'pemkab_sumbawa', '$2y$10$V.Es3WiUs2U1xnlnOmw/lOoisLQMbRvBYTZa6eqCMKM65sznly3S.', NULL, 'pemda', '6282144874503', 14, NULL, NULL);
INSERT INTO `tbl_user` VALUES (15, 'PRS-NTB-011', 'Pemerintah Kabupaten Lombok Utara', 'pemkab_lombok_utara', '$2y$10$V.Es3WiUs2U1xnlnOmw/lOoisLQMbRvBYTZa6eqCMKM65sznly3S.', NULL, 'pemda', '6282144874503', 17, NULL, NULL);
INSERT INTO `tbl_user` VALUES (16, 'PRS-NTB-012', 'Pemerintah Kabupaten Lombok Timur', 'pemkab_lombok_timur', '$2y$10$V.Es3WiUs2U1xnlnOmw/lOoisLQMbRvBYTZa6eqCMKM65sznly3S.', NULL, 'pemda', '6282144874503', 18, NULL, NULL);
INSERT INTO `tbl_user` VALUES (17, 'PRS-NTB-013', 'Pemerintah Kabupaten Lombok Tengah', 'pemkab_lombok_tengah', '$2y$10$V.Es3WiUs2U1xnlnOmw/lOoisLQMbRvBYTZa6eqCMKM65sznly3S.', NULL, 'pemda', '6282144874503', 19, NULL, NULL);
INSERT INTO `tbl_user` VALUES (18, 'PRS-NTB-014', 'Pemerintah Kabupaten Lombok Barat', 'pemkab_lombok_barat', '$2y$10$V.Es3WiUs2U1xnlnOmw/lOoisLQMbRvBYTZa6eqCMKM65sznly3S.', NULL, 'pemda', '6282144874503', 20, NULL, NULL);
INSERT INTO `tbl_user` VALUES (19, 'PRS-NTB-015', 'Pemerintah Kabupaten Dompu', 'pemkab_dompu', '$2y$10$V.Es3WiUs2U1xnlnOmw/lOoisLQMbRvBYTZa6eqCMKM65sznly3S.', NULL, 'pemda', '6282144874503', 21, NULL, NULL);
INSERT INTO `tbl_user` VALUES (20, 'PRS-NTB-016', 'Pemerintah Kabupaten Bima', 'pemkab_bima', '$2y$10$V.Es3WiUs2U1xnlnOmw/lOoisLQMbRvBYTZa6eqCMKM65sznly3S.', NULL, 'pemda', '6282144874503', 22, NULL, NULL);
INSERT INTO `tbl_user` VALUES (21, 'PRS-NTB-017', 'Pemda KSB', 'pemda_ksb', '$2y$10$V.Es3WiUs2U1xnlnOmw/lOoisLQMbRvBYTZa6eqCMKM65sznly3S.', NULL, 'pemda', '6282144874503', 13, NULL, '2023-09-04 11:13:41');
INSERT INTO `tbl_user` VALUES (22, 'PRS-NTB-019', 'Baiq Fina', 'fina', '$2y$10$V.Es3WiUs2U1xnlnOmw/lOoisLQMbRvBYTZa6eqCMKM65sznly3S.', NULL, 'perancang', '6281284836651', 1, NULL, NULL);
INSERT INTO `tbl_user` VALUES (23, 'PRS-NTB-020', 'Baiq Rara', 'rara', '$2y$10$V.Es3WiUs2U1xnlnOmw/lOoisLQMbRvBYTZa6eqCMKM65sznly3S.', NULL, 'perancang', '6281284836651', 1, NULL, NULL);
INSERT INTO `tbl_user` VALUES (24, 'PRS-NTB-021', 'Fathin Rodada', 'fathin', '$2y$10$V.Es3WiUs2U1xnlnOmw/lOoisLQMbRvBYTZa6eqCMKM65sznly3S.', NULL, 'perancang', '6281284836651', 1, NULL, NULL);
INSERT INTO `tbl_user` VALUES (25, 'PRS-NTB-022', 'Pahitiartik', 'pahit', '$2y$10$V.Es3WiUs2U1xnlnOmw/lOoisLQMbRvBYTZa6eqCMKM65sznly3S.', NULL, 'perancang', '6281284836651', 1, NULL, NULL);
INSERT INTO `tbl_user` VALUES (26, 'PRS-NTB-023', 'Suyanto', 'yanto', '$2y$10$V.Es3WiUs2U1xnlnOmw/lOoisLQMbRvBYTZa6eqCMKM65sznly3S.', NULL, 'perancang', '6281284836651', 1, NULL, NULL);
INSERT INTO `tbl_user` VALUES (27, 'PRS-NTB-024', 'Riky', 'riky', '$2y$10$V.Es3WiUs2U1xnlnOmw/lOoisLQMbRvBYTZa6eqCMKM65sznly3S.', NULL, 'perancang', '6281284836651', 1, NULL, NULL);
INSERT INTO `tbl_user` VALUES (28, 'PRS-NTB-025', 'Muzayin', 'ayin', '$2y$10$V.Es3WiUs2U1xnlnOmw/lOoisLQMbRvBYTZa6eqCMKM65sznly3S.', NULL, 'perancang', '6281284836651', 1, NULL, NULL);
INSERT INTO `tbl_user` VALUES (29, 'PRS-NTB-026', 'Devi', 'devi', '$2y$10$V.Es3WiUs2U1xnlnOmw/lOoisLQMbRvBYTZa6eqCMKM65sznly3S.', NULL, 'perancang', '6281284836651', 1, NULL, NULL);
INSERT INTO `tbl_user` VALUES (30, 'PRS-NTB-027', 'Guest', 'guest', '$2y$10$V.Es3WiUs2U1xnlnOmw/lOoisLQMbRvBYTZa6eqCMKM65sznly3S.', NULL, 'guest', '6281284836651', 1, NULL, NULL);
INSERT INTO `tbl_user` VALUES (32, 'PRS-NTB-028', 'Tesupdated', 'updateusernamed', '$2y$10$V.Es3WiUs2U1xnlnOmw/lOoisLQMbRvBYTZa6eqCMKM65sznly3S.', NULL, 'perancang', '99999999999', 1, NULL, '2024-09-10 08:14:20');
INSERT INTO `tbl_user` VALUES (35, 'PRS-NTB-018', 'Dedy Hutagaol Lae', 'dedyhutaga', '$2y$10$O1zNTrXJlPZG.bSmN0o2l.T6He33DTqEWDlV2Qw6I4.X628p/0YGG', 'dedyhutaga.jpeg', 'perancang', '09876614444', NULL, '2025-02-07 11:26:39', '2025-02-07 11:30:04');
INSERT INTO `tbl_user` VALUES (36, 'PRS-NTB-04', 'Ardina Lukita S', 'dina', '$2y$10$DTRby1TBB.9Hnt5R5VlBEO0tTkUZjr41FozPVzMjsREUkNTuIBsF6', 'dina.jpeg', 'perancang', '0981', NULL, '2025-02-10 10:11:55', '2025-02-10 10:25:00');

-- ----------------------------
-- Table structure for tbl_zona
-- ----------------------------
DROP TABLE IF EXISTS `tbl_zona`;
CREATE TABLE `tbl_zona`  (
  `id_zona` int(10) NOT NULL AUTO_INCREMENT,
  `nama_zona` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_input` datetime(0) NULL DEFAULT NULL,
  `status` enum('belum_diproses','perbaikan','draft_sedang_dibuat','menunggu_koreksi','selesai') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_panjang` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `warna_background` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_zona`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_zona
-- ----------------------------
INSERT INTO `tbl_zona` VALUES (1, 'kasub_perancang', '2023-06-07 16:03:35', NULL, 'Kasub Perancang', 'bg-gradient-purple');
INSERT INTO `tbl_zona` VALUES (7, 'pemprov_ntb', '2023-05-08 11:25:22', '', 'Pemerintah Provinsi NTB', 'bg-gradient-purple');
INSERT INTO `tbl_zona` VALUES (8, 'pemkot_mataram', '2023-05-08 11:25:22', '', 'Pemerintah Kota Mataram', 'bg-gradient-orange');
INSERT INTO `tbl_zona` VALUES (10, 'pemkot_bima', '2023-05-08 11:25:22', 'menunggu_koreksi', 'Pemerintah Kota Bima', 'bg-gradient-dark-blue-light');
INSERT INTO `tbl_zona` VALUES (13, 'pemkab_sumbawa_barat', '2023-05-08 11:25:22', 'belum_diproses', 'Pemerintah Kabupaten Sumbawa Barat', 'bg-gradient-red');
INSERT INTO `tbl_zona` VALUES (14, 'pemkab_sumbawa', '2023-05-08 11:25:22', 'belum_diproses', 'Pemerintah Kabupaten Sumbawa', 'bg-gradient-green');
INSERT INTO `tbl_zona` VALUES (17, 'pemkab_lombok_utara', '2023-05-08 11:25:22', 'draft_sedang_dibuat', 'Pemerintah Kabupaten Lombok Utara', 'bg-gradient-blue-inverse');
INSERT INTO `tbl_zona` VALUES (18, 'pemkab_lombok_timur', '2023-05-08 11:25:22', 'belum_diproses', 'Pemerintah Kabupaten Lombok Timur', 'bg-gradient-yellow');
INSERT INTO `tbl_zona` VALUES (19, 'pemkab_lombok_tengah', '2023-05-08 11:25:22', 'draft_sedang_dibuat', 'Pemerintah Kabupaten Lombok Tengah', 'bg-gradient-red-orange');
INSERT INTO `tbl_zona` VALUES (20, 'pemkab_lombok_barat', '2023-05-08 11:25:22', 'draft_sedang_dibuat', 'Pemerintah Kabupaten Lombok Barat', 'bg-gradient-blue-dark');
INSERT INTO `tbl_zona` VALUES (21, 'pemkab_dompu', '2023-05-08 11:25:22', 'menunggu_koreksi', 'Pemerintah Kabupaten Dompu', 'bg-gradient-red-orange');
INSERT INTO `tbl_zona` VALUES (22, 'pemkab_bima', '2023-05-08 11:25:22', 'selesai', 'Pemerintah Kabupaten Bima', 'bg-gradient-pink');
INSERT INTO `tbl_zona` VALUES (64, 'superadmin', '2023-06-07 16:03:35', NULL, 'Superadmin', 'bg-gradient-purple');
INSERT INTO `tbl_zona` VALUES (65, 'perancang', '2023-06-07 16:03:35', NULL, 'Perancang', 'bg-gradient-purple');

SET FOREIGN_KEY_CHECKS = 1;
