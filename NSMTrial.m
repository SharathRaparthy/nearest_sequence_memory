function [s,LTM] = NSMTrial(x)
%[o,LTM] = rndTrial(100);
LTM=[];
s=[];
for i=1:x
[s(i),LTM(:,:,i)]=NSMEpisode(LTM) ;
i
%o(i)=i;
end
%plot(o,s)