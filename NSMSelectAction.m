function action = NSMSelectAction(LTM, STM, o)

    EPSILON = 0.1;

    if rand()<EPSILON
        action = randi([1,4]);
    else
        action_means = zeros(4,1);
        action_counts = zeros(4,1);

        nearest_steps = KNearest(LTM, STM, o);
        [nearest_steps_numof, ~] = size(nearest_steps);
        for sidx = 1:nearest_steps_numof
            step = nearest_steps(sidx,:);
            action = step(2);
            action_means(action) = action_means(action)*action_counts(action);
            action_means(action) = action_means(action)+step(3);
            action_counts(action) = action_counts(action)+1;
            action_means(action) = action_means(action)/action_counts(action);
        end
        max_mean = max(action_means);
        actions = find(action_means==max_mean);
        action = actions(randi([1,length(actions)]));
    end
end
