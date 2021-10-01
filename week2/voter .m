function database = voters(database,varargin)
    count = length(database);
    tmp = database;
    
    for ii = 1:2:length(varargin)
        if ischar(varargin{ii}) || isstring(varargin{ii})
            count = count + 1;
            tmp(count).Name = string(varargin{ii});
            if ii+1 <= length(varargin) && isnumeric(varargin{ii+1}) && round(varargin{ii+1}) == varargin{ii+1}
                tmp(count).ID = varargin{ii+1};
            else
                return;
            end
        else
            return;
        end
    end
    database = tmp;
end
