library(shiny)

shinyServer(function(input, output) {
  
    helptext <- reactive({
      if(input$Distribution == "dbeta")
      {
        webpage <- c("https://stat.ethz.ch/R-manual/R-devel/library/stats/html/Beta.html\n")
        sometext1 <- c("Characteristic value 1 corresponds to shape1, alpha, or a, and can take any value above 0")
        sometext2 <- c("Characteristic value 2 corresponds to shape2, beta, or b, and can take any value above 0")
        sometext3 <- c("Characteristic value 3 corresponds to nothing, and does nothing")
      }
      else if(input$Distribution == "dbinom")
      {
        webpage <- c("https://stat.ethz.ch/R-manual/R-devel/library/stats/html/Binomial.html\n")
        sometext1 <- c("Characteristic value 1 corresponds to size, and must be positive whole number")
        sometext2 <- c("Characteristic value 2 corresponds to prob, the probability of success")
        sometext3 <- c("Characteristic value 3 corresponds to nothing, and does nothing")
      }
      else if(input$Distribution == "dcauchy")
      {
        webpage <- c("https://stat.ethz.ch/R-manual/R-devel/library/stats/html/Cauchy.html\n")
        sometext1 <- c("Characteristic value 1 corresponds to location")
        sometext2 <- c("Characteristic value 2 corresponds to scale")
        sometext3 <- c("Characteristic value 3 corresponds to nothing, and does nothing")
      }
      else if(input$Distribution == "dchisq")
      {
        webpage <- c("https://stat.ethz.ch/R-manual/R-devel/library/stats/html/Chisquare.html\n")
        sometext1 <- c("Characteristic value 1 corresponds to df (degrees of freedom)")
        sometext2 <- c("Characteristic value 2 corresponds to ncp (non-centrality parameter)")
        sometext3 <- c("Characteristic value 3 corresponds to nothing, and does nothing")
      }
      else if(input$Distribution == "dexp")
      {
        webpage <- c("https://stat.ethz.ch/R-manual/R-devel/library/stats/html/Exponential.html\n")
        sometext1 <- c("Characteristic value 1 corresponds to rate")
        sometext2 <- c("Characteristic value 2 corresponds to nothing, and does nothing")
        sometext3 <- c("Characteristic value 3 corresponds to nothing, and does nothing")
      }
      else if(input$Distribution == "df")
      {
        webpage <- c("https://stat.ethz.ch/R-manual/R-devel/library/stats/html/Fdist.html\n")
        sometext1 <- c("Characteristic value 1 corresponds to df1 (degrees of freedom 1)")
        sometext2 <- c("Characteristic value 2 corresponds to df2 (degrees of freedom 2)")
        sometext3 <- c("Characteristic value 3 corresponds to ncp (non-centrality parameter)")
      }
      else if(input$Distribution == "dgamma")
      {
        webpage <- c("https://stat.ethz.ch/R-manual/R-devel/library/stats/html/GammaDist.html\n")
        sometext1 <- c("Characteristic value 1 corresponds to shape")
        sometext2 <- c("Characteristic value 2 corresponds to rate")
        sometext3 <- c("Characteristic value 3 corresponds to nothing, and does nothing")
      }
      else if(input$Distribution == "dgeom")
      {
        webpage <- c("https://stat.ethz.ch/R-manual/R-devel/library/stats/html/Geometric.html\n")
        sometext1 <- c("Characteristic value 1 corresponds to prob (probability of success)")
        sometext2 <- c("Characteristic value 2 corresponds to nothing, and does nothing")
        sometext3 <- c("Characteristic value 3 corresponds to nothing, and does nothing")
      }
      else if(input$Distribution == "dhyper")
      {
        webpage <- c("https://stat.ethz.ch/R-manual/R-devel/library/stats/html/Hypergeometric.html\n")
        sometext1 <- c("Characteristic value 1 corresponds to m (number of white balls)")
        sometext2 <- c("Characteristic value 2 corresponds to n (number of black balls)")
        sometext3 <- c("Characteristic value 3 corresponds to k (number of balls withdrawn)")
      }
      else if(input$Distribution == "dlnorm")
      {
        webpage <- c("https://stat.ethz.ch/R-manual/R-devel/library/stats/html/Lognormal.html\n")
        sometext1 <- c("Characteristic value 1 corresponds to meanlog")
        sometext2 <- c("Characteristic value 2 corresponds to sdlog")
        sometext3 <- c("Characteristic value 3 corresponds to nothing, and does nothing")
      }
      else if(input$Distribution == "dnbinom")
      {
        webpage <- c("https://stat.ethz.ch/R-manual/R-devel/library/stats/html/NegBinomial.html\n")
        sometext1 <- c("Characteristic value 1 corresponds to size")
        sometext2 <- c("Characteristic value 2 corresponds to prob")
        sometext3 <- c("Characteristic value 3 corresponds to nothing, and does nothing")
      }
      else if(input$Distribution == "dnorm")
      {
        webpage <- c("https://stat.ethz.ch/R-manual/R-devel/library/stats/html/Normal.html\n")
        sometext1 <- c("Characteristic value 1 corresponds to mean")
        sometext2 <- c("Characteristic value 2 corresponds to sd")
        sometext3 <- c("Characteristic value 3 corresponds to nothing, and does nothing")
      }
      else if(input$Distribution == "dpois")
      {
        webpage <- c("https://stat.ethz.ch/R-manual/R-devel/library/stats/html/Poisson.html\n")
        sometext1 <- c("Characteristic value 1 corresponds to lambda")
        sometext2 <- c("Characteristic value 2 corresponds to nothing, and does nothing")
        sometext3 <- c("Characteristic value 3 corresponds to nothing, and does nothing")
      }
      else if(input$Distribution == "dt")
      {
        webpage <- c("https://stat.ethz.ch/R-manual/R-devel/library/stats/html/TDist.html\n")
        sometext1 <- c("Characteristic value 1 corresponds to df (degrees of freedom)")
        sometext2 <- c("Characteristic value 2 corresponds to ncp (non-centrality parameter)")
        sometext3 <- c("Characteristic value 3 corresponds to nothing, and does nothing")
      }
      else if(input$Distribution == "dunif")
      {
        webpage <- c("https://stat.ethz.ch/R-manual/R-devel/library/stats/html/Uniform.html\n")
        sometext1 <- c("Characteristic value 1 corresponds to min")
        sometext2 <- c("Characteristic value 2 corresponds to max")
        sometext3 <- c("Characteristic value 3 corresponds to nothing, and does nothing")
      }
      else if(input$Distribution == "dweibull")
      {
        webpage <- c("https://stat.ethz.ch/R-manual/R-devel/library/stats/html/Weibull.html\n")
        sometext1 <- c("Characteristic value 1 corresponds to shape")
        sometext2 <- c("Characteristic value 2 corresponds to scale")
        sometext3 <- c("Characteristic value 3 corresponds to nothing, and does nothing")
      }
      final <- paste("For details see:", webpage,sometext1,sometext2,sometext3, sep="\n")
    })
    
    output$help <- renderText({  
      helptext()[1]
    })
    
    output$pdfplot <- renderPlot({
      if(input$Distribution == "dbeta")
      {
        x <- seq(0, 1, length=100)
        density <- dbeta(x,input$Cval1, input$Cval2)
        cumulative <- pbeta(x,input$Cval1, input$Cval2)
        plot(x, density, type="l",xlab="Quantile", ylab="PDF")
      }
      else if(input$Distribution == "dbinom")
      {
        x <- seq(0, input$Cval1, by=1)
        density <- dbinom(x,input$Cval1, input$Cval2)
        cumulative <- pbinom(x,input$Cval1, input$Cval2)
        plot(x, density,xlab="Size", ylab="PDF")
      }
      else if(input$Distribution == "dcauchy")
      {
        x <- seq(qcauchy(0.01,input$Cval1,input$Cval2), qcauchy(0.99,input$Cval1,input$Cval2), length=1000)
        density <- dcauchy(x,input$Cval1, input$Cval2)
        cumulative <- pcauchy(x,input$Cval1, input$Cval2)
        plot(x, density, type="l",xlab="Quantile", ylab="PDF")
      }
      else if(input$Distribution == "dchisq")
      {
        x <- seq(qchisq(0.01,input$Cval1,input$Cval2), qchisq(0.99,input$Cval1,input$Cval2), length=1000)
        density <- dchisq(x,input$Cval1, input$Cval2)
        cumulative <- pchisq(x,input$Cval1, input$Cval2)
        plot(x, density, type="l",xlab="Quantile", ylab="PDF")
      }
      else if(input$Distribution == "dexp")
      {
        x <- seq(qexp(0.01,input$Cval1), qexp(0.99,input$Cval1), length=1000)
        density <- dexp(x,input$Cval1)
        cumulative <- pexp(x,input$Cval1)
        plot(x, density, type="l",xlab="Quantile", ylab="PDF")
      }
      else if(input$Distribution == "df")
      {
        x <- seq(qf(0.01,input$Cval1,input$Cval2,input$Cval3 ), qf(0.99,input$Cval1,input$Cval2,input$Cval3), length=1000)
        density <- df(x,input$Cval1,input$Cval2,input$Cval3)
        cumulative <- pf(x,input$Cval1,input$Cval2,input$Cval3)
        plot(x, density, type="l",xlab="Quantile", ylab="PDF")
      }
      else if(input$Distribution == "dgamma")
      {
        x <- seq(qgamma(0.01,input$Cval1,input$Cval2), qgamma(0.99,input$Cval1,input$Cval2), length=1000)
        density <- dgamma(x,input$Cval1,input$Cval2)
        cumulative <- pgamma(x,input$Cval1,input$Cval2)
        plot(x, density, type="l",xlab="Quantile", ylab="PDF")
      }
      else if(input$Distribution == "dgeom")
      {
        x <- seq(0, 10, by=1)
        density <- dgeom(x,input$Cval1)
        cumulative <- pgeom(x,input$Cval1)
        plot(x, density,xlab="Quantile", ylab="PDF")
      }
      else if(input$Distribution == "dhyper")
      {
        x <- seq(0, input$Cval1, by=1)
        density <- dhyper(x,input$Cval1,input$Cval2,input$Cval3)
        cumulative <- phyper(x,input$Cval1,input$Cval2,input$Cval3)
        plot(x, density, xlab="Quantile (White Balls)", ylab="PDF")
      }
      else if(input$Distribution == "dlnorm")
      {
        x <- seq(qlnorm(0.01,input$Cval1,input$Cval2), qlnorm(0.99,input$Cval1,input$Cval2), length=1000)
        density <- dlnorm(x,input$Cval1,input$Cval2)
        cumulative <- plnorm(x,input$Cval1,input$Cval2)
        plot(x, density, type="l",xlab="Quantile", ylab="PDF")
      }
      else if(input$Distribution == "dnbinom")
      {
        x <- seq(0,input$Cval1, by=1)
        density <- dnbinom(x,input$Cval1,input$Cval2)
        cumulative <- pnbinom(x,input$Cval1,input$Cval2)
        plot(x, density,xlab="Quantile", ylab="PDF")
      }
      else if(input$Distribution == "dnorm")
      {
        x <- seq(qnorm(0.01,input$Cval1,input$Cval2), qnorm(0.99,input$Cval1,input$Cval2), length=1000)
        density <- dnorm(x,input$Cval1,input$Cval2)
        cumulative <- pnorm(x,input$Cval1,input$Cval2)
        plot(x, density, type="l",xlab="Quantile", ylab="PDF")
      }
      else if(input$Distribution == "dpois")
      {
        x <- seq(0, qpois(0.99,input$Cval1), by=1)
        density <- dpois(x,input$Cval1)
        cumulative <- ppois(x,input$Cval1)
        plot(x, density,xlab="Quantile", ylab="PDF")
      }
      else if(input$Distribution == "dt")
      {
        x <- seq(qt(0.01,input$Cval1,input$Cval2), qt(0.99,input$Cval1,input$Cval2), length=1000)
        density <- dt(x,input$Cval1, input$Cval2)
        cumulative <- pt(x,input$Cval1, input$Cval2)
        plot(x, density, type="l",xlab="Quantile", ylab="PDF")
      }
      else if(input$Distribution == "dunif")
      {
        x <- seq(qunif(0.01,input$Cval1,input$Cval2), qunif(0.99,input$Cval1,input$Cval2), length=10)
        density <- dunif(x,input$Cval1, input$Cval2)
        cumulative <- punif(x,input$Cval1, input$Cval2)
        plot(x, density, type="l",xlab="Quantile", ylab="PDF")
      }
      else if(input$Distribution == "dweibull")
      {
        x <- seq(qweibull(0.01,input$Cval1,input$Cval2), qweibull(0.99,input$Cval1,input$Cval2), length=1000)
        density <- dweibull(x,input$Cval1, input$Cval2)
        cumulative <- pweibull(x,input$Cval1, input$Cval2)
        plot(x, density, type="l",xlab="Quantile", ylab="PDF")
      }
    })
    
    output$cdfplot <- renderPlot({
      if(input$Distribution == "dbeta")
      {
        x <- seq(0, 1, length=100)
        density <- dbeta(x,input$Cval1, input$Cval2)
        cumulative <- pbeta(x,input$Cval1, input$Cval2)
        plot(x, cumulative, type="l",xlab="Quantile", ylab="CDF")
      }
      else if(input$Distribution == "dbinom")
      {
        x <- seq(0, input$Cval1, by=1)
        density <- dbinom(x,input$Cval1, input$Cval2)
        cumulative <- pbinom(x,input$Cval1, input$Cval2)
        plot(x, cumulative,xlab="Size", ylab="CDF")
      }
      else if(input$Distribution == "dcauchy")
      {
        x <- seq(qcauchy(0.01,input$Cval1,input$Cval2), qcauchy(0.99,input$Cval1,input$Cval2), length=1000)
        density <- dcauchy(x,input$Cval1, input$Cval2)
        cumulative <- pcauchy(x,input$Cval1, input$Cval2)
        plot(x, cumulative, type="l",xlab="Quantile", ylab="CDF")
      }
      else if(input$Distribution == "dchisq")
      {
        x <- seq(qchisq(0.01,input$Cval1,input$Cval2), qchisq(0.99,input$Cval1,input$Cval2), length=1000)
        density <- dchisq(x,input$Cval1, input$Cval2)
        cumulative <- pchisq(x,input$Cval1, input$Cval2)
        plot(x, cumulative, type="l",xlab="Quantile", ylab="CDF")
      }
      else if(input$Distribution == "dexp")
      {
        x <- seq(qexp(0.01,input$Cval1), qexp(0.99,input$Cval1), length=1000)
        density <- dexp(x,input$Cval1)
        cumulative <- pexp(x,input$Cval1)
        plot(x, cumulative, type="l",xlab="Quantile", ylab="CDF")
      }
      else if(input$Distribution == "df")
      {
        x <- seq(qf(0.01,input$Cval1,input$Cval2,input$Cval3 ), qf(0.99,input$Cval1,input$Cval2,input$Cval3), length=1000)
        density <- df(x,input$Cval1,input$Cval2,input$Cval3)
        cumulative <- pf(x,input$Cval1,input$Cval2,input$Cval3)
        plot(x, cumulative, type="l",xlab="Quantile", ylab="CDF")
      }
      else if(input$Distribution == "dgamma")
      {
        x <- seq(qgamma(0.01,input$Cval1,input$Cval2), qgamma(0.99,input$Cval1,input$Cval2), length=1000)
        density <- dgamma(x,input$Cval1,input$Cval2)
        cumulative <- pgamma(x,input$Cval1,input$Cval2)
        plot(x, cumulative, type="l",xlab="Quantile", ylab="CDF")
      }
      else if(input$Distribution == "dgeom")
      {
        x <- seq(0, 10, by=1)
        density <- dgeom(x,input$Cval1)
        cumulative <- pgeom(x,input$Cval1)
        plot(x, cumulative,xlab="Quantile", ylab="CDF")
      }
      else if(input$Distribution == "dhyper")
      {
        x <- seq(0, input$Cval1, by=1)
        density <- dhyper(x,input$Cval1,input$Cval2,input$Cval3)
        cumulative <- phyper(x,input$Cval1,input$Cval2,input$Cval3)
        plot(x, cumulative,xlab="Quantile (White Balls)", ylab="CDF")
      }
      else if(input$Distribution == "dlnorm")
      {
        x <- seq(qlnorm(0.01,input$Cval1,input$Cval2), qlnorm(0.99,input$Cval1,input$Cval2), length=1000)
        density <- dlnorm(x,input$Cval1,input$Cval2)
        cumulative <- plnorm(x,input$Cval1,input$Cval2)
        plot(x, cumulative, type="l",xlab="Quantile", ylab="CDF")
      }
      else if(input$Distribution == "dnbinom")
      {
        x <- seq(0,input$Cval1, by=1)
        density <- dnbinom(x,input$Cval1,input$Cval2)
        cumulative <- pnbinom(x,input$Cval1,input$Cval2)
        plot(x, cumulative,xlab="Quantile", ylab="CDF")
      }
      else if(input$Distribution == "dnorm")
      {
        x <- seq(qnorm(0.01,input$Cval1,input$Cval2), qnorm(0.99,input$Cval1,input$Cval2), length=1000)
        density <- dnorm(x,input$Cval1,input$Cval2)
        cumulative <- pnorm(x,input$Cval1,input$Cval2)
        plot(x, cumulative, type="l",xlab="Quantile", ylab="CDF")
      }
      else if(input$Distribution == "dpois")
      {
        x <- seq(0, qpois(0.99,input$Cval1), by=1)
        density <- dpois(x,input$Cval1)
        cumulative <- ppois(x,input$Cval1)
        plot(x, cumulative, xlab="Quantile", ylab="CDF")
      }
      else if(input$Distribution == "dt")
      {
        x <- seq(qt(0.01,input$Cval1,input$Cval2), qt(0.99,input$Cval1,input$Cval2), length=1000)
        density <- dt(x,input$Cval1, input$Cval2)
        cumulative <- pt(x,input$Cval1, input$Cval2)
        plot(x, cumulative, type="l",xlab="Quantile", ylab="CDF")
      }
      else if(input$Distribution == "dunif")
      {
        x <- seq(qunif(0.01,input$Cval1,input$Cval2), qunif(0.99,input$Cval1,input$Cval2), length=1000)
        density <- dunif(x,input$Cval1, input$Cval2)
        cumulative <- punif(x,input$Cval1, input$Cval2)
        plot(x, cumulative, type="l",xlab="Quantile", ylab="CDF")
      }
      else if(input$Distribution == "dweibull")
      {
        x <- seq(qweibull(0.01,input$Cval1,input$Cval2), qweibull(0.99,input$Cval1,input$Cval2), length=1000)
        density <- dweibull(x,input$Cval1, input$Cval2)
        cumulative <- pweibull(x,input$Cval1, input$Cval2)
        plot(x, cumulative, type="l",xlab="Quantile", ylab="CDF")
      }
    })
    
    
})
