function mx = recursive_max(v)
    if length(v) == 1 
        m = v(1);
    else
        m = bigger(v(1),recursive_max(v(2:end)));
    end
end
function c = bigger(a,b)
    c = a;
    if a < b
        c = b;
    end
end
