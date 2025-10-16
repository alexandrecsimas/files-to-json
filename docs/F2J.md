
# files-to-json (f2j) – Documentação

---

## ✨ Visão Geral

O `files-to-json` é uma ferramenta que converte o conteúdo de arquivos em objetos JSON, permitindo que inteligências artificiais compreendam melhor o contexto e o conteúdo dos arquivos. Isso é especialmente útil quando humanos não descrevem adequadamente o que foi feito, permitindo que as IAs interpretem e validem o conteúdo de forma mais eficaz.

A função `f2j` pode ser usada em projetos de código, infraestrutura, Docker e outros contextos, agrupando arquivos por blocos temáticos e facilitando o compartilhamento de contexto com IAs.

---

## 🌱 Motivação

A criação deste projeto foi motivada pela necessidade de facilitar a vida das inteligências artificiais. Muitas vezes, nós, humanos, não relatamos com precisão o que fazemos. Esta função é capaz de fornecer o contexto do que estamos falando, permitindo que as IAs compreendam e nos corrijam quando necessário.

---

## 🛠️ Instalação

A nova instalação usa o `$PATH` do seu sistema para tornar os comandos `f2j` e `f2jt` acessíveis globalmente.

### Instalação Automática (Recomendado)

Clone o repositório e execute o script de instalação. Ele irá adicionar o diretório do script ao seu `$PATH`.

```bash
git clone --depth 1 [https://github.com/alexandrecsimas/files-to-json.git](https://github.com/alexandrecsimas/files-to-json.git) ~/.f2j
cd ~/.f2j
chmod +x install
./install
```

Instalação Manual (Adicionando ao PATH)

Clone o repositório:

```Bash
git clone --depth 1 [https://github.com/alexandrecsimas/files-to-json.git](https://github.com/alexandrecsimas/files-to-json.git) ~/.f2j
```

Torne os scripts executáveis:

```Bash
chmod +x ~/.f2j/f2j
```

Adicione ao seu $PATH (no ~/.bashrc ou ~/.zshrc):

```Bash
echo 'export PATH="$PATH:$HOME/.f2j"' >> ~/.zshrc # ou ~/.bashrc
```

Recarregue o terminal:

```Bash
source ~/.bashrc # ou ~/.zshrc
```
---

## ⚙️ Dependências

Certifique-se de ter instalado:
- jq (processamento JSON)
- tree (necessário para o atalho f2jt)
- mktemp (para arquivos temporários)
- xclip ou xsel (clipboard – Linux)
- pbcopy (macOS)

Instalação:

```Bash
# Linux (Debian/Ubuntu)
sudo apt update && sudo apt install jq xclip tree coreutils

# Fedora/RHEL
sudo dnf install jq xclip tree coreutils

# Arch Linux
sudo pacman -S jq xclip tree coreutils

# macOS
brew install jq tree
```
---

## 🧩 Blocos Especiais
A função organiza arquivos em blocos temáticos. Note que o bloco all foi substituído pelo comando f2jt (atalho para tree).

| Bloco | Descrição | Arquivos/Diretórios |
| --- | --- | --- |
| laravel | Estrutura Laravel | README.md, .env, app/, routes/, etc. |
| infra | Infraestrutura tradicional | Makefile, Vagrantfile, ansible/, monitoring/, nginx.conf, apache2.conf, postgresql.conf, redis.conf, ssl/, vault/ |
| docker | Docker (contêineres e infra) | docker/ (todas as subpastas, recursivamente) |
| ignorados | Arquivos ignorados | vendor/, node_modules/, *.log, *.tmp, etc. |

---

## 🚀 Uso Básico
Existem dois modos principais de uso:

1. Modo Atalho (f2jt) - Para contexto completo e all
Este é o método recomendado para processar quase todos os arquivos de um projeto, pois ele respeita o seu arquivo .gitignore.

```Bash
f2jt
# Executa: tree -if --prune --noreport --gitignore | grep -v "/$" | f2j
```

2. Modo Blocos (f2j) - Para argumentos e blocos específicos
Use f2j para processar listas de arquivos e blocos temáticos definidos.

```Bash
f2j [blocos] [arquivos/padrões]
```
---

## 💡 Exemplos
Processar tudo recursivamente (o novo 'all'):

```Bash
f2jt
```

Processar projeto Laravel + arquivos adicionais:

```Bash
f2j laravel docker-compose.yml
```

Processar apenas infraestrutura:

```Bash
f2j infra
```

Processar contexto Docker (todas as subpastas):

```Bash
f2j docker
```
---

## 🌟 Explicação sobre o Modo 'All' e o Processamento dos Blocos

### O Novo 'All'

A funcionalidade anterior do bloco all (f2j all) foi substituída pelo comando dedicado f2jt.

f2jt é superior pois utiliza a ferramenta tree com a flag --gitignore, o que automaticamente exclui diretórios grandes e irrelevantes como vendor/ e node_modules/, resultando em um JSON mais limpo e rápido.

Blocos (f2j laravel)
Os blocos são processados usando lógica de find e expansão de shell. Eles são úteis para focar em partes específicas do projeto, ignorando todo o resto.

---

## 🔍 Saída
Agrupamento por bloco

Listagem de arquivos processados (apenas os que converteram com sucesso)

JSON copiado para clipboard

Estatísticas de conversão

---

## ⚠️ Observações
Compatibilidade: Funciona em Bash e Zsh.

Checagem de Binário: O script tenta detectar e ignorar arquivos binários (imagens, zip, etc.) usando heurísticas avançadas (file --mime-type).

- Requer jq instalado
- Para clipboard, requer:
    - Linux: xclip ou xsel
    - macOS: pbcopy
    - WSL (Windows): Use xsel no lugar de xclip

---

## ❓ Ajuda
Execute f2j sem argumentos para ver o menu de ajuda:

```Bash
f2j
```
---

## 🌟 Dicas
- Visualize o JSON formatado:

```Bash
f2j laravel | jq
```

- Use o atalho para pipe:

```Bash
f2jt | jq | less -R
```

---

## 📜 Licença
Este projeto está licenciado sob a Licença MIT. Consulte o arquivo LICENSE para mais informações.

---

## 🙌 Contribuindo
Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou enviar pull requests.

---

### 🤖 Feito por [Alexandre Carvalho](https://github.com/alexandrecsimas) 
