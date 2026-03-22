# HacknFlag 2026 — Write-Ups & Challs

<aside>
ℹ️

Dans ce dépôt, vous trouverez :

- des dossiers *Docker* pour lancer certains challenges
- leurs **write-ups**

Cela vous permet de continuer un challenge sans forcément lire le write-up.

</aside>

<aside>
⚠️

Tous les challenges ne seront pas proposés dans ce dépôt.

</aside>

### Prérequis

- Git
- Docker + Docker Compose

### Installation

1. Clonez le dépôt :

```bash
git clone https://github.com/p50x/HacknFlag2026
```

1. Vérifiez votre installation Docker.
    - Si Docker n’est pas installé, vous pouvez utiliser ce *one-liner* :

```bash
curl -fsSL get.docker.com | sh
```

### Lancer un challenge

1. Allez dans le dossier `Install` du challenge souhaité.
2. Lancez :

```bash
docker compose up --build -d
```

### Hack it 🙂