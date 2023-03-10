### Função Renova #####

### Argumentos - 

## Base de Dados:
# df - Variáveis: grupos, status, vagas

# grupos: nivel de agregação dos dados Ex. Municípios, Estados e outros.
# status: estado final do parlamentar.
# vagas: número de vagas disponíveis

## tipo: 
# Taxa de Renovação Bruta - txrb
# Taxa de Renovação Compulsória - txrc
# Taxa de Renovação Líquida - txrl


renova <- function(df, tipo){
  if (!require("dplyr")) {
    stop("O pacote dplyr não está instalado. Por favor, instale-o.")
  }
  if (tipo == "txrb"){
  TXRB <-  group_by(df, grupos, status, vagas) %>% 
    tally() %>% filter(status%in% c("NÃO CANDIDATO", "NÃO ELEITO")) %>% 
    group_by(grupos, vagas) %>% summarise(QTRB = sum(n)) %>% 
    mutate(TXRB = round((QTRB/vagas)*100,2))}
  else if (tipo == "txrc"){
    TXRC <-  group_by(df, grupos, status, vagas) %>% 
      tally() %>%filter(status=="NÃO CANDIDATO") %>% 
      group_by(grupos, vagas) %>% summarise(QTRC = sum(n)) %>% 
      mutate(TXRC = round((QTRC/vagas)*100,2))}
    
    else if (tipo == "txrl"){
    
      TRL <- group_by(df, grupos, status, vagas) %>% 
        tally() %>% filter(status=="NÃO ELEITO") %>% 
        group_by(grupos, vagas)%>% summarise(QTNR = sum(n)) 
      
      TRL14 <- df %>% filter(status%in% c("NÃO ELEITO", "ELEITO")) %>% 
        group_by(grupos, vagas) %>% tally() %>% 
        inner_join(TRL, by = c("grupos","vagas")) %>% 
        mutate(TXRL = round((QTNR/n*100),2))
  }
  
}









