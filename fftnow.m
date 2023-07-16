function y = fftnow(x)
    % Compute the FFT of a vector x of length N = 2^p, where p is an integer.
    
    N = length(x);
    p = log2(N);
    
    % Check that N is a power of 2.
    if 2^p ~= N
        error('Input vector length must be a power of 2.');
    end
    
    % Computing the FFT recursively.
    if N == 1
        y = x;
    else
        % Split x into even and odd parts.
        xe = x(1:2:end);
        xo = x(2:2:end);

        ye = fftnow(xe);
        yo = fftnow(xo);
        
        % Combine the results.
        k = 0:N-1;
        twiddle = exp(-2i*pi*k/N);
        y = [ye + twiddle(1:N/2).*yo, ye + twiddle(N/2+1:N).*yo];
    end
end
