# Terminal - bases

## **tl;dr**
> **note:**
>
> 'tl;dr' : ***T**oo **L**ong; **D**idn't **R**ead* - résumé du reste de l'article.

- déplacer la session du terminal dans un autre dossier
```sh
cd chemin/vers/un/dossier
```
> **note:**
>
> on peut utiliser `TAB` dans le terminal pour lister/auto-compléter les chemins possibles


- lister les fichiers présents
```sh
ls
```
> **note:**
> 
> certains fichiers sont cachés *(ceux dont le nom commence par un point `.`)*, pour les voir, utiliser `ls -a` à la place


- copier un fichier
```sh
cp chemin/du/fichier chemin/dossier/de/destination/
```
> **note:**
> 
> Le dernier `/` dans le chemin de destination indique que dans ce chemin, `destination` est bien un dossier; et qu'on ne donne pas le nom du fichier créée lors de la copie; ça force le terminal à réutiliser le nom du fichier déjà existant.


- créer un nouveau fichier texte
```sh
nano chemin/du/fichier.txt
```

> **note:**
>
> Les chemins de fichiers contenant des espaces doivent être délimités par des `"` pour être correctement pris en compte: `nano "un fichier.txt"`

> **note:**
> 
> Les raccourcis importants de l'éditeur `nano` sont:
> - `Ctrl + S`: sauvegarder
> - `Ctrl + X`: quitter


- créer un nouveau dossier
```sh
mkdir chemin/du/nouveau/dossier
```

- supprimer un fichier (⚠ irréversible)
```sh
rm chemin/du/fichier
```
> **note:**
>
> Ne marche pas pour les dossiers car le système de fichier les considère différement.



- supprimer un dossier (⚠ irréversible)
```sh
rm -fr chemin/du/dossier
```
> **note:**
> 
> Les flags
> - `f` veut dire 'force', fais qu'il n'y a pa de demande de confirmation pour chacun des fichiers dans le dossier
> - `r` veut dire 'récursif', c'est à dire suprrimer tous les fichiers et dossiers contenu par le dossier ainsi que leurs propres contenus etc...


- avoir des infos sur une commande
```sh
man commande
```
> **note:**
> 
> ça montre la page du manuel correspondant à cette commande.
> 
> Certaines pages contiennent des examples qui permettent de mieux comprendre la commande.

## environement

Dans une session de terminal, il y a des variables. Elles sont lues par les commandes qu'on fait.

Par exemple, la variable `PWD` *(qu'on peut voir avec la commande `echo $PWD`)* représente le chemin du dossier actuel dans la session *(**P**ath to **W**orking **D**irectory)*.

C'est le dossier dans lequel les commandes s'appliquent:
la commande `ls` permet de lister les fichiers dans un dossier, par défaut elle listera les fichiers contenus au chemin `PWD`.

```md

dossier-a
├
└