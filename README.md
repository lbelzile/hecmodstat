# Modélisation statistique

Ce paquetage **R** contient des tutoriels et les jeux de données du cours MATH 60604 - Modélisation statistique à HEC Montréal.

Vous pouvez installer le paquetage à partir de Github à l'aide des commandes suivantes après avoir installé `remotes`:
```R
install.packages(c("learnr","remotes"))
remotes::install_github("lbelzile/hecmodstat")
```

Des tutoriels sont disponibles.

```R
learnr::run_tutorial("intro", package = "hecmodstat")
learnr::run_tutorial("vraisemblance", package = "hecmodstat")
learnr::run_tutorial("survie", package = "hecmodstat")
```
