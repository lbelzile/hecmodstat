## code to prepare `DATASET` dataset goes here

library(dplyr)
library(haven)
library(fs)
library(usethis)
setwd(paste0(dirname(dirname(dirname(dirname(rstudioapi::getActiveDocumentContext()$path)))),"/Données/SAS/Français/"))
lfile <- list.files(pattern = ".sas7bdat")
external_env <- new.env()
for(file in lfile){
  filen <- sub('\\.sas7bdat$', '', file)
  data <- haven::read_sas(file)
  class(data) <- "data.frame"
  for(col in colnames(data)){
    attr(data[,deparse(as.name(col))],"format.sas") <- NULL
  }
  attr(data,"label") <- NULL
  data <- tibble::as_tibble(data)
  data <- data %>% mutate(across(where(is.character), factor))
  if(filen == "accident"){
    data  <-  data  %>%
      mutate(annee = factor(annee),
        region = factor(region))
  } else if(filen == "renfe"){
    data <- data %>%
      mutate(dest = factor(recode(dest, "0" = "Barcelone-Madrid",
                                  "1" = "Madrid-Barcelone")),
             jour = factor(jour))
  } else if(filen == "automobile"){
    data$nom <- NULL
    data$autonomie <- data$consommation
    data$consommation <- NULL
    data <- data %>%
      mutate(cylindre = factor(cylindre))
  } else if(filen == "billets"){
    data <- data %>%
      mutate(groupe = factor(groupe))
  } else if(filen == "bixi"){
    data <- data %>%
    mutate(date = lubridate::ymd(as.character(date)))
  } else if(filen == "casque"){
    data <- data %>%
      rename(modele=Modele,
             impact = Impact,
             gadd = Gadd) %>%
      mutate(modele = factor(modele),
             impact = factor(impact))
  } else if(filen == "consommation"){
  data <- data %>%
      mutate(habitude = factor(habitude),
             marque = factor(marque))
  } else if(filen == "delai"){
    data <- data %>%
      mutate(delai = factor(delai),
             stade = factor(stade))
  } else if(filen == "enfantsfiji"){
    data <- data %>%
      mutate(dur = factor(dur),
             res = factor(res),
             educ = factor(educ))
  } else if(filen == "goldstein"){
      data <- data %>%
        mutate(ecole = factor(ecole),
               rv = factor(rv))
  } else if(filen == "gsce"){
    data <- data %>%
      mutate(centre = factor(centre))
  } else if(filen == "intention"){
    data <- data %>%
      mutate(revenu = factor(revenu),
             educ = factor(educ))
  } else if(filen == "mobilisation"){
    data <- data %>%
      mutate(idunite = factor(idunite))
  } else if(filen == "prix"){
    data <- data %>%
      mutate(prog = factor(prog))
  } else if(filen == "renergie"){
    data <- data %>%
      mutate(region = factor(region),
             date = lubridate::ymd(date))
  } else if(filen == "salaireprof"){
    data <- data %>%
      mutate(echelon = factor(echelon))
  } else if(filen == "servqual"){
    data <- data %>%
      mutate(banque = factor(banque))
  } else if(filen == "tolerance"){
    data <- data %>%
      mutate(id = factor(id))
 } else if(filen == "vengeance"){
  data <- data %>%
    rename(temps=t) %>%
    mutate(id = factor(id),
           temps = factor(temps))
  } else if(filen == "heures"){
      data <- data %>%
        rename(heures = HEURES)
  } else if(filen == "chimpanze"){
    data <- data %>%
      mutate(chimp = factor(chimp),
             mot = factor(mot))
  } else if(filen == "soccer"){
    data <- data %>%
      mutate(adversaire = factor(adversaire),
             equipe = factor(equipe))
  } else if(filen == "socceragg"){
    data <- data %>%
      mutate(domicile = factor(domicile),
             visiteur = factor(visiteur))
  } else if(filen == "buchanan"){
    data <- data %>%
      mutate(comte = factor(comte))
  } else if(filen == "fev1"){
    data <- data %>% rename(id=ID,
                            taille=HT,
                            age=AGE,
                            taillebase=BASEHT,
                            agebase=BASEAGE,
                            logfev1=LOGFEV1) %>%
      mutate(id = factor(id))
  } else if(filen == "poussin"){
    data <- data %>%
      mutate(poussin = factor(poussin),
             regime = factor(regime))
  } else if(filen == "beattheblues"){
    data$id <- factor(1:nrow(data))
    levels(data$traitement)[1] <- c("beat the blues")
  } else if(filen == "dentaire"){
    data <- data %>% rename(id=ID,
                            dist8=Y1,
                            dist10=Y2,
                            dist12=Y3,
                            dist14=Y4) %>%
      mutate(id = factor(id))
  } else if(filen == "masseporc"){
    data <- data %>% mutate(id = factor(id))
  } else if(filen == "rats"){
    data <- data %>% rename(id=ID,
                            masse1=Y1,
                            masse2=Y2,
                            masse3=Y3,
                            masse4=Y4,
                            masse5=Y5) %>%
      mutate(id = factor(id),
             groupe = factor(groupe))
  } else if(filen == "allaitement"){
    data <- data %>% mutate(race = factor(race))
  } else if(filen == "chaussures"){
    data <- data %>% mutate(statut = factor(statut),
                            sexe = factor(sexe))
  }

  assign(x = filen, value = data, envir = external_env)
}
rm(data, filen)
# external_env$bixicoll <- external_env$bixi
# external_env$bixi <- external_env$bixiuni
# external_env$bixiuni <- NULL
# external_env$college <- external_env$salaireprofs
# external_env$salaireprofs <- NULL
# rm(covid, envir = external_env)


ls(external_env)
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
path <- dirname(getwd())
dir_data <- path(path, "data")
dir_create(dir_data)
objs <- ls(envir = external_env)
paths <- path(dir_data, objs, ext = "rda")
mapply(
  save,
  list = objs,
  file = paths,
  MoreArgs = list(envir = external_env, compress = "bzip2", version = 3)
)


