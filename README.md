# Desafio de Devops - Atlântico Avanti

Para o desafio de DevOps da Atlântico Avanti, baseei-me no projeto desenvolvido para o TCC Escola da Nuvem - Fundamentos de AWS. O projeto consiste em uma página HTML que exibe o perfil de alguns alunos, com links para seus perfis no LinkedIn e GitHub, além da opção de download de currículos em formato PDF. Todo o projeto está armazenado em um repositório no GitLab.

Com base neste projeto, criei scripts utilizando Terraform para provisionar a infraestrutura na AWS, realizar o build do projeto no Docker Hub e fazer o deploy da imagem Docker na infraestrutura provisionada.

Implementei também um pipeline de CI/CD que, a cada alteração na branch main do repositório no GitLab, executa o deploy automático da nova imagem Docker gerada no Docker Hub.

