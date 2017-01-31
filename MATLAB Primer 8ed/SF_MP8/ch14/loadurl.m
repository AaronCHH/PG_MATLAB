function result = loadurl(url)
% result = loadurl(url)
% Reads the URL given by the input
% string, url, into a temporary file
% using myread.java, loads it into a
% MATLAB variable, and returns the
% result. The URL can contain a MATLAB-
% readable text file, or a MAT-file.
t = tempname ;
myreader.geturl(url, t) ;
try
    result = load(t) ;
catch
    try
        result = load('-mat', t) ;
    catch
        result = [ ] ;
    end
end
if (exist(t, 'file'))
    delete(t) ;
end
