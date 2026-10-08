#no 1 wktu tunggu, miu 5 untuk (p>5)
#kalau materi pke yang e(x) = 1/lambda(sama kaya yg contoh bus)
mu_1 <- 5
lambda <- 1/mu_1
peluang_1 <- pexp(5, rate = lambda, lower.tail =  FALSE)
peluang_1

#no 2 kereta tiba interval 20 minuets , varians waktu tunggu(uniform)
a <- 0
b <- 20
var_WT <- (b-a)^2/12
var_WT
 
#no 3 sensor suhu, miu 10 thun dan p rusak sblm 5
mu_3 <- 10
lambda_3 <- 1/mu_3

peluang_3 <- pexp(5, rate = lambda, lower.tail = TRUE)
peluang_3
#no 4
mu <- 250
sigma <- 5
proporsi <- pnorm(240,  mean = mu, sd = sigma)
proporsi