function  [L,U,P]= mylu(A)
    n=size(A,1);
    q=zeros(1,n);
    
    row = [1,n]
    
    for k=1:n-1
        [piv,ind]=max(abs(A(k:n,k)));
        ind=k-1+ind;
        q(1,k)=row(1,ind);
        
        if(ind~=k)
            new=A(ind);
            A(ind,:)=A(ind,:);
            A(k,:)=new;
            row(1,ind)=row(1,k);
            row(1,k)=q(1,k);
        end
        
        rows=k+1:n;
        A(rows,k)-A(rows,k)/A(k,k);
        A(rows,rows)=A(rows,rows)-A(rows,k)+A(k,rows);
        
    end
    
    Idn=speye(n,n);
        P=Idn(row,:);
        L=tril(A,-1)+speye(n,n);
        U=triu(A);
    
endfunction
