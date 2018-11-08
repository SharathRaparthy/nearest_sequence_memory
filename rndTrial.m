% Implementation of a function named rndTrial.
% -------------------------------------------------------------------------------
%This function  creates a 3D matrix called LTM (long term memory) made up
%of random episodes produced by calling the rndEpisode function that is implemented,
%so that the expression LTM(:,:,3); would return the third 20x3 matrix produced by the
%third call to the rndEpisode function. The rndTrial function takes the number of
%episodes to be added to LTM as an argument.
% --------------------------------------------------------------------------------
%The rndTrial function returns a vector with two values. The first value
%will be another vector containing the number of steps used by each of the
%episodes. The second value will be the LTM.

function [s,LTM] = rndTrial(x)
for i=1:x
[s(i),LTM(:,:,i)]=rndEpisode ;
%o(i)=i;
end
%plot(o,s)
