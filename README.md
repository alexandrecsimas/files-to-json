
# files-to-json (f2j)

Converte arquivos em objetos JSON para facilitar o compartilhamento de contexto com inteligências artificiais.

## ✨ Visão Geral

O `files-to-json` é uma ferramenta que converte o conteúdo de arquivos em objetos JSON, permitindo que inteligências artificiais compreendam melhor o contexto e o conteúdo dos arquivos. Isso é especialmente útil quando humanos não descrevem adequadamente o que foi feito, permitindo que as IAs interpretem e validem o conteúdo de forma mais eficaz.

A função `f2j` pode ser usada em projetos de código, infraestrutura, Docker e outros contextos, agrupando arquivos por blocos temáticos e facilitando o compartilhamento de contexto com IAs.


## 🌱 Motivação

A criação deste projeto foi motivada pela necessidade de facilitar a vida das inteligências artificiais. Muitas vezes, nós, humanos, não relatamos com precisão o que fazemos. Esta função é capaz de fornecer o contexto do que estamos falando, permitindo que as IAs compreendam e nos corrijam quando necessário.


---

## 🚀 Instalação Rápida

```bash

git clone --depth 1 https://github.com/alexandrecsimas/files-to-json.git ~/.f2j
chmod +x ~/.f2j/install
~/.f2j/install

```

**Dependências:**  
Certifique-se de ter instalado `jq` e, para clipboard:

- **Linux:** `xclip` ou `xsel`
- **WSL:** use `xsel`
- **macOS:** use `pbcopy`

---

## 💡 Uso Básico

```bash

f2j [blocos] [arquivos/padrões]

```

Você pode combinar blocos e arquivos em qualquer ordem.

---

## 📖 Exemplos

**Processar bloco Laravel + arquivos adicionais:**
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

**Processar todo o diretório atual recursivamente:**
```bash

f2j all

```

---

## 🔍 Saída

- **Agrupamento por bloco**
- **Listagem de arquivos processados**
- **JSON copiado para clipboard**
- **Estatísticas de conversão**

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

## 📖 Documentação Completa

Consulte a [documentação detalhada](docs/F2J.md) para mais informações, exemplos e dicas avançadas.

Acompanhe as [últimas novidades](docs/NEWS.md).

---

### 🤖 Feito por [Alexandre Carvalho](https://github.com/alexandrecsimas) 


