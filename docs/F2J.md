# files-to-json (f2j) – Documentação

---

## ✨ Visão Geral

O `files-to-json` é uma ferramenta que converte o conteúdo de arquivos em objetos JSON, permitindo que inteligências artificiais compreendam melhor o contexto e o conteúdo dos arquivos. Isso é especialmente útil quando humanos não descrevem adequadamente o que foi feito, permitindo que as IAs interpretem e validem o conteúdo de forma mais eficaz.

A função `f2j` pode ser usada em projetos de código, infraestrutura, Docker e outros contextos, agrupando arquivos por blocos temáticos e facilitando o compartilhamento de contexto com IAs.


## 🌱 Motivação

A criação deste projeto foi motivada pela necessidade de facilitar a vida das inteligências artificiais. Muitas vezes, nós, humanos, não relatamos com precisão o que fazemos. Esta função é capaz de fornecer o contexto do que estamos falando, permitindo que as IAs compreendam e nos corrijam quando necessário.

---

## 🛠️ Instalação

### Instalação Automática

Clone o repositório e execute o script de instalação:
```bash

git clone --depth 1 https://github.com/alexandrecsimas/files-to-json.git ~/.f2j
chmod +x ~/.f2j/install
~/.f2j/install
```


### Instalação Manual

1. **Clone o repositório:**
```bash

git clone --depth 1 https://github.com/alexandrecsimas/files-to-json.git ~/.f2j
```

2. **Adicione ao seu shell:**
```bash

echo -e "\n# Função files-to-json (f2j)" >> ~/.bashrc # ou ~/.zshrc
echo "source ~/.f2j/f2j" >> ~/.bashrc # ou ~/.zshrc
```


3. **Recarregue o terminal:**
```bash

source ~/.bashrc # ou ~/.zshrc
```

---

## ⚙️ Dependências

Certifique-se de ter instalado:

- **jq** (processamento JSON)
- **xclip** ou **xsel** (clipboard – Linux)
- **pbcopy** (macOS)

**Instalação:**
```bash

# Linux (Debian/Ubuntu)
sudo apt update && sudo apt install jq xclip

# Fedora/RHEL
sudo dnf install jq xclip

# Arch Linux
sudo pacman -S jq xclip

# macOS
brew install jq
```

---

## 🧩 Blocos Especiais

A função organiza arquivos em blocos temáticos. Veja os blocos disponíveis:

| Bloco      | Descrição                         | Arquivos/Diretórios                                  |
|------------|-----------------------------------|------------------------------------------------------|
| `all`        | Todo o diretório atual            | . (processa recursivamente todo o projeto)           |
| `laravel`  | Estrutura Laravel                 | `README.md`, `.env`, `app/`, `routes/`, etc.        |
| `infra`    | Infraestrutura tradicional        | `Makefile`, `Vagrantfile`, `ansible/`, `monitoring/`, `nginx.conf`, `apache2.conf`, `postgresql.conf`, `redis.conf`, `ssl/`, `vault/` |
| `docker`   | Docker (contêineres e infra)      | `docker/` (todas as subpastas, recursivamente)       |
| `ignorados`| Arquivos ignorados                | `vendor/`, `node_modules/`, `*.log`, `*.tmp`, etc.  |
| `# cloud`     | Cloud Computing                 | `terraform/` (comentado, disponível para uso futuro) |

---

## 🚀 Uso Básico
```bash

f2j [blocos] [arquivos/padrões]

```

Você pode combinar blocos e arquivos em qualquer ordem.

---

## 💡 Exemplos

**Processar tudo recursivamente:**
```bash

f2j all

```

**Processar projeto Laravel + arquivos adicionais:**
```bash

f2j laravel docker-compose.yml

```

**Processar apenas infraestrutura:**
```bash

f2j infra

```


**Processar contexto Docker (todas as subpastas):**
```bash
f2j docker

```

**Processar arquivos ignorados:**
```bash

f2j ignorados

```

---

## 🌟 Explicação sobre o bloco `all` e o processamento dos blocos

O bloco `all` permite processar **todos os arquivos do diretório atual recursivamente**, independentemente de pertencerem a algum bloco temático. Isso é útil para capturar o contexto completo do projeto, incluindo arquivos fora dos padrões dos blocos temáticos.

### Por que `f2j .` e `f2j *` não incluem o bloco Laravel automaticamente?

- **`f2j .`:**
    - O ponto (`.`) representa o diretório atual.
    - Por padrão, a função não processa diretórios recursivamente a menos que você use o bloco `all`.
    - Arquivos do bloco Laravel **não são incluídos automaticamente** porque a função segue estritamente os caminhos listados em cada bloco.

- **`f2j *`:**
    - O asterisco (`*`) é expandido pelo shell para **todos os arquivos e pastas visíveis** no diretório atual.
    - A função processa cada item resultante, mas **não aplica o bloco Laravel** a eles, pois o bloco Laravel só é usado quando explicitamente chamado.
    - Arquivos do bloco Laravel **são incluídos apenas se você chamar `f2j laravel`** ou se eles estiverem listados em outro bloco ativo.

### Como garantir que todos os arquivos Laravel sejam incluídos?

- **Inclua todos os caminhos relevantes no bloco Laravel.**
- **Se quiser processar tudo recursivamente, use o bloco `all`:**

---

## 🔍 Saída

- **Agrupamento por bloco**
- **Listagem de arquivos processados**
- **JSON copiado para clipboard**
- **Estatísticas de conversão**

---

## ⚠️ Observações

- **Ignora arquivos binários**
- **Erros são exibidos em amarelo**
- **Requer `jq` instalado**
- **Para clipboard, requer:**
  - **Linux: xclip ou xsel**      
  - **WSL (Windows): use xsel no lugar de xclip**      
  - **macOS: use pbcopy para clipboard**
- **Funciona em Bash/Zsh**
- **O bloco `docker` varre todas as subpastas de `docker/` recursivamente**
- **O bloco all processa todo o diretório atual e subdiretórios recursivamente**
- **Para capturar o contexto completo do projeto, combine blocos temáticos com o bloco all conforme necessário**


---

## ❓ Ajuda

Execute sem argumentos para ver o menu de ajuda:
```bash

f2j

```

---

## 🌟 Dicas

- **Visualize o JSON formatado:**  
```bash

f2j . | jq

```

- **Navegue com `less`:**  
```bash

f2j . | jq | less -R

```

---

## 📜 Licença

Este projeto está licenciado sob a Licença MIT. Consulte o arquivo [LICENSE](LICENSE.md) para mais informações.

Acompanhe as [últimas novidades](NEWS.md).

---

## 🙌 Contribuindo

Contribuições são bem-vindas! Sinta-se à vontade para abrir `issues` ou enviar `pull requests`.

---

### 🤖 Feito por [Alexandre Carvalho](https://github.com/alexandrecsimas) 
