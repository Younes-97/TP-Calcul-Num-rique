
//n = 100;
data = [10:10:100]
for n = data
i=n/10

A=rand(n,n);
B=rand(n,n);

tic();


C3B= matmat3b(A,B);



times1(i) = toc()


tic();

C2B= matmat2b(A,B);


times2(i) = toc()

tic();

C1B= matmat1b(A,B);


times3(i) = toc()

tic();

Cnorm=A*B;


times4(i) = toc()

end

subplot(2,2,1),plot(data,times1,"r"),subplot(2,2,2),plot(data,times2,"b"),subplot(2,2,3),plot(data,times3,"g"),subplot(2,2,4),plot(data,times4,"black");



