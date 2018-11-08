% Implementation of a function called rndEpisode. The rndEpisode generates a sequence
% of steps (observation, action and discounted reward values) that lead from a random starting
% state to the goal state. Actions are chosen at random.
% --------------------------------------------------------------------------------------------
% The rndEpisode function returns two values. The first value is the number of steps that
%  was needed to reach the goal state from the start state. The second value is a matrix
%  containing the last 20 rows of the episode matrix, describing the 20 steps leading
%  up to the goal state. The information about the preceding steps can be ignored.


function [steps_numof episode] = rndEpisode()

    STEPS_NUMOF_MAX = 20;
    
    % Loop until the goal state is reached
    episode = [];
    s = rndStartState();
    while s ~= 2
        o = observation(s);
        a = randi(4);
        episode = [episode; [o a 1]];
        s = transition(s,a);
    end
    [steps_numof ~] = size(episode);
    dfr = 10.0;
    for sidx=steps_numof:-1:1
        episode(sidx,3) = dfr;
        dfr = dfr * 0.9;
    end
    if steps_numof >= STEPS_NUMOF_MAX
        episode = episode([steps_numof-(STEPS_NUMOF_MAX-1):steps_numof],:);
    else
        zero_episode = zeros(STEPS_NUMOF_MAX-steps_numof,3);
        episode = [zero_episode; episode];
    end
end
