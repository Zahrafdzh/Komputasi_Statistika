#vector numeric
uts <- c(80.5, 71.7, 92.9, 94.1, 87.2)
uas <- c(87.1, 69.5, 93.4, 84.9, 79.9)
nilai_akhir <- 0.4*uts + 0.6*uas
nilai_akhir
#vector integer
mk_ganjil <- c(20L, 19L, 22L, 24L, 23L)
mk_genap <- c(22L, 25L, 18L, 21L, 23L)
total_mk <- mk_ganjil + mk_genap
total_mk
#vector logical
hadir <- c(FALSE, FALSE, FALSE, TRUE, TRUE)
lulus <- nilai_akhir >= 75
lulus
#matrix 4x4
matriks_1 <- matrix(1:16, nrow = 4, ncol = 4)
matriks_1
matriks_2 <- matrix(16:1, nrow = 4,ncol = 4)
matriks_2
matriks_3 <- matriks_2*2 + matriks_1
matriks_3
#array 4 dimensi(ukuran/dimensi)
array_1 <- array(1:24, dim = c(2,3,2,2))
array_1
array_2 <- array(24:1, dim = c(2,3,2,2))
array_2
array_3 <- array_1 + array_2
array_3
#data frame 4  (karakter,numerik,integer,logic)
mahasiswa_statistika <- data.frame(
  Nama = c("zahra", "hanin","hilma","fanny", "devina"), 
  NilaiAkhir = nilai_akhir,
  semester = c(3L,3L,3L,3L,3L),
  Lulus = lulus
)
mahasiswa_statistika
#list (di dalam list)
pemilihan_kelas <- list(
  angka = nilai_akhir,
  id = total_mk,
  df = mahasiswa_statistika,
  perbaikan = list(
    angka = c(78.8, 90.3, 98.1, 87.7, 85.9),
    id = c(23L,22L,24L,21L,22L),
    df = data.frame(
      Nama = c("fifa", "tiara", "zalfa", "syaima", "nata"),
      NilaiAkhir = c(80.3, 89.1, 87.9, 92.7, 88.1)
  
    )
  )
)

pemilihan_kelas$angka
pemilihan_kelas$id
pemilihan_kelas$df
pemilihan_kelas$perbaikan$angka
pemilihan_kelas$perbaikan$id
pemilihan_kelas$perbaikan$df

