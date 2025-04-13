function [y] = musical_notes()
    f_samp = 8000;  % Sampling rate provided in HW 5 (Hz)
    duration = 2; % Time length given in problem statement (2 sec)
    time = linspace(0, duration, f_samp * duration)'; % Creating time vector
    
    f_start = 440; % Initial frequency considered as first term of log AP
    ratio = 10^(log10(2)/11); % Common ratio for geometric progression
    f_end = 440*ratio^11;
    % Compute 12 frequencies
    frequencies = f_start * ratio.^((0:11)');
    
    % Generate sinusoidal waves for each frequency and concatenate
    y = []; % Initialize empty column vector
    for idx = 1:length(frequencies)
        y = [y; sin(2 * pi * frequencies(idx) * time)];
    end
end
