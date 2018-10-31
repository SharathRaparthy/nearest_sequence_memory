function s = transition(x,y,a)
%x=state,y=action input
%A=[7 8 9 10 11 ; 
%    4 0 5 0 6;
 %   1 0 2 0 3];

%first find x in a
for i = 1:3
    for j = 1:5
    if x==a(i,j)
        m = i;
        n = j;
    end
    end 
end
if y == 1 && m > 1 % according to action the row or column number shall increase or decrese
    m = m-1;        %also m >1 so that index of matrix doesn't get out of bounds .
elseif y == 3 && m < 3
    m = m+1;
elseif y == 2 && n < 5
    n = n+1;
elseif y == 4 && n >1
    n = n-1;
end
%feed new m or n into s the output of function
    s = a(m,n);
if s == 0 % s =0 means this state is not achievable or there is no such state 
    s = x;% hence the output is the input state itself
end

end