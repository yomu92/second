function B=sigmaf(A,sigma)
% sigma function for receiving similarities out of distances

n=size(A,1);
B=zeros(n,n);
for i=1:n
    for j=1:n
        B(i,j)=exp(-A(i,j)/(sigma^2));
    end
end
