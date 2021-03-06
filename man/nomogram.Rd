% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nomogram.R
\name{nomogram}
\alias{nomogram}
\title{Fagan's nomogram to show the relationships between the prior probability, the
likelihood ratios, sensitivity and specificity, and the posterior
probability.}
\usage{
nomogram(
  prob.pre.test = 0.5,
  probs.post.test = c(pos = NULL, neg = NULL),
  SeSp = c(Se = NULL, Sp = NULL),
  LR = c(PLR = NULL, NLR = NULL),
  plot = T
)
}
\arguments{
\item{prob.pre.test}{The prior test probability, with a default value of .5.
Often, (local) prevalence is used.}

\item{probs.post.test}{A vector of two values that give the desired posttest
probabilities of observing the event in the case of a positive test result
(positive posttest probability: pos), and the posttest probability of
observing the event in the case of a negative test result (negative
posttest probability: neg). When not given, these probabilities are
calculated using the likelihood ratios (LR).}

\item{SeSp}{A vector of two values that give the desired sensitivity and
specificity. When not given, the Se and Sp values are calculated from the
desired posttest probabilities.}

\item{LR}{A vector of two values that give the positive likelihood ratio
(sensitivity / (1- specificity)): PLR of observing the event, and the
negative likelihood ratio ((1 - sensitivity) / specificity): NLR of not
observing the event. PLR is a value > 1, NLR is a value between 0 and 1.
When not given, the LR values are calculated from the desired posttest
probabilities.}

\item{plot}{A Boolean that indicates whether a plot is desired.}
}
\value{
Vector of values: \describe{ \item{$pre: }{The given pre-test
probability.} \item{$min.LRpos: }{The given or calculated minimally
required positive likelihood ratio. If no value is provided, it is
calculated.} \item{$max.LRneg: }{The given or calculated maximally required
negative likelihood ratio. If no value is provided, it is calculated.}
\item{$post.pos: }{The given or calculated positive posttest probability.}
\item{$minSp: }{The minimum value for the specificity, needed to reach the
desired posttest probabilities.} \item{$minSe: }{The minimum value for the
sensitivity, needed to reach the desired posttest probabilities.} }
}
\description{
Next to plotting Fagan's nomogram, this function also calculates the
minimally needed values for specificity and sensitivity to reach desired
posttest probabilities (or likelihood ratios) for a grey zone (Coste et al.,
2003, 2006).
}
\details{
Parameter probs.post.test or SeSp or LR must be supplied, the other
two values are calculated. When more than one parameter is given the other
two are ignored. The basis of this function is adapted from package
TeachingDemos.
}
\examples{
# Show calculated results (first 3 times about the same)
(nomogram(prob.pre.test = .10, probs.post.test=c(pos=.70, neg=.001), plot=FALSE))
(nomogram(prob.pre.test = .10, SeSp=c(Se=0.991416309, Sp=0.952789700), plot=FALSE))
(nomogram(prob.pre.test = .10, LR=c(pos=21, neg=0.0090090091), plot=FALSE))
(nomogram(prob.pre.test = .10, SeSp=c(Se=0.99, Sp=0.95), plot=FALSE))
# plot only
nomogram(prob.pre.test = .10, LR=c(pos=21, neg=0.0090090091))
# plot and display precise results
(nomogram(prob.pre.test = .10, probs.post.test=c(pos=.70, neg=.001)))

# check the influence of different values of prevalence
i=1
out=matrix(0,nrow = 9, ncol= 7)
for (prev in (seq(.1, .9, by=.1))) {
  out[i,]=nomogram(prob.pre.test=prev, probs.post.test=c(.95, .05), plot=FALSE)
  i=i+1
}
colnames(out) = names(nomogram(prob.pre.test=prev, probs.post.test=c(.95, .05), plot=FALSE))
out

}
\references{
{ Fagan, T. J. (1975). Nomogram for Bayes theorem. The New
England Journal of Medicine, 293(5), 257-257.

Coste, J., Jourdain, P., & Pouchot, J. (2006). A gray zone assigned to
inconclusive results of quantitative diagnostic tests: application to the
use of brain natriuretic peptide for diagnosis of heart failure in acute
dyspneic patients. Clinical Chemistry, 52(12), 2229-2235.

Coste, J., & Pouchot, J. (2003). A grey zone for quantitative diagnostic
and screening tests. International Journal of Epidemiology, 32(2),
304-313. }
}
