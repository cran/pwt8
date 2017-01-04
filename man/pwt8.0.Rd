\name{pwt8.0}
\alias{pwt8.0}
\title{Penn World Table 8.0}

\description{
  Relative levels of income, output, inputs, productivity for
  167 countries between 1950 and 2011 (base year: 2005).
}

\usage{data("pwt8.0")}

\format{A data frame with 10,354 observations of 39 variables.
  \describe{
    \item{country}{factor with country name.}
    \item{isocode}{factor with ISO 3166-1 alpha-3 country code.}
    \item{year}{year.}
    \item{currency}{factor with national currency unit.}
    \item{rgdpe}{Expenditure-side real GDP at chained PPPs
      (in million 2005 USD).}
    \item{rgdpo}{Output-side real GDP at chained PPPs (in million 2005 USD).}
    \item{pop}{Population (in millions).}
    \item{emp}{Number of persons engaged (in millions).}
    \item{avh}{Average annual hours worked by persons engaged.}
    \item{hc}{Index of human capital per person, based on years of schooling
      (Barro and Lee 2013) and returns to education (Psacharopoulos 1994).}
    \item{cgdpe}{Expenditure-side real GDP at current PPPs
      (in million 2005 USD).}
    \item{cgdpo}{Output-side GDP at current PPPs (in million 2005 USD).}
    \item{ck}{Capital stock at current PPPs (in million 2005 USD).}
    \item{ctfp}{TFP level at current PPPs (USA = 1).}
    \item{rgdpna}{Real GDP at constant 2005 national prices
      (in million 2005 USD).}
    \item{rkna}{Capital stock at constant 2005 national prices
      (in million 2005 USD).}
    \item{rtfpna}{TFP at constant national prices (2005 = 1).}
    \item{labsh}{Share of labour compensation in GDP at current
      national prices.}
    \item{xr}{Exchange rate, national currency/USD (market and estimated).}
    \item{pl_gdpe}{Price level of CGDPe (PPP/XR,
      price level of USA GDPo in 2005 = 1).}
    \item{pl_gdpo}{Price level of CGDPo (PPP/XR,
      price level of USA GDPo in 2005 = 1).}
    \item{i_cig}{Factor indicating whether relative price data for consumption,
      investment, and government is extrapolated, benchmark, or interpolated.}
    \item{i_xm}{Factor indicating whether relative price data for exports and
      imports is extrapolated, benchmark, or interpolated.}
    \item{i_xr}{Factor indicating whether the exchange rate is
      market-based or estimated.}
    \item{i_outlier}{Factor indicating whether the observation on \code{pl_gdpe}
      or \code{pl_gdpo} is an outlier or not.}
    \item{cor_exp}{Correlation between expenditure shares of the country
      and the US (benchmark observations only).}
    \item{statcap}{Statistical capacity indicator
      (source: World Bank, developing countries only).}
    \item{csh_c}{Share of household consumption at current PPPs.}
    \item{csh_i}{Share of gross capital formation at current PPPs.}
    \item{csh_g}{Share of government consumption at current PPPs.}
    \item{csh_x}{Share of merchandise exports at current PPPs.}
    \item{csh_m}{Share of merchandise imports at current PPPs.}
    \item{csh_r}{Share of residual trade and GDP statistical discrepancy
      at current PPPs.}
    \item{pl_c}{Price level of household consumption (price level of
      USA GDPo in 2005 = 1).}
    \item{pl_i}{Price level of capital formation (price level of
      USA GDPo in 2005 = 1).}
    \item{pl_g}{Price level of government consumption (price level of
      USA GDPo in 2005 = 1).}
    \item{pl_x}{Price level of exports (price level of USA GDPo in 2005 = 1.}
    \item{pl_m}{Price level of imports (price level of USA GDPo in 2005 = 1.}
    \item{pl_k}{Price level of the capital stock
      (price level of USA in 2005 = 1.}
  }
}

\details{
  The Penn World Table (version 8.0) is a database with information on
  relative levels of income, output, inputs, productivity for 167 countries
  between 1950 and 2011. For more details see the official documentation
  provided at \url{http://www.ggdc.net/pwt/}.

  Version 8.0 has been constructed by Feenstra, Inklaar, and Timmer (2013, 2015).
  Compared to earlier versions (see Heston et al. 2012, and also R package
  \pkg{pwt}), the construction of the data has changed somewhat and also some
  variables have been renamed, added, or dropped. The PWT 8.0 website provides
  many additional materials including documentation and scripts for constructing
  customized variables.
  
  The data set \code{pwt8.0} provided here largely preserves the properties
  of the original data. All character or indicator variables are stored
  as factors, though. Also, the variables \code{isocode} (rather than
  \code{countrycode}) and \code{currency} (rather than \code{currency_unit})
  are used as in package \pkg{pwt}. Following Feenstra et al., the ISO
  country code (\code{isocode}) now strictly follows ISO 3166-1 alpha-3, i.e.,
  COD (rather than ZAR) is used for the Democratic Republic of Congo,
  DEU (rather than GER) for Germany and ROU (rather than ROM) for Romania.

  Feenstra et al provide a detailed list of overlapping variables in version
  7.1 and 8.0. Here, only the variable names are list:
  \tabular{ll}{
  Version 8.0 \tab   Version 7.1\cr
  \code{cgdpe} \tab   \code{tcgdp}\cr
  \code{xr} \tab      \code{xrat}\cr
  \code{pl_gdpe} \tab \code{p}\cr
  \code{csh_c} \tab   \code{cc}\cr
  \code{csh_i} \tab   \code{ci}\cr
  \code{csh_g} \tab   \code{cg}\cr
  \code{pl_c} \tab    \code{pc}\cr
  \code{pl_i} \tab    \code{pi}\cr
  \code{pl_g} \tab    \code{pg}\cr
  }

  Similarly, the following variables from version 7.1 can be constructed
  (approximately) from 8.0 data:
  \tabular{ll}{
  Version 7.1 \tab     Link to Version 8.0?\cr
  \code{ppp} \tab      Compute as \code{pl_gdpe * xr}\cr
  \code{cgdp} \tab     Compute as \code{cgdpe/pop}\cr
  \code{y} \tab        Divide \code{cgdpe} by \code{pop} and divide by USA values\cr
  \code{rgdpch} \tab   Closest comparison: \code{rgdpe/pop}\cr
  \code{rgdpwok} \tab  Closest comparison: \code{rgdpe/emp}\cr
  \code{rgdpl2th} \tab Closest comparison: \code{rgdpe/(avh * emp)}\cr
  }
}

\source{
  Penn World Table 8.0,
  \url{http://dx.doi.org/10.15141/S5159X}.
}

\references{
Barro RJ, Lee JW (2013).
  A New Data Set of Educational Attainment in the World, 1950--2010.
  \emph{Journal of Development Economics},  \bold{104}, 184--198.
  URL \url{http://dx.doi.org/10.1016/j.jdeveco.2012.10.001}

Feenstra RC, Inklaar R, Timmer MP (2013).
  PWT 8.0: A User's Guide.
  URL \url{http://www.ggdc.net/pwt/}.

Feenstra RC, Inklaar R, Timmer MP (2015).
  The Next Generation of the Penn World Table,
  \emph{American Economic Review}, forthcoming.
  URL \url{http://www.ggdc.net/pwt/}.

Heston A, Summers R, Aten B (2012).
  Penn World Table Version 7.1, Center for International
  Comparisons of Production, Income and Prices at the University of Pennsylvania.

Psacharopoulous G (1994).
  Returns to Investment in Education: A Global Update.
  \emph{World Development}, 22(9), 1325-1343.
}

\seealso{\code{\link[pwt8]{pwt8.1}}}

\keyword{datasets}
