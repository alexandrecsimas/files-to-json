function files_to_json() {
    if [[ $# -eq 0 ]]; then
        echo "Uso: files_to_json <padrão1> <padrão2> ..."
        echo "Ex: files_to_json *.sh docker/*.conf"
        return 1
    fi

    local json_output=()
    local temp_file=$(mktemp)

    for pattern in "$@"; do
        for file in $~pattern; do
            if [[ -f "$file" ]]; then
                # Verifica se o arquivo é texto (não binário)
                if grep -Iq . "$file" 2>/dev/null; then
                    # Processa o conteúdo com jq de forma mais segura
                    if content=$(jq -Rs --arg path "$file" \
                        '{path: $path, content: .}' < "$file" 2>/dev/null); then
                        json_output+=("$content")
                    else
                        echo "Erro ao processar: $file (caracteres inválidos)" >&2
                    fi
                else
                    echo "Ignorando arquivo binário: $file" >&2
                fi
            fi
        done
    done

    if [[ ${#json_output[@]} -gt 0 ]]; then
        # Concatena os JSONs corretamente
        printf '%s\n' "${json_output[@]}" | jq -s '.' > "$temp_file"
        if [[ $? -eq 0 ]]; then
            xclip -sel c < "$temp_file"
            echo "\n🔖 Arquivos processados:"  # <--- NOVO
            jq -r '.[].path' "$temp_file"   # <--- NOVO
            echo "✅ ${#json_output[@]} arquivo(s) convertidos para JSON!"
        else
            echo "Erro ao gerar JSON final" >&2
            return 1
        fi
    else
        echo "Nenhum arquivo válido encontrado." >&2
        return 1
    fi

    rm -f "$temp_file"
}
