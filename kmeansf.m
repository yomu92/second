function [Z,Z1]=kmeansf(M,k,km,sigma,m)
%{
cluster set of groth functions
input:
    M - set of groths functions represented as a matrix, every row is one
        fucntion
    k - number of cluster
    km - km=0 --> kmeans , km=1,2 --> maximum/eucl norm for spect clust
    sigma - sigma for sigma function (if spectral clustering is on)
    m - method for spectral clustering (1->L, 2->L_rw, 3->L_sym, 4->Mod, 5-> Mod)
%}

n=size(M,1);
tm=20;
X=zeros(2001,n);
for i=1:size(M,1)
    hi = @(t) M(i,1)./(1+exp(-M(i,2)*(t-M(i,3))));
    %t = 0:0.01:tm;
    %X(1:2001,i)=hi(t)';
    %a=M(i,1);
    %b=M(i,2);
    %c=M(i,3);

    %hi = @(t) a*b*exp(b*(c+t))./((exp(b*c)+exp(b*t)).^2);
    %hi = @(x) -(2*a*(b.^2)*exp(b*x + b*(c + x)))./(exp(b*c) + exp(b*x)).^3 + (a*b^2*exp(b*(c + x)))./(exp(b*c) + exp(b*x)).^2;
    t = 0:0.01:tm;
    X(:,i)=hi(t)';
    %X(:,i)=min(hi(t)',gi(t)');
end

%%%%%%%%%%%%%%%%%%%%%% kmeans
if km~=0
%Z=kmeans(X',k);
W=dis(X,km);
W=sigmaf(W,sigma);
if m<4
    [Z,Z1]=SpektKlaster(W, k, m);
else
    [Z,Z1]=ModularKlaster(W, k, m-3);
end
else
Z1=kmeans(X',k,'Replicates',150);
%,150,'Distance','cityblock'
Z=Z1;
end
