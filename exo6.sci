function [L,U]=mylu3b(A)
    n=size(A,1)
    for k=1:n-1
        for i=k+1:n
            m(i,k)=A(i,k)/A(k,k)
            b(i)=b(i)-m(i,k)*b(k)
        
        for j=k+1:n     
            A(i,j)=A(i,j)-m(i,k)*A(k,j);
            
    end
    end
end

//calcul de U par la fonction prédéfinie
U=triu(A)
//calcul de L par la fonction prédéfinie

L=tril(A)
   
endfunction

disp('L=',L)

disp('U=',U)
