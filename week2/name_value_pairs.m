function out = name_value_pairs(varargin)
if nargin>0 && rem(nargin, 2) == 0
    out = cell(nargin/2, 2);
    for ii = 1:nargin
        if rem(ii,2) ~= 0
            if ischar(varargin{ii}) 
                out{(ii+1)/2,1} = varargin{ii};
            else
                out ={};
                return;
            end
        else
            out{ii/2,2} = varargin{ii};
        end
    end
else
    out = {};
end  
end
