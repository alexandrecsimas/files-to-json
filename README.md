
# files-to-json (f2j)

Transforme arquivos em objetos JSON estruturados para facilitar a compreensão por inteligências artificiais.

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

## 💡 Uso Básico e Exemplos

```bash

# f2j [blocos] [arquivos/padrões]

f2j laravel docker-compose.yml # Processar bloco Laravel + arquivos adicionais:

f2j all # Processar o diretório atual recursivamente:

```

---

## 🔍 Saída

- **Agrupamento por bloco**
- **Listagem de arquivos processados**
- **JSON copiado para clipboard**
- **Estatísticas de conversão**

---

## 📖 Documentação Completa

Consulte a [documentação detalhada](docs/F2J.md) para mais informações, exemplos e dicas avançadas.

Acompanhe as [últimas novidades](docs/NEWS.md).

---

### 🤖 Feito por [Alexandre Carvalho](https://github.com/alexandrecsimas) 


