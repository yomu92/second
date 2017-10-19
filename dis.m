function W=dis(X,d)
% d==10 maximum norm ,d==1 cityblock norm, d==2 eucl norm, d==3 cosine,d==4
% correlation

n=size(X,2);
W=zeros(n);
size(X,1);
if(d==10)

    for i=1:n
        for j=i+1:n

            y=abs(X(:,j)-X(:,i));
            W(i,j)=max(y);
            W(j,i)=W(i,j);
        end
    end
    
elseif(d==1)
     for i=1:n
        for j=i+1:n

            y=abs(X(:,j)-X(:,i));
            
            W(i,j)=sum(y);
            W(j,i)=W(i,j);
        end
    end   
    
elseif (d==2)
   for i=1:n
        for j=i+1:n
            y=X(:,i)-X(:,j);
            W(i,j)=sqrt((y')*(y));
            W(j,i)=W(i,j);
        end
   end
elseif(d==3)
    for i=1:n
        for j=i+1:n
            y=X(:,i);
            x=X(:,j);
            W(i,j)=1-(x')*y/sqrt(((y')*y)*((x')*x));
            W(j,i)=W(i,j);
        end
    end
else
    for i=1:n
        for j=i+1:n

            meani=ones(2001,1);
            meani=(1/n)*sum(X(:,i))*meani;
            meanj=ones(2001,1);
            meanj=(1/n)*sum(X(:,j))*meanj;
            
            x=X(:,i)-meani;
            y=X(:,j)-meanj;
            W(i,j)=1-(x')*y/sqrt(((y')*y)*((x')*x));
            W(j,i)=W(i,j);
        end
    end
end
    

