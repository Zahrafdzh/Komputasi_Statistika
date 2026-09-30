# SOAL 1(Rata-rata pelanggan datang = 3 orang/jam -> Poisson(lambda = 3))
# Hitung P(X >= 5)
lambda <- 3
# P(X >= 5) = 1 - P(X <= 4) = 1 - [P(0)+P(1)+P(2)+P(3)+P(4)]
PX_ge5 <- 1 - sum(dpois(0:4, lambda = lambda))
PX_ge5
# Visualisasi PMF Poisson(lambda = 3), area k >= 5 adalah yang dihitung
k <- 0:15
pmf_pois <- dpois(k, lambda = lambda)
plot(k, pmf_pois, type = "h", lwd = 3,
     main = "PMF Poisson(lambda = 3)",
     xlab = "k (jumlah pelanggan per jam)",
     ylab = "P(X = k)")


# SOAL 2(100 bola, 20 merah (sukses), diambil 10 tanpa pengembalian)
N <- 100   # banyaknya bola populasi
K <- 20    # yang sukses bola merah
n <- 10    #  sampel yang diambil ga ada pengembalian
k <- seq(from = max(0, n + K - N), to = min(n, K))
# PMF: P(X = k)
pmf_hyper <- dhyper(k, m = K, n = N - K, k = n)
data.frame(k = k, P = pmf_hyper)
# Plot PMF
plot(k, pmf_hyper, type = "h", lwd = 3,
     main = paste0("Hypergeometric(N=", N, ", K=", K, ", n=", n, ")"),
     xlab = "k (banyak bola merah dalam sampel)",
     ylab = "P(X=k)")

# Ekspektasi dan varian 
Ekspektasi_X <- n * K / N
Var_X <- n * (K / N) * (1 - K / N) * ((N - n) / (N - 1))
Ekspektasi_X
Var_X


# SOAL 3 (Simulasi 1000 percobaan Binomial(n = 15, p = 0.4)
set.seed(2025)
n_trial <- 15
p <- 0.4
m <- 1000

# Simulasi
samp <- rbinom(m, size = n_trial, prob = p)

# Histogram hasil simulasi biar sebanding sama pmf
hist(samp,
     breaks = seq(-0.5, n_trial + 0.5, by = 1),
     probability = TRUE,
     col = "lightblue3",
     main = "Simulasi vs PMF Teoretis - Binomial(n=15, p=0.4)",
     xlab = "Jumlah sukses (k)",
     ylab = "Proporsi / Peluang")
k <- 0:n_trial
pmf_binom <- dbinom(k, size = n_trial, prob = p)
points(k, pmf_binom, col = "red", pch = 19)
lines(k, pmf_binom, col = "red", lwd = 2)

