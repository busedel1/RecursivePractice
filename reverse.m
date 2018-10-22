test='abcde'
reverse_string(test) %edcbaと表示される

function sol=reverse_string(string)
    
    %文字列stringの文字数が一つの時
    if (length(string)< 2)
        sol=string;
        return
    end

    %文字列stringから先頭の文字を消した文字列
    string_before=string;
    string_before(1)=[];
    
    %"文字列stringから先頭の文字を消した文字列"を反転する関数は，
    %自身のreverse_string関数であると仮定
    sol1=reverse_string(string_before)
    
    %sol1からsolを表現,strcatは文字列の結合する関数
    sol=strcat(sol1,string(1));
    return

end
