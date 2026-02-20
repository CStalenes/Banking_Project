Justification de nos choix : 

Index transaction :

Pour l'index sur les transactions, la colonne est utilisée dans les jointures entre la table account et transaction, c'est pour ca qu'on a créé un index pour que la BDD puisse accéder directement aux transactions d'un compte sans avoir à faire toute la table, en plus de cela ca permet d'améliorer les performances des requêtes.

Index account :

Pour l'index avec account, comme la colonne sert a lier les comptes et les clients on a ajouté un index pour faciliter la liaison entre les deux  et pour accélerer les requêtes qui rassemblent les clients par rapport à leurs comptes.

Index composite account :

Pour l'index composite account,on a créé cet index pour améliorer et rendre plus efficace les requêtes qui trient les comptes par rapport au statut tout en les regroupant par client.

