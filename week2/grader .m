function pass = grader(f1,f2,varargin)
pass = false;
for ii = 1:length(varargin)
	if ~isequal(f1(varargin{ii}),f2(varargin{ii}))
		return;
	end
end
pass = true;
end
