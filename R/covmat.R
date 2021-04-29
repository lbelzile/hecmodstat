
#' Matrice de covariance du vecteur réponse
#'
#' @param model un modèle linéaire mixte, ou objet de classe \code{lmerMod}
#' @source https://stackoverflow.com/questions/45650548/get-residual-variance-covariance-matrix-in-lme4/45655597#45655597
#' @export
#' @author Ben Bolker
rescov <- function(model){
  stopifnot(inherits(model, "lmerMod"))
  var.d <- Matrix::crossprod(lme4::getME(model, "Lambdat"))
  Zt <- lme4::getME(model,"Zt")
  vr <- sigma(model)^2
  var.b <- vr*(Matrix::t(Zt) %*% var.d %*% Zt)
  sI <- vr * Matrix::Diagonal(nrow(model@frame))
  var.y <- var.b + sI
  invisible(structure(list(var_y = var.y,
                           var_raneff = var.b,
                           var_error = sI),
                      class = "lme_rescov"))
}

#' Graphique de la matrice de covariance des Y
#'
#' @inheritParams rescov
#' @param model objet de classe \code{hec_rescov}
#' @param ... paramètres additionnels, actuellement ignorés
#' @export
#' @param corr logique; si \code{TRUE}, le graphique représente la matrice de corrélation
plot.lme_rescov <- function(x, corr = FALSE, ...){
  if(corr){
    image(cov2cor(x$var_y), sub = "", xlab = "", ylab = "")
  } else{
    image(x$var_y, sub = "", xlab = "", ylab = "")
  }
}
