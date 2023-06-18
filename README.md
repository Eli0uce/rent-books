# Laravel React Boilerplate

## Prérequis
- PHP v8.0
- NodeJS v16.0
- MySQL v8.0
- Composer v2.0 ou plus
- Npm v6 ou plus
## Packages installés
- Filament v2.0 => https://filamentphp.com/docs/2.x/admin/installation
- filament-shield => https://github.com/bezhanSalleh/filament-shield#installation
- filament-breezy => https://github.com/jeffgreco13/filament-breezy
- TailwindCSS v3.3.2 => https://getbootstrap.com/docs/5.0/getting-started/introduction/
- React v18.2.0

## Installation

1. Cloner le projet
2. Copier le fichier .env.example :
```
cp .env.example .env
```
3. Ajouter les identifiants de la DB dans le .env
```
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=rent-books
DB_USERNAME=root
DB_PASSWORD=
```
4. Installer les dépendances php avec la commande:
```
composer install
```

5. Installer les dépendances JS:
```
npm install
```
## Développement

Pour lancer le projet en local exécuter la commande:

```
php artisan serve
```

puis:

```
npm run dev
```

La version de dev est disponible l'adresse suivante:
```
http://localhost:8000
```

## FRONT

### REACT

1. Création d'un composant

Pour ajouter un composant React à l'application, vous devez créer le composant dans le dossier suivant:
```/resources/js/components``` au format JSX. 
Une fois le composant terminé, vous devez enregistrer le composant dans le DOM react, pour cela ajouter les lignes suivante dans le fichier ```/resources/js/app.jsx ```:

```
import  VotreComposant './components/VotreComposant.jsx';

bindComponent('rc-votre-composant', <VotreComposant />);
```

2. Déclaration du composant dans le html

Rendez-vous dans le fichier blade où vous souhaiter placer votre composant React et définissez votre composant de la manière suivante :

```
<div id="rc-votre-composant"></div>
```

Si vous souhaiter passer des informations depuis le back, vous devez ajouter l'attribut ```data-props```:

```
<div id="rc-votre-composant" data-props="@json([ 'message' => 'Il est bon?'])"></div>
```

3. Déclaration du composant avec une directive blade custom

Pour déclarer plus facilement votre composant vous pouvez utiliser la directive custom Blade ```@react(id, props)``` de la manière suivante:

```
@react(['id' => 'home', 'props' => [ 'message' => 'Il est bon?']])

ou simplement

@react(['id' => 'home'])
```

Les informations seront directement injecté dans les props du composant et vous pouvez les récupérer de la manière suivante:

```
export default function VotreComposant({ message }) {
    return <div>{message ?? 'Aucun message'}</div>;
}
```

# FILAMENT

## Création d'un admin:

```
php artisan make:filament-user
```