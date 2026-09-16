#masukin data iris
data(iris)
str(iris)
#1. tampilkan data Sepal.Legth saja
iris$Sepal.Length
#2. sebutkan tipe data setiap kolom
str(iris)
#3. Buat variabel baruturunan dari Sepal.Width
# besar kalau Sepal.Width > 3, dan selain itu jadinya kecil
iris$turunan <- ifelse(iris$Sepal.Width > 3, "Besar", "Kecil")
head(iris)
#4. ubah nama variabel turunan jadi sepal
names(iris)[names(iris) == "turunan"] <- "sepal"
head(iris)
#5. ambil data sepal = "besar" dari virginica
data_virginica_besar <- iris[iris$sepal == "Besar" & iris$Species == "virginica", ]
data_virginica_besar
#6. Cek jumlah species di data
table(iris$Species)
#7. pecah data iris jadi 3 data frame, setiap frame khusus 1 spesies aja
iris_setosa <- iris[iris$Species == "setosa", ]
iris_versicolor <- iris[iris$Species == "versicolor", ]
iris_virginica <- iris[iris$Species == "virginica", ]
#8. urutkan tiap frame sesuai Sepal.Width
iris_setosa <- iris_setosa[order(iris_setosa$Sepal.Width), ]
iris_versicolor <- iris_versicolor[order(iris_versicolor$Sepal.Width), ]
iris_virginica <- iris_virginica[order(iris_virginica$Sepal.Width), ]
iris_setosa
iris_versicolor
iris_virginica