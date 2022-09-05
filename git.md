
# Git

## **tl;dr**

- ajouter tous les nouveaux changements du dossier actuel au prochain commit
```sh
git add .
```
> **note:**
>
> Pour englober tous les changements du projet, assurez vous d'avoir placé la session du terminal dans le dossier racine du projet.


- créer un commit
```sh
git commit -m "commentaire sur le commit"
```
> **note:**
>
> Pour comprendre les commits, il est recommandé de lire la [prochaine partie](#projet).

- synchroniser les commits avec le serveur
```sh
git push
```


## Projet

Un projet est un dossier dans lequel on a initialisé un dépôt git. C'est un dossier comme un autre, mais on peut utiliser les commandes de `git` dedans.

On peut créer un projet de deux manières:
-	Initialiser un projet vide, avec la commande `git init <chemin du dossier>`. ça créera un dépôt qu'il faudra configurer en suite.
-	Cloner un dépôt déjà existant, avec la commande `git clone <chemin du dépôt>`. De cette manière, le dépôt créé est configuré pour facilement synchroniser son contenu avec le dépôt original.

> **note:**
>
> toutes les commandes `git` ont la forme `git <sous-commande...>`

## Commits

Les commits sont des changements de fichiers *(création / modification / suppression)* dans le dossier du projet.
Chaque commit est une étape: en appliquant tous les commits d'un projet dans l'ordre à un dossier vide, il devrait contenir la même chose que celui de votre projet.

Pour créer un commit, il faut d'abord faire des changements au contenu du projet pour pouvoir grouper ces changements dans un commit.

Une fois que vous avez fait des modifications aux fichiers du projet, faites `git add <fichier>` pourr ajouter des changements au prochain commit que vous ferrez, vous pouvez ajouter autant de fois que vous voulez.

> **note:**
> 
> La commande `git add` prends en paramètre un fichier, si vous mettez un dossier à la place, elle ajoutera tous les fichiers changés dans le dossier.

Quand vous avez ajouté les changements que vous voulez, faites `git commit` pour faire un commit.
Chaque commit contient une description de ce qu'il fait, la commande `git commit` ouvrira un éditeur de texte dans le terminal pour rédiger la description du nouveau commit.

Losque vous sauvegarderez et quitterez l'éditeur, si votre description n'est pas vide alors le commit sera créé.

> **note:**
>
> l'éditeur par défaut est parfois `vi`/`vim`, son fonctionnement est plutôt complexe; pour rédiger la description autrement, vous pouvez créer un commit avec le flag `m` pour spécifier le message dirrectement: `git commit -m "fais des changements"`

> **note:**
>
> Les messages de descriptions sont importants pour comprendre ce que le commit fais sans lire son contenu; ils peuvent être courts, mais c'est toujours mieux de les rédiger.

Pour lister les commits, faites `git log`, ça montre une liste des commits avec leur descriptions.

## Branches

Une branche, c'est un ensemble de commits, généralement on en a une seule par projet, mais parfois on veut une branche qui contient les commits jusqu'à un point où le projet fonctionne et une autre branche pour les nouveaux commits du développement en cours avec lesquels le projet ne marche plus forcément.

à EPITA, on ne demande pas d'utiliser d'autres branche que la branche `master` (branche principale), mais c'est important de savoir ce que c'est pour mieux comprendre certaines commandes.

## Télécommandes

Les télécommandes *(remotes)* sont des informations sur un dépôt dans un autre dossier ou sur un autre ordinateur; elles permettent de synchroniser les commits du projet actuel avec ceux du dépôt distant.

Lorsque vous clonnez un dépôt, une télécommande est créée vers le dépôt original pour que vous puissiez y envoyer vos nouveaux commits.

Pour envoyer les commits locaux, faites `git push`, ça poussera tous vos nouveaux commits dans le dépôt distant.

Pour télécharger les commits distants, faites `git pull`, ça tirera tous les nouveaux commits du dépôt distant dans le dépôt local.

Pour voir quels commits ont bien étés envoyés, utilisez `git log`, un label apparaît à coté du nom du dernier commit des dépôt de télécommandes.