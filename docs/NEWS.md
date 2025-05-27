
# 🗂️ files-to-json (f2j)

Transforme arquivos em objetos JSON estruturados para facilitar a compreensão por inteligências artificiais.

## ✨ Visão Geral

O `f2j` é uma função Bash/Zsh que converte recursivamente arquivos textuais em um array JSON estruturado, mantendo o caminho e conteúdo de cada arquivo. Ideal para análise de código e compartilhamento de contexto com IAs.

## 📦 Instalação Automática

Execute o seguinte comando no terminal para instalar:

```bash
git clone --depth 1 https://github.com/alexandrecsimas/files-to-json.git ~/.f2j
chmod +x ~/.f2j/install
~/.f2j/install
```

### O que este comando faz:
1. Clona o repositório para `~/.f2j`
2. Torna o script de instalação executável
3. Executa o script de instalação

## 🔧 Instalação Manual

1. Clone o repositório:
```bash
git clone --depth 1 https://github.com/alexandrecsimas/files-to-json.git ~/.f2j
```

2. Adicione manualmente ao seu shell:
```bash
echo -e "\n# Função files-to-json (f2j)" >> ~/.bashrc  # ou ~/.zshrc
echo "source ~/.f2j/f2j" >> ~/.bashrc
```

3. Recarregue o terminal:
```bash
source ~/.bashrc  # ou ~/.zshrc
```

## ⚙️ Dependências

Certifique-se de ter instalado:
- `jq` (para processamento JSON)
- `xclip` ou `xsel` (para clipboard - Linux)
- `pbcopy` (macOS)

Instale com:

```bash
# Linux (Debian/Ubuntu)
sudo apt install jq xclip

# macOS
brew install jq
```

## 🛠️ Uso Básico

```bash
f2j [opções] <padrões...>
```

### Opções:
| Flag | Descrição                          |
|------|------------------------------------|
| `-g` | Inclui arquivos do Git (.git, etc) |
| `-i` | Inclui arquivos de IDE (.vscode, .idea) |
| `-l` | Inclui arquivos ignorados pelo Laravel |
| `-c` | Inclui arquivos de cache           |

### Exemplos:
```bash
# Padrão (ignora git, IDE, Laravel e cache)
f2j .

# Processar diretório específico
f2j app/Http/Controllers

# Incluir arquivos do Git
f2j -g .
```

## 🔍 Como Funciona

1. O script verifica seu shell atual (Bash/Zsh)
2. Adiciona a função ao arquivo de configuração correspondente
3. Instala as dependências necessárias (se não estiverem presentes)
4. Cria um link simbólico para fácil acesso

## ❓ Solução de Problemas

Se encontrar erros:
1. Verifique as dependências: `jq --version`
2. Confira se o arquivo foi adicionado ao seu `.bashrc`/`.zshrc`
3. Para WSL, use `xsel` no lugar de `xclip`

## 🌟 Dicas

- Use `f2j . | jq` para visualização formatada
- Combine com `less` para navegação: `f2j . | jq | less -R`

---

Feito com ❤️ por [Alexandre C. Simas](https://github.com/alexandrecsimas)
```

Principais melhorias:
1. Instruções de instalação claras e detalhadas
2. Separação entre instalação automática e manual
3. Seção de dependências destacada
4. Exemplos práticos de uso
5. Solução de problemas comum
6. Mantido o estilo clean e objetivo
```
---
### [Página Inicial](../README.md)
