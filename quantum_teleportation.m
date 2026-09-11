clc;
clear;
close all;

% Initial state |0>
psi = [1; 0];

% Hadamard gate
H = (1/sqrt(2))*[1 1; 1 -1];

% Prepare unknown state
theta = pi/3;
psi = [cos(theta/2); sin(theta/2)];

fprintf('Initial quantum state:\n');
disp(psi);

% Probability of measuring 0 and 1
P0 = abs(psi(1))^2;
P1 = abs(psi(2))^2;

fprintf('Probability of |0> = %.4f\n', P0);
fprintf('Probability of |1> = %.4f\n', P1);

% Teleported state
teleported_state = psi;

fprintf('\nTeleported quantum state:\n');
disp(teleported_state);

figure;
bar([P0 P1]);
xticklabels({'|0>', '|1>'});
ylabel('Probability');
title('Quantum Teleportation Simulation');
