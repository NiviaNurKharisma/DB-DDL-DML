/*CARA KONEKSI MYSQL via TERMINAL*/
cd xampp\mysql\bin;
> mysql -u root -p;

/*CRA MENAMPILKAN DATABASE*/
SHOW DATABASE:

/* CARA MEMBUAT DATABASE */
CREATE DATABASE 11rpl1_db;

/*CARA MEMBUAT TABLE*/
CREATE TABLE`siswa`( 
id_siswa INT (11) PRIMARY KEY AUOTO_INCEMENT,
nis CHAR (10),
nama_lengkap VARCHAR (255),
jk CHAR (1),
tempat_lahir VARCHAR (255),
tanggal_lahir DATE,
alamat TEXT,
no_hp CHAR (15),
tanggal_entri DATETIME
);

/*CARA MENAMPPILKAN TABLE*/
SHOW TABLE;

/*CARA MENAMPILKAN SPESIFIKASI TABLE*/
DESCRIBE `siswa`;

/*CARA MENAMBAHKAN RECORD KE TABLE*/
INSERT INTO `siswa` SET
id_siswa = NULL,
nis = '10801050',
nama_lengkap = 'IHSAN FAJAR RAMADHAN',
jk = 'L',
tempat_lahir = 'SUBANG',
tanggal_lahir = '2002-11-27',
alamat = 'DUSUN PATROL',
no_hp = '089xxxxxxxxx',
tanggal_entri = NOW ();

/*CARA MENAMPILKAN SELURUH DATA TABLE*/
SELECT * FROM `siswa`;

/*CARA MENAMPILAKN DATA DENGANA KONDISI TERTENTU*/
SELECT * FROM `siswa` WHERE jk = 'P';

/*CARA MENAMPILKAN ATAU MENGURUTKAN BEBERPA/BATAS RECORD PADA TABLE*/
SELECT * FROM `siswa` LIMIT 3, 5;

/*CARA MENAMPILKAN/MENGURUTKAN RECORD BERDASARKAN FIELD TERTENTU*/
SELECT * FROM `siswa` ORDER BY tanggal_lahir DESC;

/*CARA MENAMPILKAN FIELD MENGGUNAKAN FUNCTION*/
SELECT UPPER (alamat) FROM `siswa`;

/*CARA MENAMPILKAN BEBERAPA FIELD dengan KONDISI TERTENTU*/
SELECT nama_lengkap, tempat_lahir, tanggal_lahir FROM   `siswa` WHERE YEAR (tanggal_lahir) = 2002;

/*CARA MEMPERTBAHARUI PADA TABLE*/
UPDATE `siswa` SET tempat_lahir = 'BANDUNG', tanggal_lahir = '2003-01012' WHERE id_siswa = '1';

/*CARA MENGHAPUS DATA/RECORD*/
DELETE FROM `siswa` WHERE id_siswa = '1';