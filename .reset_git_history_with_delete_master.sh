#!/bin/bash

# Verifica se a pasta atual é um repositório Git
if [ ! -d .git ]; then
    echo "Este diretório não parece ser um repositório Git."
    exit 1
fi

# Perguntar ao usuário se deseja realmente remover o histórico
read -p "Você tem certeza que deseja remover o histórico de commits? [s/n] " confirm
if [ "$confirm" != "s" ]; then
    echo "Ação cancelada."
    exit 0
fi

# Obter o repositório remoto atual
REPO_URL=$(git config --get remote.origin.url)

if [ -z "$REPO_URL" ]; then
    echo "Não foi possível encontrar o repositório remoto. Verifique se este repositório tem um 'origin' configurado."
    exit 1
fi

# Remover o histórico de commits
rm -rf .git

# Inicializar um novo repositório Git
git init

# Adicionar todos os arquivos ao novo repositório
git add .

# Criar o primeiro commit
git commit -m "Primeiro commit sem histórico anterior"

# Renomear a branch para 'main' (padrão moderno do GitHub)
git branch -M main

# Adicionar o repositório remoto
git remote add origin $REPO_URL

# Forçar o envio para o repositório remoto na branch 'main'
git push --force origin main

# Perguntar se o usuário deseja deletar o branch 'master'
read -p "Deseja deletar o branch 'master' no remoto? [s/n] " delete_master
if [ "$delete_master" == "s" ]; then
    # Deletar o branch 'master' no remoto
    git push origin --delete master
    echo "Branch 'master' deletado no repositório remoto."
else
    echo "Branch 'master' não foi deletado."
fi

echo "Histórico de commits removido e novo repositório empurrado para o GitHub na branch 'main'."

# Pausar o script para permitir que o usuário veja o resultado
read -p "Pressione qualquer tecla para sair..."
