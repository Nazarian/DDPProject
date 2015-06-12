library(shiny)

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Statistical distributions"),
  
  # Choose distribution and input the characteristic parameters
  sidebarPanel(
    selectInput("Distribution", "Distribution:",
                c("Beta distribution" = "dbeta",
                  "Binomial distribution" = "dbinom",
                  "Cauchy distribution" = "dcauchy", 
                  "Chi-squared distribution" = "dchisq",
                  "Exponential distribution" = "dexp", 
                  "F distribution" = "df", 
                  "Gamma distribution" = "dgamma", 
                  "Geometric distribution" = "dgeom", 
                  "Hypergeometric distribution" = "dhyper",
                  "Log-normal distribution" = "dlnorm", 
                  "Negative binomial distribution" = "dnbinom", 
                  "Normal distribution" = "dnorm", 
                  "Poisson distribution" = "dpois", 
                  "Student's t distribution" = "dt", 
                  "Uniform distribution" = "dunif", 
                  "Weibull distribution" = "dweibull")),
    h4('Characteristic parameters'),
    h6('(see help tab for more information on how to fill them)'),
    numericInput('Cval1', "Characteristic value 1", 1),
    numericInput('Cval2', "Characteristic value 2", 1),
    numericInput('Cval3', "Characteristic value 3", 1)
  ),
  
  # Show a plot of the distribution
  mainPanel(
    tabsetPanel(
      tabPanel("PDF plot", plotOutput("pdfplot")), 
      tabPanel("CDF plot", plotOutput("cdfplot")), 
      tabPanel("Help", verbatimTextOutput("help"))
    )
  )
))
