function V = vander(data)
    n = length(data);
    V = zeros(n,n);
    for i=1:n
        V(:,i) = data(:).^(n-i);
    end
endfunction