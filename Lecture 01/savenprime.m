function savenprime(n)
    rArray = findnprime(n);
    strFileName = ['prime', num2str(n), '.mat'];
    save(strFileName, 'rArray');
end