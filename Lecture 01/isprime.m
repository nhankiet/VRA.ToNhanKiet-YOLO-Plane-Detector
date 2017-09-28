function m = isprime(n)
    count = 0;
    for i=1:n
        if(mod(n,i)==0)
            count = count + 1;
        end
    end
    m = (count==2);
end