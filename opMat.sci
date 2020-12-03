function [C] = matmat3b(A,B)
    M = size(A,1)
    N = size(B,2)
    P = size(B,1)
    
    C = zeros(M,N)
    
    for i=1:M
        for j=1:N
            for k=1:P
                C(i,j) = A(i,k) * B(k,j) + C(i,j)
            end
        end
    end
endfunction



function [C] = matmat2b(A,B)
    M = size(A,1)
    N = size(B,2)
    P = size(B,1)
    
    C = zeros(M,N)
    
    for i=1:M
        for j=1:N
          
                C(i,j) = A(i,:) * B(:,j) + C(i,j)
         
        end
    end
endfunction


function [C] = matmat1b(A,B)
    M = size(A,1)
    N = size(B,2)
    P = size(B,1)
    
    C = zeros(M,N)
    
    for i=1:M          
       
         C(i,:) = A(i,:) * B + C(i,:)
 
    end
endfunction
