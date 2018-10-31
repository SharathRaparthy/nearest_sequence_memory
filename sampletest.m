

% A=[7 8 9 10 11 ; 
%     4 0 5 0 6;
%     1 0 2 0 3];
%   p=transition(7,1);
%   q=observation(7);
%   y=[1 3 4 5 6 7 8 9 10 11];
%   for i=1:50
%   r(i)=y(floor((10-0).*rand(1) + 1));
% 
%    o(i)=i; 
%    end

%plot(o,r)
%n=rndStartState;

%[s,t]=rndEpisode;

%o(i)=i;
%[p,LTM]=rndTrial(100);
%plot(rndTrial(100))
%[p,e]=rndEpisode;%get a random episode
%f=observation(rndStartState)%a random observation value
%[l,m]=Proximity(LTM,15,1,e,f);
%size(LTM);
%c=KNearest(LTM,e,f)
%for i=1:10
% [p,LTM]=rndTrial(100);
% [p,STM]=rndEpisode;
% q=observation(rndStartState);
% m=NSMSelectAction(LTM,STM,q)
% [s,t] = NSMEpisode(LTM)
%e(i)=i;
%end
%plot(e,m)
plot(NSMTrial(100));
