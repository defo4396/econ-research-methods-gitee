%% An Introduction to Matlab
% 2020-11-25
% 
% Zhiyuan Chen
% 
% Department of Trade Economics
% 
% Renmin Business School
% An overview
% % 
% MATLAB (MATrix LABoratory) is a very popular software in engeering, economics, 
% finance and many areas. It is MATLAB is a software package for high-performance 
% numerical computation and visualization. It provides an interactive environment 
% with hundreds of built-in functions for technical computation, graphics, and 
% animation. Best of all, it also provides easy extensibility with its own high-level 
% programming language.
% 
% You are referred to Chapter 1 in Pratap (2010) for basics of MATLAB. 
% The Basics
%% 
% * The Basics
% * Lauching MATLAB and do simple calculations
% * Create and work with arrays, vectors, and matrices
% * Plot graphs
% * Write and execute a script-file, use of 
% * Write and execute a function-file


%%  Simple Calculations
clear all

1+1
%%
x = 2 + 2
%%
y = 2^2 + log(pi)*sin(x)
%%
format short e
y
%%
format long
y

%% Arrays

x = [1 2 3] % row vector
%%
y = [2; 3 ;4]
z = [2 2 0];
a = x + z
%%
b = x + y  % element-wise addition if dimensions not agreed
%%
a = x.*z % elment-wise product
%%
b = 2*a
%%
%create a vector with evenly distributed elements
x = linspace(0, 1, 10)
%%
x1 = 0:0.1:1

%% Matrix 
X = [1, 2, 3; 4, 5, 6]
Y = magic(4)
I = eye(3) %identity matrix
X'  %transpose

Z = [1 0 2; -1 5 0; 0 3 -9]
invZ = inv(Z)

% Creating and Printing Simple Plots

%plots of unit radius
theta = linspace(0, 2*pi, 100);
x = cos(theta);
y = sin(theta);
plot(x, y)
axis('equal') % set the length scales of the two axes be the same
xlabel('x')
ylabel('y')
title('Circle of unit radius')

%%
%plots for multiple variables
plot(theta, x, theta, y)
xlabel('\theta')
ylabel('sin(\theta)/cos(\theta)')
title('Sin(x) and Cos(x)')
legend('cosine', 'sine')
% write your own m.file and execute it



%% Executing a function
circlefn(1);

circlefn(1) % produces results of [x, y]
