# README : THE GOSSIP PROJECT

Bonjour! L'équipe est composée de Fred (FredS), Axel Pélerin et Juliette Audema. 

Ce programme est une app Ruby on Rails qui contient beaucoup de fichiers dont ceux sur lesquels nous avons travaillé, à savoir : les models, les fichiers de migration, le seed ainsi que le fichier de base de données (developpement.sqlite3).

Le but de l'appli sera d'être une plateforme pour pouvoir commérer tous ensemble 😏. Sur ce super réseau social, un utilisateur va s'inscrire, renseigner son prénom et nom, son mail et son âge, puis il précisera sa ville avec une recherche par code postal. Il aura ensuite toutes les fonctionnalités qui feront de cette appli une future licorne :
- Les utilisateurs peuvent créer des potins : "askip john est célib hihi"
- Les utilisateurs en créant des potins peuvent mettre un ou plusieurs tags sur les potins : #romance
- Les utilisateurs peuvent commenter des potins : "ahiii j'savé pa lol 💁‍♂️"
- Et puisqu'une appli de potins sans un système BG de commentaire serait bidon, on va faire en sorte qu'il est possible de commenter des commentaires
- Les utilisateurs peuvent liker des potins
- Les utilisateurs peuvent contacter leur commères favories en MP pour des exclus mondiales

Pour l'instant nous avons juste conçu l'architecture de cette app :)

## Tables et Models

L'application contient les tables suivantes que nous avons créées :
- users, qui a comme colonnes : un first_name (string), un last_name (string), une description (text), un email (string), un âge (integer) ;
- cities, qui a comme colonnes : name (string), postal_code (integer) ;
- gossips, qui a comme colonnes: title (string), content (text) et on aura besoin de la date de création qui est en fait le timestamp sous le nom de created_at ;
- tags, qui a comme colonne : title (string) ;
- private_messages, qui a comme colonnes : content (text) et on aura besoin de la date de création qui est en fait le timestamp sous le nom de created_at.

Les models suivants y sont associés:
- user.rb
- city.rb
- gossip.rb
- tag.rb
- private_message.rb

Voici les liens qui sont faits entre les models:
- Un utilisateur appartient à une seule ville mais une ville peut contenir plusieurs utilisateurs.
- Un utilisateur peut écrire plusieurs gossips mais un gossip ne peut être écrit que par un seul utilisateur. 
- Un gossip peut avoir plusieurs tags et un tag peut être présent sur plusieurs gossip (genre #rumeur). 
- Un PM aura un expéditeur et un (ou plus) destinataire . 


## Comment se servir du programme 

Pour faire marcher ce programme, il vous faut d'abord faire ```$ bundle install``` ensuite ```$ rails db:migrate``` et pour terminer ```$ rails db:seed```

## L'arborescence du dossier et les programmes

Dans ce dossier vous allez trouver l'arborescence classique des apps Ruby on Rails.


## Ce qui a été fait:

1) Nous avons créé les models et les tables associés pour les objets "User", "City", "Gossip", "Tag", "PrivateMessage".

2) Les liens que nous avons créés:
- City has_many :users ;
- Gossip belongs_to :user et has_and_belongs_to_many :tags ;
- PrivateMessage has_and_belongs_to_many :recipients, class_name: "User" et belongs_to :sender, class_name: "User" (= le private message peut avoir plusieurs recipients et a un seul sender) ;
- Tags has_and_belongs_to_many :gossips ;
-  User belongs_to :city, has_many :gossips et has_and_belongs_to_many :private_messages

3) Nous avons aussi injecté directement des données dans la base de données à partir du fichier seeds.rb tout en utilisant la Gem Faker afin d'avoir des données plus réalistes.
