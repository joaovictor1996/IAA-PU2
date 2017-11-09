function finalRad= Projeto1(obj)

 
 
 
while(1)
     
     
    %[x y th]= OverheadLocalizationCreate(obj)
     
    dd = ReadSonar(obj,1)
    if (isempty(dd))
        dd = 3;
    end
        
         
    df = ReadSonar(obj,2)
     if (isempty(df))
        df = 3;
    end
    de = ReadSonar(obj,3)
     
    if (isempty(de))
        de = 3;
    end
    
    %Logica fuzzy
    %===============================================
    
    %faz a leitura do documento criado pelo toolbox
    %fis = readfis('teste.fis'); 
     
    %guarda na variável Y os valores apresentados na saída,      
    %Y = evalfis([dd df de],fis)
    
    %=============================================== 
    
    %Logica binaria
    %===============================================

    %convertendo para strings
    de = num2str(de);
    dd = num2str(dd);
    df = num2str(df);

    %criei uma string
    palavras = '"C:/Program Files/swipl/bin/swipl.exe" -s script.pl ';

    %juntei as strings
    juncao = strcat(palavras,{' '},de,{' '},dd,{' '},df);

    %a junção forma celulas, aqui eu tranformo a celula em strings
    str = juncao{1};

    %chama a função
    [status,term_out] = system(str);

    %convertendo a saida de string para numeros
    Y = str2num(term_out)

    %===============================================
    
    SetDriveWheelsCreate(obj,Y(1),Y(2));
     
    [x y th]= OverheadLocalizationCreate(obj);
    plot(x,y,'r*');
     
    pause(1);
end

