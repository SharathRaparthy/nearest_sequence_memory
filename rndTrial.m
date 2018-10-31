function [s,LTM] = rndTrial(x)
for i=1:x
[s(i),LTM(:,:,i)]=rndEpisode ;
%o(i)=i;
end
%plot(o,s)