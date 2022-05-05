function [fval fjac] = cournot(q)
% This function calculates the function value and the derivatives
% for the cournot competition model
    % Set parameters:
    c = [0.6; 0.8];
    eta = 1.6;
    e = -1/eta; %For readability

    %Evaluate function: 
    %This is just the first order condition
    fval = sum(q)^e + e*sum(q)^(e-1)*q - diag(c)*q;

    %Evaluate Jacobian: 
    %this is just jacobian
    %before doing Newton, always check whether we get Jacobian is correct.
    fjac = e*sum(q)^(e-1)*ones(2,2) + ...
           e*sum(q)^(e-1)*eye(2) + ...
           (e-1)*e*sum(q)^(e-2)*q*[1 1] - diag(c);
end