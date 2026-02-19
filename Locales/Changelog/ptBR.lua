if GetLocale() ~= "ptBR" then return end

WIM_CHANGE_LOG = [[
|rVersão 1.3.12 (19/02/2026)|cffffffff
[*] - Tentativa de corrigir teclas de atalho que não funcionavam com uma janela WIM aberta

|rVersão 1.3.11 (18/02/2026)|cffffffff
[*] - A caixa "Mostrar info do personagem" agora controla corretamente as consultas de jogadores
[*] - Corrigido congelamento do jogo causado pela busca de jogadores (/who) travando

|rVersão 1.3.10 (14/02/2026)|cffffffff
[*] - Shift+clique agora funciona de forma confiável nas janelas do WIM (itens, missões, feitiços, etc.)
[*] - Links não são mais duplicados quando WIM e o chat padrão estão abertos ao mesmo tempo
[*] - Melhor compatibilidade com pfQuest e outros addons que usam shift+clique para linkar
[*] - /wim reset agora redefine corretamente todas as configurações
[*] - A opção "Interceptar comandos de sussurro" agora funciona corretamente
[*] - Informações do jogador (nível, classe, guilda) não ficam mais travadas em certos jogadores
[*] - Melhorado o desempenho do addon

|rVersão 1.3.9 (11/02/2026)|cffffffff
[*] - Corrigido crash que podia ocorrer ao fazer login
[*] - Popup de histórico agora mostra a quantidade correta de mensagens
[*] - O comando /who não é mais interceptado desnecessariamente pelo WIM
[*] - Novas configurações padrão agora são aplicadas corretamente ao atualizar de uma versão anterior
[*] - Corrigido shift+clique em slots vazios de equipamento e inventário
[*] - Corrigido shift+clique em reagentes nas janelas de profissão que podia linkar o item errado
[*] - Cliques em itens com AllInOneInventory ou EngInventory não são mais processados duas vezes
[*] - Autocompletar de nomes em sussurros agora sugere corretamente a primeira correspondência
[*] - Corrigidos possíveis erros ao fechar janelas via Escape ou outros addons

|rVersão 1.3.8 (11/02/2026)|cffffffff
[*] - Shift+clique no Registro de missões agora insere links de missões e suas recompensas nas janelas WIM
[*] - Tecla de resposta não exige mais duplo pressionamento para focar
[*] - Corrigido crash ao fechar janela durante consulta WHO
[*] - Filtro de data no histórico não reseta mais ao clicar no mesmo nome
[*] - Corrigido "&amp;" exibido em vez de "&" no tooltip do botão fechar
[+] - Formato de data no histórico agora se adapta ao idioma do jogo
[-] - Removidos filtros de spam padrão obsoletos

|rVersão 1.3.7 (02/02/2026)|cffffffff
[*] - Cores de classe agora correspondem exatamente aos valores do jogo (DBFBlackbull)
[*] - Macros de sussurro (/w Nome mensagem) agora enviam corretamente (Kirchlive)

|rVersão 1.3.6 (02/02/2026)|cffffffff
[+] - Tradução completa da interface para todos os 9 idiomas suportados

|rVersão 1.3.5 (29/12/2025)|cffffffff
[+] - Mensagens agora aparecem instantaneamente; info do jogador carrega em segundo plano (me0wg4ming)
[+] - Sussurros de MJ agora são destacados (me0wg4ming)

|rVersão 1.3.4 (28/07/2025)|cffffffff
[*] - Corrigida exibição de caracteres cirílicos
[+] - Melhorias de localização e interface (KasVital)

|rVersão 1.3.3 (27/12/2017)|cffffffff
[+] - Refatoração por shirsig

|rVersão 1.3.2 (05/01/2017)|cffffffff
[+] - Traduzido para russo (ruRU)

|rVersão 1.3.1 (17/10/2006)|cffffffff
[+] - Criado novo menu do ícone do minimapa. Não usa mais o menu suspenso da Blizzard.
[+] - Agora você pode fechar conversas pelo menu do ícone do minimapa.
[*] - Realizadas alterações de código necessárias para plugin Titan e novo menu do minimapa.
[*] - Janela Who não aparece mais ao falar com MJ ou usuário offline.
[+] - WIM substitui o botão "Enviar Mensagem" na janela de Amigos.
[+] - Agora intercepta comandos /w e /whisper e abre uma janela de mensagem.
[+] - Adicionada opção para ativar/desativar interceptação de comandos de sussurro.
[+] - Adicionado suporte para LootLink.
[+] - Adicionado suporte para EngInventory.
[+] - Agora você pode executar comandos slash dentro de uma janela de mensagem.

|rVersão 1.2.13 (03/10/2006)|cffffffff
[*] - Corrigido bug que causa erro se Titan não estiver carregado.

|rVersão 1.2.12 (03/10/2006)|cffffffff
[+] - Adicionado suporte para AtlasLoot.
[+] - Adicionada opção para manter foco apenas em cidade principal.
[+] - Adicionada opção para não mostrar mensagens AFK e DND.
[+] - Adicionada opção para Ativar/Desativar uso da 'Tecla Escape' para fechar janelas.
[+] - Adicionadas teclas de atalho 'Mostrar' e 'Ocultar Todas as Mensagens'.
[+] - Adicionada barra de rolagem à aba de opções gerais. (sem espaço!).
[*] - Corrigido erro nil na função WIM_LoadGuildList(). (obrigado Misschief).
[+] - Agora você pode linkar itens da janela de saque.
[+] - Adicionado suporte para AllInOneInventory.
[*] - Janela Who não deve mais aparecer ao encontrar nomes similares.
[*] - Titan agora listado como dependência opcional.

|rVersão 1.2.11 (29/09/2006)|cffffffff
[*] - Corrigido erro de ortografia na aba Janelas.
[*] - Não executa mais requisição /who em usuários de outros reinos.
[+] - Obter informações de usuários de outros reinos a partir das informações de raide.
[*] - Janela de alternância de mensagens mostra apenas usuários únicos como pretendido.
[+] - Alternar janela agora a traz para frente se estiver atrás de outra.
[+] - Alternar janelas agora foca automaticamente quando mensagem é selecionada.
[+] - A tecla TAB agora alterna janelas enquanto já focado em outra.
[+] - Agora você pode linkar itens da tela de inspeção.
[+] - Agora você pode linkar itens no SuperInspect.
[+] - Adicionada aba "Você sabia?" na ajuda.
[+] - Adicionada aba "Créditos" na ajuda.
[+] - Adicionado botão à tela de opções para acessar ajuda.

|rVersão 1.2.10 (26/09/2006)|cffffffff
[*] - Realizado ajuste menor no comportamento do foco de janelas.
[+] - Janela de opções modificada para incluir opções de apelidos, filtros e Histórico
[+] - Adicionado Filtro de Apelidos: (1: substituir nome; 2: mostrar como comentário);
[+] - Adicionado Filtro de Palavras-chave/Frases: (1: Ignorar (pelo WIM); 2: Bloquear (completamente))
[+] - Adicionadas regras de filtro CT_RABM padrão.
[+] - Adicionado motor de histórico e opções.
[+] - Adicionado visualizador de histórico. ( /wim history )
[*] - Barra de atalhos agora mantém sua transparência em 100%.
[+] - Adicionado botão à janela de mensagem para acessar histórico se existir.
[+] - Adicionadas opções para definir posição padrão da janela.
[+] - Adicionada opção para Ativar/Desativar cascata de janelas.
[+] - Adicionada opção para mudar a direção da cascata de janelas.
[+] - Adicionadas teclas de atalho.
[+] - Adicionada tecla de atalho para alternar entre conversas recentes.
[+] - Adicionada tela de ajuda. ( /wim help )

|rVersão 1.1.15 (19/09/2006)|cffffffff
[+] - Adicionada opção para mostrar info do personagem (requisições /who).
[+] - Adicionada opção para mostrar ícone de classe. (ícone padrão atualizado).
[*] - Ícone do minimapa não aparece mais sobre todas as outras janelas a menos que esteja em modo de movimento livre.
[+] - Agora você pode linkar itens na sua janela de personagem.
[+] - Agora você pode linkar itens de janelas de profissão.
[+] - Agora você pode linkar itens de janelas de ofícios (ex: Encantamento)
[+] - Adicionada opção para definir cor de classe no texto da barra de título.
[+] - Adicionada opção para exibir marcações de tempo.
[+] - Adicionada opção para Ativar/Desativar WIM.
[+] - Adicionada barra de atalhos (e opções apropriadas).
[+] - Adicionada info detalhada do personagem. (Guilda, nível, raça, classe).

|rVersão 1.1.4 (15/09/2006)|cffffffff
[+] - Adicionado plugin Titan integrado.
[*] - Transparência não afeta mais o texto do chat.
[*] - Menu do minimapa agora abre à esquerda como pretendido.
[+] - Criados novos gráficos para janela de mensagem.
[+] - Janela de mensagem recriada - agora redimensionável!
[+] - Janela de opções reorganizada e criada aba para opções de janela
[-] - Removida opção 'Mostrar tooltip do minimapa'.
[+] - Adicionada opção 'Mostrar tooltips'.
[*] - Reformulada opção de popup ao receber respostas (funcionava como pretendido).
[*] - Janelas não podem mais ser posicionadas fora da interface.
[+] - Adicionada opção para ordenar lista de conversas alfabeticamente (caso contrário por ordem de recebimento).
[+] - Adicionadas opções para mudar altura e largura das janelas de mensagem.
[+] - Janelas de mensagem agora podem ser arrastadas pelo quadro de chat.
[+] - Clicar no quadro de chat agora foca a caixa de mensagem.
[+] - Adicionada capacidade de fechar uma conversa.
[+] - Adicionado ícone do minimapa com movimento livre. (Mover para qualquer lugar na tela).
[+] - Shift-Clique no botão de rolagem agora passa página para cima e baixo.
[+] - Shift-Roda do mouse agora passa página para cima e baixo.
[+] - Adicionada opção para desativar popups em combate.
[+] - Adicionados ícones de classe à janela de mensagem.

|rVersão 1.0.19 (12/09/2006) |cffffffff
[*] - Corrigido problema com idiomas do jogo (Comum/Orc). Isso também deve resolver problemas com outras interfaces WoW em outros idiomas.
[*] - Recodificados alguns hooks de funções para evitar receber mensagens duplicadas devido a conflitos de addons.

|rVersão 1.0.18 (12/09/2006) |cffffffff
[!] - Lançamento público inicial.

]]
