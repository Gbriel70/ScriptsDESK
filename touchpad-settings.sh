#!/bin/bash
# Configura o touchpad pra comportar como um mouse completo via xinput.
# Roda no início da sessão (start-dwm).

ID=$(xinput list | grep -i touchpad | grep -o 'id=[0-9]*' | grep -o '[0-9]*')
[ -z "$ID" ] && exit 0

# Tap-to-click (1 dedo = botão esquerdo)
xinput set-prop "$ID" "libinput Tapping Enabled" 1

# Mapeamento dos toques: 1 dedo=L, 2 dedos=R, 3 dedos=M (formato "lrm")
# 0 = lrm (default moderno) | 1 = lmr
xinput set-prop "$ID" "libinput Tapping Button Mapping Enabled" 1, 0

# Tap-and-drag: tocar uma vez "ativa" o clique pra arrastar (segura ao mover)
xinput set-prop "$ID" "libinput Tapping Drag Enabled" 1

# Drag lock: ao soltar o dedo brevemente, mantém o clique até tocar de novo
# (útil pra arrastar janelas longas sem precisar manter dedo apertado)
xinput set-prop "$ID" "libinput Tapping Drag Lock Enabled" 1

# Não responder ao toque enquanto digita (evita cliques acidentais)
xinput set-prop "$ID" "libinput Disable While Typing Enabled" 1

# Velocidade do cursor (-1.0 a 1.0; 0 = padrão, positivo = mais rápido)
xinput set-prop "$ID" "libinput Accel Speed" 0.3

# Método de scroll: 1=2dedos, 0=edge, 0=button. Ativa só scroll de 2 dedos.
xinput set-prop "$ID" "libinput Scroll Method Enabled" 1, 0, 0

# Velocidade do scroll
xinput set-prop "$ID" "libinput Scroll Factor" 0.3

# Natural scrolling (igual celular: conteúdo segue o dedo)
# 0 = desligado (padrão "tradicional") | 1 = ligado
# xinput set-prop "$ID" "libinput Natural Scrolling Enabled" 0
