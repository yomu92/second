clear all
method=5;
sigma=3;
km=2;

var={10,50,100,150,250,300,500};


for v=1:7
    for k=2:10
        tic
        ARI=zeros(30,1);
        for n=1:30
           
                error=1;
                count=1;
                while error==1
                    try
                        readM=sprintf('Variance %d/k%d/synth%dMv%dn%d.xlsx',var{v},k,k,var{v},n);
                        M=xlsread(readM); 

                        [Z,Z1]=kmeansf(M,k,km,sigma,method);
                        tm=20;

                        a=zeros(k*10,1);

                         for i=1:k
                                a(1+10*(i-1):10*i,1)=i;
                         end

                           t=a;


                        ARI(n,1)=RandIndex(Z1,t);
                        error=0;
                    catch
                        if count<100
                            count=count+1;
                        else
                            disp('Error')
                            return
                        end
                    end
                end
                
                
            
        end
        ARI
        indexName=sprintf('SAVE/Variance %d/k%d/ARIk%dWv%dEuclSigm%dMod2.xlsx',var{v},k,k,var{v},sigma);
        xlswrite(indexName, ARI);
        toc
    end
end

clear all
method=5;
sigma=100;
km=2;

var={10,50,100,150,250,300,500};


for v=1:7
    for k=2:10
        tic
        ARI=zeros(30,1);
        for n=1:30
           
                error=1;
                count=1;
                while error==1
                    try
                        readM=sprintf('Variance %d/k%d/synth%dMv%dn%d.xlsx',var{v},k,k,var{v},n);
                        M=xlsread(readM); 

                        [Z,Z1]=kmeansf(M,k,km,sigma,method);
                        tm=20;

                        a=zeros(k*10,1);

                         for i=1:k
                                a(1+10*(i-1):10*i,1)=i;
                         end

                           t=a;


                        ARI(n,1)=RandIndex(Z1,t);
                        error=0;
                    catch
                        if count<100
                            count=count+1;
                        else
                            disp('Error')
                            return
                        end
                    end
                end
                
                
            
        end
        ARI
        indexName=sprintf('SAVE/Variance %d/k%d/ARIk%dWv%dEuclSigm%dMod2.xlsx',var{v},k,k,var{v},sigma);
        xlswrite(indexName, ARI);
        toc
    end
end


clear all
method=5;
sigma=10000;
km=2;

var={10,50,100,150,250,300,500};


for v=1:7
    for k=2:10
        tic
        ARI=zeros(30,1);
        for n=1:30
           
                error=1;
                count=1;
                while error==1
                    try
                        readM=sprintf('Variance %d/k%d/synth%dMv%dn%d.xlsx',var{v},k,k,var{v},n);
                        M=xlsread(readM); 

                        [Z,Z1]=kmeansf(M,k,km,sigma,method);
                        tm=20;

                        a=zeros(k*10,1);

                         for i=1:k
                                a(1+10*(i-1):10*i,1)=i;
                         end

                           t=a;


                        ARI(n,1)=RandIndex(Z1,t);
                        error=0;
                    catch
                        if count<100
                            count=count+1;
                        else
                            disp('Error')
                            return
                        end
                    end
                end
                
                
            
        end
        ARI
        indexName=sprintf('SAVE/Variance %d/k%d/ARIk%dWv%dEuclSigm%dMod2.xlsx',var{v},k,k,var{v},sigma);
        xlswrite(indexName, ARI);
        toc
    end
end



clear all
method=5;
sigma=100;
km=1;

var={10,50,100,150,250,300,500};


for v=1:7
    for k=2:10
        tic
        ARI=zeros(30,1);
        for n=1:30
           
                error=1;
                count=1;
                while error==1
                    try
                        readM=sprintf('Variance %d/k%d/synth%dMv%dn%d.xlsx',var{v},k,k,var{v},n);
                        M=xlsread(readM); 

                        [Z,Z1]=kmeansf(M,k,km,sigma,method);
                        tm=20;

                        a=zeros(k*10,1);

                         for i=1:k
                                a(1+10*(i-1):10*i,1)=i;
                         end

                           t=a;


                        ARI(n,1)=RandIndex(Z1,t);
                        error=0;
                    catch
                        if count<100
                            count=count+1;
                        else
                            disp('Error')
                            return
                        end
                    end
                end
                
                
            
        end
        ARI
        indexName=sprintf('SAVE/Variance %d/k%d/ARIk%dWv%dManhattanSigm%dMod2.xlsx',var{v},k,k,var{v},sigma);
        xlswrite(indexName, ARI);
        toc
    end
end


clear all
method=5;
sigma=10000;
km=1;

var={10,50,100,150,250,300,500};


for v=1:7
    for k=2:10
        tic
        ARI=zeros(30,1);
        for n=1:30
           
                error=1;
                count=1;
                while error==1
                    try
                        readM=sprintf('Variance %d/k%d/synth%dMv%dn%d.xlsx',var{v},k,k,var{v},n);
                        M=xlsread(readM); 

                        [Z,Z1]=kmeansf(M,k,km,sigma,method);
                        tm=20;

                        a=zeros(k*10,1);

                         for i=1:k
                                a(1+10*(i-1):10*i,1)=i;
                         end

                           t=a;


                        ARI(n,1)=RandIndex(Z1,t);
                        error=0;
                    catch
                        if count<100
                            count=count+1;
                        else
                            disp('Error')
                            return
                        end
                    end
                end
                
                
            
        end
        ARI
        indexName=sprintf('SAVE/Variance %d/k%d/ARIk%dWv%dManhattanSigm%dMod2.xlsx',var{v},k,k,var{v},sigma);
        xlswrite(indexName, ARI);
        toc
    end
end




clear all
method=5;
sigma=3;
km=10;

var={10,50,100,150,250,300,500};


for v=1:7
    for k=2:10
        tic
        ARI=zeros(30,1);
        for n=1:30
           
                error=1;
                count=1;
                while error==1
                    try
                        readM=sprintf('Variance %d/k%d/synth%dMv%dn%d.xlsx',var{v},k,k,var{v},n);
                        M=xlsread(readM); 

                        [Z,Z1]=kmeansf(M,k,km,sigma,method);
                        tm=20;

                        a=zeros(k*10,1);

                         for i=1:k
                                a(1+10*(i-1):10*i,1)=i;
                         end

                           t=a;


                        ARI(n,1)=RandIndex(Z1,t);
                        error=0;
                    catch
                        if count<100
                            count=count+1;
                        else
                            disp('Error')
                            return
                        end
                    end
                end
                
                
            
        end
        ARI
        indexName=sprintf('SAVE/Variance %d/k%d/ARIk%dWv%dMaxiSigm%dMod2.xlsx',var{v},k,k,var{v},sigma);
        xlswrite(indexName, ARI);
        toc
    end
end


clear all
method=5;
sigma=100;
km=10;

var={10,50,100,150,250,300,500};


for v=1:7
    for k=2:10
        tic
        ARI=zeros(30,1);
        for n=1:30
           
                error=1;
                count=1;
                while error==1
                    try
                        readM=sprintf('Variance %d/k%d/synth%dMv%dn%d.xlsx',var{v},k,k,var{v},n);
                        M=xlsread(readM); 

                        [Z,Z1]=kmeansf(M,k,km,sigma,method);
                        tm=20;

                        a=zeros(k*10,1);

                         for i=1:k
                                a(1+10*(i-1):10*i,1)=i;
                         end

                           t=a;


                        ARI(n,1)=RandIndex(Z1,t);
                        error=0;
                    catch
                        if count<100
                            count=count+1;
                        else
                            disp('Error')
                            return
                        end
                    end
                end
                
                
            
        end
        ARI
        indexName=sprintf('SAVE/Variance %d/k%d/ARIk%dWv%dMaxiSigm%dMod2.xlsx',var{v},k,k,var{v},sigma);
        xlswrite(indexName, ARI);
        toc
    end
end


clear all
method=5;
sigma=1;
km=10;

var={10,50,100,150,250,300,500};


for v=1:7
    for k=2:10
        tic
        ARI=zeros(30,1);
        for n=1:30
           
                error=1;
                count=1;
                while error==1
                    try
                        readM=sprintf('Variance %d/k%d/synth%dMv%dn%d.xlsx',var{v},k,k,var{v},n);
                        M=xlsread(readM); 

                        [Z,Z1]=kmeansf(M,k,km,sigma,method);
                        tm=20;

                        a=zeros(k*10,1);

                         for i=1:k
                                a(1+10*(i-1):10*i,1)=i;
                         end

                           t=a;


                        ARI(n,1)=RandIndex(Z1,t);
                        error=0;
                    catch
                        if count<100
                            count=count+1;
                        else
                            disp('Error')
                            return
                        end
                    end
                end
                
                
            
        end
        ARI
        indexName=sprintf('SAVE/Variance %d/k%d/ARIk%dWv%dMaxiSigm%dMod2.xlsx',var{v},k,k,var{v},sigma);
        xlswrite(indexName, ARI);
        toc
    end
end
