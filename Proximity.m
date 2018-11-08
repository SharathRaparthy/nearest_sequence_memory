% Implementation of a function called proximity. The proximity function counts how many
% steps are similar between the current short-term memory (STM) episode and an arbitrary step
% in a given LTM matrix.


function [p step] = Proximity(LTM, ltm_eidx, ltm_sidx, STM, o)
    p = 0;
    step = [0 0 0];
    if LTM(ltm_sidx,1,ltm_eidx)==o
        step = LTM(ltm_sidx,:,ltm_eidx);
        p = 1;
        ltm_sidx = ltm_sidx-1;
        [stm_sidx, ~] = size(STM);
        while ltm_sidx>0 && stm_sidx>0 ...
                && LTM(ltm_sidx,1,ltm_eidx)==STM(stm_sidx,1) ...
                && LTM(ltm_sidx,2,ltm_eidx)==STM(stm_sidx,2)
            p = p+1;
            ltm_sidx = ltm_sidx-1;
            stm_sidx = stm_sidx-1;
        end
    end
end
