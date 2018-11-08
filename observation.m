% Implement a function called observation that takes a state as a parameter and returns the observation value
function o = observation(state)
% Returns the observation related to the given state
    switch state
        case {1 2 3}
            o = 14;
        case {4 5 6}
            o = 10;
        case 7
            o = 9;
        case {8 10}
            o = 5;
        case 9
            o = 1;
        case 11
            o = 3;
    end
end
