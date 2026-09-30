# 1. Bagaimana query untuk mendapatkan seluruh data dari tabel tersebut?
SELECT * FROM indeks_pengelolaan;

#2.Apa saja kabupaten/kota yang ada di Jawa Barat pada dataset ini?
SELECT DISTINCT `Kabupaten/Kota` FROM indeks_pengelolaan;

#3.Ada berapa kategori predikat?
SELECT DISTINCT Kategori FROM indeks_pengelolaan;

#4.Berapa nilai indeks pengelolaan keuangan Kabupaten Cianjur pada tahun 2024?
SELECT `Indeks Total`,`Kabupaten/Kota` FROM indeks_pengelolaan WHERE `Kabupaten/Kota`="Kab Cianjur";

#5. Di antara Kab. Tasikmalaya, Kab. Ciamis, dan Kab. Cirebon, manakah yang memiliki nilai indeks pengelolaan keuangan terendah pada 2024?
SELECT `Kabupaten/Kota`,`Indeks Total` FROM indeks_pengelolaan WHERE `Kabupaten/Kota` IN ("Kab Tasikmalaya", "Kab Ciamis", "Kab Cirebon") ORDER BY `Indeks Total`;

#6.Apa kategori predikat pengelolaan keuangan di Kab. Bandung, Kab. Bandung barat, dan Kota Bandung di 2024?
SELECT `Kabupaten/Kota`, Kategori FROM indeks_pengelolaan WHERE `Kabupaten/Kota` IN ("Kab Bandung Barat","Kab Bandung", "Kota Bandung");

#7.Tampilkan data 5 kabupaten (tanpa kota) dengan nilai indeks pengelolaan keuangan tertinggi di tahun 2024!
SELECT `Indeks Total` FROM indeks_pengelolaan ACS LIMIT 5;





