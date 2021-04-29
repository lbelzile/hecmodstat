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
#' @docType data
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
#' @docType data
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
#' @docType data
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
#' @docType data
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
#' @docType data
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
#' @docType data
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
#' @docType data
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

#' Discrimination salariale dans un collège
#'
#' Une étude a été effectuée dans un collège américain pour explorer
#' la distribution des salaires et vérifier s'il existe des
#' inégalités salariales entre hommes et femmes.
#'
#' @docType data
#' @format Une base de données de 397 observations contenant les variables suivantes
#' \describe{
#' \item{\code{annees}}{nombre d'années depuis l'obtention du doctorat.}
#' \item{\code{service}}{nombre d'années de service.}
#' \item{\code{salaire}}{salaire de professeurs pendant l'année académique 2008--2009 (en milliers de dollars USD).}
#' \item{\code{echelon}}{échelon académique, soit adjoint (\code{adjoint}), aggrégé (\code{aggrege}) ou titulaire (\code{titulaire}).}
#' \item{\code{domaine}}{variable catégorielle indiquant le champ d'expertise du professeur, soit appliqué (\code{applique}) ou théorique (\code{theoretique}).}
#' \item{\code{sexe}}{indicateur binaire pour le sexe, \code{homme} ou \code{femme}.}
#' }
#'
#' @source Fox J. and Weisberg, S. (2019) \emph{An R Companion to Applied Regression}, Third Edition, Sage.
#' @seealso \link[carData]{Salaries}
"college"


#' Emprunt de Bixis
#'
#' Ce jeu de données recense le nombre d'utilisateurs du système de location de
#' vélos libre-service Bixi à la station Édouard-Montpetit en fonction
#' du jour de l'année et de la météo (la température et le taux d'humidité relative)
#'
#' @docType data
#' @format une base de donnée de 500 observations quotidiennes
#' \describe{
#' \item{\code{nutilisateurs}}{nombre de locations quotidiennes}
#' \item{\code{date}}{date }
#' \item{\code{temp}}{température à l'aéroport (en degrés Celcius)}
#' \item{\code{humid}}{pourcentage d'humidité relative}
#' \item{\code{jour}}{jour de la semaine, allant de dimanche (\code{1}) à samedi (\code{7})}
#' \item{\code{fds}}{indicateur binaire pour la fin de semaine (\code{0}), valant \code{1} en semaine}
#' }
#'
#' @author Léo Belzile
#' @source Bixi, Environnement Canada (aéroport de Dorval)
"bixi"


#' Illustration de la colinéarité à l'aide des locations de Bixi
#'
#' Ce jeu de données recense le nombre de locations quotidiennes de Bixi entre 2014 et 2019
#' en fonction de la température
#' de l'aéroport voisin de Dorval, enregistrée à 16h. Il sert à démontrer l'impact de la colinéarité.
#'
#' @format une base de données de 1184 observations contenant les variables suivantes
#' \describe{
#' \item{\code{lognutilisateur}}{log du nombre total de locations quotidienne}
#' \item{\code{celcius}}{température moyenne à l'aéroport (en degrés Celcius)}
#' \item{\code{farenheit}}{température moyenne à l'aéroport (en degrés Farenheit)}
#' \item{\code{rfarenheit}}{température moyenne à l'aéroport (in Farenheit), arrondie au degré près}
#' }
#' @docType data
#' @author Léo Belzile
#' @source Bixi, Environnement Canada
"bixicol"

#' Intention d'achat pour une publicité de bonbons
#'
#' Ces données simulées reproduisent une étude réalisée au Tech3Lab, dans le cadre de laquelle des cobayes devaient naviguer sur un site internet qui contenait, entre autres choses, une publicité pour des bonbons.
#' Pendant la navigation, un oculomètre mesurait l'endroit où se posait le regard du sujet.
#' On a ainsi pu mesurer si le sujet a regardé la publicité et combien de temps il l’a regardé.
#' De plus, un logiciel d’analyse des expressions faciales (FaceReader) a également été utilisé pour mesurer l’émotion du sujet pendant qu’il regardait la publicité.
#' À la fin de l’expérience, un questionnaire mesurait l’intention d’achat du sujet pour ces bonbons, ainsi que des variables socio-démographiques.
#' Seuls les 120 sujets qui ont regardé la publicité sont inclus dans les données.
#'
#' @source Marc Fredette
#'
#' @format une base de donnée de 120 observations contenant les variables suivantes
#' \describe{
#' \item{\code{intention}}{ variable discrète entre \code{2} et \code{14}; plus elle est élevée, plus le sujet exprime l’intention d’acheter ce produit.  Le score a été construit en additionnant les réponses de deux questions sur une échelle de Likert allant de fortement en désaccord (\code{1}) à fortement en accord (\code{7})}
#' \item{\code{fixation}}{durée totale de fixation de la publicité (en secondes).}
#' \item{\code{emotion}}{une mesure de la valence durant la fixation, soit le ratio de la probabilité d’une émotion positive sur la probabilité d’une émotion négative}
#' \item{\code{sexe}}{sexe du sujet, soit homme (\code{0}) ou femme (\code{1}).}
#' \item{\code{age}}{âge (en années).}
#' \item{\code{revenu}}{variable catégorique indiquant le revenu annuel du sujet; un parmi (\code{1}) [0, 20 000]; (\code{2}) [20 000, 60 000] ou (\code{3}) 60 000 et plus.}
#' \item{\code{educ}}{variable catégorique indiquant le niveau d’éducation le plus élevé obtenu, soit (\code{1}) secondaire ou moindre; (\code{2}) collégial, ou (\code{3}) universitaire.}
#' \item{\code{statut}}{statut matrimonial, soit célibaire (\code{0}) ou en couple (\code{1}).}
#' \item{\code{achat}}{variable binaire indiquant si la personne a acheté des bonbons suite au visionnement, oui (\code{1}) ou non (\code{0}).}
#' \item{\code{nachat}}{nombre de paquets de bonbons achetés}
#' }
"intention"


#' Production électrique d'éoliennes
#'
#' Mesures de production électrique d'une éolienne sur 25 plages distinctes de 15 minutes. 25 separate fifteen minute periods. We are interested in the relation between direct output
#' L'intérêt principal des données est la relation entre la production électrique et la vitesse moyenne des vents.
#'
#' @docType data
#' @format une base de données de 25 observations des variables suivantes
#' \describe{
#' \item{\code{vitesse}}{vélocité des vents (en miles à l'heure)}
#' \item{\code{production}}{production électrique (en volts CC)}
#' }
#' @seealso \link[BSDA]{Windmill}
#' @source Joglekar et al. (1989), Lack of Fit Testing when Replicates Are Not Available, \emph{The American Statistician}, 43,(\bold{3}), 135-143.
#' @references Kitchens, L. J. (2003) \emph{Basic Statistics and Data Analysis}. Pacific Grove, CA: Brooks/Cole, a division of Thomson Learning.
"eolienne"

#' Traffic aérien international
#'
#' Nombre mensuel total de passagers aériens internationaux entre 1949 et 1960.
#'
#' @docType data
#' @source Box, G. E. P., Jenkins, G. M. and Reinsel, G. C. (1976) \emph{Time Series Analysis, Forecasting and Control}. Third Edition. Holden-Day. Series G.
#' @seealso \link[datasets]{AirPassengers}
#' @format une base de données de 144 observations contenant les variables suivantes
#' \describe{
#' \item{\code{passagers}}{nombre de passagers aériens internationaux (en milliers).}
#' \item{\code{mois}}{entier indiquant le mois, de janvier (\code{1}) à décembre (\code{12}).}
#' \item{\code{annee}}{année}
#' }
"trafficaerien"

#' Caractéristiques d'automobiles
#'
#' Consommation d'essence, puissance, cylindrée et autres caractéristiques d'automobiles. Ces données ont servi à la foir de la Société américaine de statistique (ASA) en 1983.
#' @source Ernesto Ramos et David Donoho; les données sont extraites de StatLib hébergie par l'Université Carnegie.
#'
#' @references James, G., Witten, D., Hastie, T., and Tibshirani, R. (2013) \emph{An Introduction to Statistical Learning with applications in R}, Springer-Verlag, New York
#' @docType data
#' @format une base de données de 392 observations contenant les variables suivantes
#' \describe{
#' \item{\code{autonomie}}{autonomie d'essence (en miles par gallons américains)}
#' \item{\code{cylindre}}{facteur, nombre de cylindres}
#' \item{\code{cylindree}}{cylindrée, le  volume balayé par les cylindres du moteur (en pouces cubiques)}
#' \item{\code{puissance}}{puissance du moteur (en chevaux-vapeurs)}
#' \item{\code{masse}}{masse de la voiture (en livres)}
#' \item{\code{acceleration}}{nombre de secondes pour que la voiture accélère de 0 à 60 miles à l'heure}
#' }
"automobile"
