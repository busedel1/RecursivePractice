test='abcde'
reverse_string(test) %edcba�ƕ\�������

function sol=reverse_string(string)
    
    %������string�̕���������̎�
    if (length(string)< 2)
        sol=string;
        return
    end

    %������string����擪�̕�����������������
    string_before=string;
    string_before(1)=[];
    
    %"������string����擪�̕�����������������"�𔽓]����֐��́C
    %���g��reverse_string�֐��ł���Ɖ���
    sol1=reverse_string(string_before)
    
    %sol1����sol��\��,strcat�͕�����̌�������֐�
    sol=strcat(sol1,string(1));
    return

end
