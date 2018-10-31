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