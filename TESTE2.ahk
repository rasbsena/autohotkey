; Define variáveis de controle como globais
global isPaused := false
global isRunning := false

; Gatilho para iniciar o script com Win+R
#r:: {
    global isRunning  ; Torna a variável global acessível
    if (!isRunning) {
        isRunning := true
        LoopTask()
    }
}

LoopTask() {
    ; Torna as variáveis globais acessíveis dentro desta função
    global isRunning, isPaused
    
    while (isRunning) {
        ; Verifica se o loop está pausado
        if (isPaused) {
            Sleep(100)
            continue
        }
        
        ; Ações do loop
        Send("^c")      ; Copia o conteúdo
        Sleep(400)      ;
        Send("!{Tab}")  ; Alterna para outra janela
        Sleep(400)
        Send("^v")      ; Cola o conteúdo
        Sleep(400)      ;
        Send("{Tab}")  ; Alterna para outro quadrante
        Sleep(500)      ;
        Send("!{Tab}")  ; Alterna para outra janela
        Sleep(400)      ;
        Send("{Right}") ; Pressiona seta para a direita
        Sleep(200)      ; Aguarda um pouco
        Send("^c")      ; Copia o conteúdo
        Sleep(400)      ;
        Send("!{Tab}")  ; Alterna para outra janela
        Sleep(400)      ;
        Send("^v")      ; Cola o conteúdo
        Sleep(200)     ;
        Send("{Tab}")  ; Alterna para outro quadrante
        Sleep(400)     ;
        Send("!{Tab}")  ; Alterna para outra janela
        Sleep(300)      ;
        Send("{Left}") ; Pressiona seta para a direita
        Sleep(300)      ; Aguarda um pouco
        Send("^c")      ; Copia o conteúdo
        Sleep(400)     ;
        Send("{Right}") ; Pressiona seta para a direita
        Sleep(300)      ; Aguarda um pouco
        Send("{Right}") ; Pressiona seta para a direita
        Sleep(300)      ; Aguarda um pouco
        Send("{Right}") ; Pressiona seta para a direita
        Sleep(800)      ; Aguarda um pouco
        Send("!{Enter}")  ; Abre o arquivo
        Sleep(4000)      ; Aguarda um pouco
        Send("^p")      ; Abre Impressão
        Sleep(3000)      ; Aguarda um pouco
        Send("{Enter}")  ; Abre o arquivo
        Sleep(1500)      ; Aguarda um pouco
        Send("^v")      ; Cola o conteúdo
        Sleep(1250)      ; Aguarda um pouco
        Send("{Enter}")  ; Abre o arquivo
        Sleep(2000)      ; Aguarda um pouco
        Send("^w")      ; fecha janela
        Sleep(1000)      ; Aguarda um pouco
        Send("{Left}") ; Pressiona seta para a direita
        Sleep(200)      ; Aguarda um pouco
        Send("{Left}") ; Pressiona seta para a direita
        Sleep(300)      ; Aguarda um pouco
        Send("{Left}") ; Pressiona seta para a direita
        Sleep(300)      ; Aguarda um pouco
        Send("^b")      ; Marca em negrito
        Sleep(1000)      ; aguarda
        Send("{Down}") ; Pressiona seta para a baixo
        Sleep(1000)      ; aguarda
        Send("!{Tab}")  ; Alterna para outra janela
        Sleep(1500)
        Send("{Enter}")  ; Abre o arquivo
        Sleep(10000)
        Send("{Tab}")  ; Alterna para outro quadrante
        Sleep(3000)
        Send("{Tab}")  ; Alterna para outro quadrante
        Sleep(3000)
        Send("{Tab}")  ; Alterna para outro quadrante
        Sleep(2000)
        Send("{Enter}")  ; Abre o arquivo
        Sleep(10000)
        Send("^v")      ; Cola o conteúdo
        Sleep(2000)      ; Aguarda um pouco
        Send("{Down}") ; Pressiona seta para a direita
        Sleep(2000)      ; Aguarda um pouco
        Send("{Enter}")  ; Abre o arquivo
        Sleep(10000)      ; Aguarda um pouco
        Send("{Tab}")  ; Alterna para outro quadrante
        Sleep(2000)
        Send("{Tab}")  ; Alterna para outro quadrante
        Sleep(2000)
        Send("{Enter}")  ; Abre o arquivo
        Sleep(5250)
        Send("{Tab}")  ; Alterna para outro quadrante
        Sleep(800)
        Send("{Enter}")  ; Abre o arquivo
        Sleep(800)
        Send("{Tab}")  ; Alterna para outro quadrante
        Sleep(800)
        Send("{Tab}")  ; Alterna para outro quadrante
        Sleep(800)
        Send("{Space}")  ; Abre o arquivo
        Sleep(800)
        Send("{Tab}")  ; Alterna para outro quadrante
        Sleep(1500)
        Send("!{Tab}")  ; Alterna para outra janela
        Sleep(1000)      ;
        Send("{Right}") ; Pressiona seta para a direita
        Sleep(300)      ; Aguarda um pouco
        Send("{Right}") ; Pressiona seta para a direita
        Sleep(300)      ; Aguarda um pouco
        Send("{Right}") ; Pressiona seta para a direita
        Sleep(1300)      ; Aguarda um pouco
        Send("{Right}") ; Pressiona seta para a direita
        Sleep(1300)      ; Aguarda um pouco
        Sleep(2000)      ;
        Send("OK")      ;
        Sleep(400)      ;
        Send("{left}") ; Pressiona seta para a direita
        Sleep(300)      ; Aguarda um pouco
        Send("{left}") ; Pressiona seta para a direita
        Sleep(300)      ; Aguarda um pouco
        Send("{left}") ; Pressiona seta para a direita
        Sleep(1300)      ; Aguarda um pouco
        Send("{left}") ; Pressiona seta para a direita
        Sleep(1000)      ; Aguarda um pouco
        Send("^c")      ; Copia o conteúdo
        Sleep(2000)      ;

    }
}

; Tecla "ç" para pausar/resumir o loop
ç:: {
    global isPaused  ; Torna a variável acessível
    isPaused := !isPaused  ; Alterna o estado de pausa
    ToolTip(isPaused ? "Loop Pausado" : "Loop Ativo")  ; Mostra o status
    SetTimer(RemoveToolTip, 1000)  ; Remove o ToolTip após 1 segundo
    return
}

; Tecla Ctrl+Ç para encerrar o loop
^ç:: {
    global isRunning  ; Torna a variável acessível
    isRunning := false
    ExitApp
}

; Remove o ToolTip
RemoveToolTip() {
    ToolTip("")  ; Limpa o ToolTip
}
