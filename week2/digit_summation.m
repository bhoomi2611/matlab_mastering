function r = digit_sum(n)
    if n < 10
        r = n;
    else
        r = digit_sum(floor(n/10)) + rem(n,10);
    end
end
