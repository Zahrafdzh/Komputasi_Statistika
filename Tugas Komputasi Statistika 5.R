#no 1 wktu tunggu, miu 5 untuk (p>5)
#kalau materi pke yang e(x) = 1/lambda(sama kaya yg contoh bus)
pexp(5,rate = 1/5, lower.tail = FALSE)
set.seed(1)
x <- rexp(100000, rate = 1/5)
mean(x > 5)

#no 2 kereta tiba interval 20 minuets , varians waktu tunggu(uniform)
set.seed (1)
n <- 100000
a <- 0
b <- 20
x <- runif(n,min = a, max = b)
var(x)

 
#no 3 sensor suhu, miu 10 thun dan p rusak sblm 5
pexp(5,rate = 1/10)
set.seed(1)
x <- rexp(100000, rate = 1/10)
mean(x<5)

#no 4
mu <- 250
sigma <- 5
pnorm(240,  mean = mu, sd = sigma)