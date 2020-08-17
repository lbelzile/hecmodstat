#' @import ggplot2 poorman viridis learnr
NULL

#' Prix de billets de train
#'
#' Un sous-ensemble de billets de trains pour le trajet entre Madrid et Barcelone
#' vendus par la Renfe pour trois types de trains, soit Alta Velocidad Española (\code{AVE}),
#' soit Alta Velocidad Española conjointement avec TGV (un partenariat entre la SNCF et Renfe
#' pour les trains à destination ou en provenance de Toulouse) \code{AVE-TGV}, soit les trains régionaux \code{REXPRESS};
#'  seuls les trains étiquetés \code{AVE} ou \code{AVE-TGV} sont des trains à grande vitesse.
#'
#' @format Une base de données de 10000 observations contenant les variables suivantes:
#' \describe{
#'   \item{prix}{prix du billet (en euros)}
#'   \item{dest}{facteur, indicateur binaire du trajet, soit de Barcelone vers Madrid ou de Madrid vers Barcelone}
#'   \item{tarif}{facteur, variable catégorielle indiquant le tarif du billet, un parmi \code{AdultoIda}, \code{Promo} et \code{Flexible}}
#'   \item{classe}{facteur classe du billet, soit  \code{Preferente}, \code{Turista}, \code{TuristaPlus} ou \code{TuristaSolo}}
#'   \item{type}{facteur variable catégorielle indiquant le type de train, \code{AVE-TGV}, \code{AVE} ou \code{REXPRESS}.}
#'   \item{duree}{longueur annoncée du trajet (en minutes)}
#'   \item{jour}{facteur entier indiquant le jour de la semaine du départ allant de dimanche (\code{1}) à samedi (\code{7})}
#' }
#' @source Kaggle \url{https://www.kaggle.com/thegurusteam/spanish-high-speed-rail-system-ticket-pricing}
"renfe"

#' Primes d'assurance santé
#'
#' Le fichier de données simulées \code{assurance} contient de l'information sur les frais médicaux
#' facturés à 1338 adultes américains assurés au courant de l'année 2003.
#'
#' @format Une base de données de 1338 observations avec
#' \describe{
#'   \item{age}{âge (en années)}
#'   \item{sexe}{sexe, \code{homme} ou \code{femme}}
#'   \item{imc}{indice de masse corporelle (en kg/mètres carrés)}
#'   \item{enfant}{nombre d'enfants à charge}
#'   \item{fumeur}{\code{oui} pour les fumeurs, \code{non} autrement.}
#'   \item{region}{lieu de résidence, une région parmi \code{sudouest}, \code{sudest}, \code{nordouest} ou \code{nordest}}
#'   \item{frais}{frais médicaux annuels en 2003 (en dollars USD).}
#' }
#'
#' @source Lantz, Brett (2003), \emph{Machine Learning with R}, Packt Publishing.
"assurance"

#' Accidents de la route aux États-Unis
#'
#' @source \emph{National Highway Traffic Safety Administration} (NHTSA)
#' @format Une base de données de 40 observations en format long contenant les 5 variables suivantes:
#' \describe{
#' \item{annee}{facteur décrivant l'année de référence, 2010 ou 2018}
#' \item{region}{facteur indicant la région géographique telles que définies par la NHTSA}
#' \item{popn}{entier, population totale estimée de la région}
#' \item{nmorts}{entier, nombre de morts}
#' \item{moment}{facteur indiquant quelle période le décompte couvre, soit jour ou nuit}
#' }
#'
"accident"


#' Affiliation politique d'Américain(e)s
#'
#' Données tirées du \emph{General Social Survey} (2000) qui recense
#' le sexe et l'identification politique des sondés selon le parti vers lequel
#' ils s'identifiaient le plus
#'
#' @format Un tableau de contingence deux par trois:
#' \describe{
#' \item{nombre}{décompte}
#' \item{sexe}{sexe, soit \code{homme} ou \code{femme}}
#' \item{parti}{facteur indiquant le parti, un parmi Démocrate (\code{democrate}), indépendant (\code{indep}) et GOP (\code{republicain})}
#' }
#'
#' @source Tableau 2.5 de Agresti (2007), An Introduction to Categorical Data Analysis, Wiley.
"affpol"

#' Examens pratique de conduite
#'
#' Ces données, tirées de GovUK et nettoyées, donnent le taux de succès
#' aux examens pratique de conduite en Grande-Bretagne pour 2018 dans 346 centres de conduite.
#' Un total de 761 750 personnes on réussi l’examen pratique, pour 1 663 897 essais.
#'
#' @format Une base de données contenant les résultats suivants, regroupées par centre:
#' \describe{
#'  \item{reussite}{nombre de personnes ayant réussi l'examen (par sexe)}
#'  \item{total}{nombre total de personne dans le centre (par sexe)}
#'  \item{region}{facteur indiquant une des neuf régions d'Angleterre, le Pays de Galles ou l'Écosse (les données sont agrégées pour ces deux dernières)}
#'  \item{sexe}{facteur, \code{homme} ou \code{femme}}
#'  }
#' @source \url{https://www.gov.uk/government/statistical-data-sets/driving-test-statistics-drt}
"gbconduite"

#' Distraction face à un obstacle
#'
#' Données appariées fictives relative à une étude du Tech3Lab
#' comparant le temps de réaction (en secondes) de participants pour détecter
#' l'apparition d'un bicyclette dans leur champ visuel
#' exposés à deux mises en situations présentées dans un ordre aléatoire: texter
#' ou parler en marchant au cellulaire.
#'
#' @format Une base de données de 35 observations
#' \describe{
#' \item{t}{temps de réaction en textant (en secondes)}
#' \item{c}{temps de réaction lors d'une conversation (en secondes)}
#' }
#' @source Marc Fredette
"distraction"


#' Résultats d'une étude de simulation sur les données Renfe
#'
#' Statistiques de test, valeur-p et différence de moyenne pour 1000
#' échantillons aléatoires de taille 100 tirées de la base de données
#' Renfe.
#'
#' @format Une base de données de 1000 observations
#' \describe{
#' \item{difmoy}{différence de moyenne de prix entre Madrid-Barcelone versus Barcelone-Madrid}
#' \item{statW}{statistique de Welch pour le test de localisation pour deux échantillons}
#' \item{icbi}{borne inférieure de l'intervalle de confiance basé sur la statistique de Welch}
#' \item{icbs}{borne supérieure de l'intervalle de confiance basé sur la statistique de Welch}
#' \item{valp}{valeur-p asymptotique}
#' }
#' @source Léo Belzile
"renfe_simu"
