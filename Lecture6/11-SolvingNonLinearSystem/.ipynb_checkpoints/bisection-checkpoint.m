function [x , fx] = bisection(f, a, b, tolx, tolf) 
  % Make sure conditions for bisection apply,
  % they have to include in the same directory
  % toolbox is a collection of things in a directory
  
  
  %notice that in python or R, we can just list function in our code.
  
  %the assert makes sure our critical assumptions right
  %always write assert and use them to inform us in finding bug
  assert(b > a);
  assert(f(a) < 0);
  assert(f(b) > 0); 
  
  % MATLAB's way of allowing default parameters: 
  assert(nargin >= 3)
  %nargin is the number the argument in the function, it's unique in matlab
  %not in other language
  %it's also useful to do this since we can set default level of tolx and
  %tolf here. It can be done in R and python in other way.
  
  if (nargin == 3)
      tolx = 1e-15; %This tolerance is to let program stop when bracket is small
      tolf = 1e-15; %This tolerance is to stop if it happens to compute a root
  end
  
  % Finally, the actual algorithm:
  fc = 1;
  while ((b - a) > tolx) && (abs(fc) > tolf)
      c = (a+b)/2;
      fc = f(c);
      if (fc < 0)
          a = c;
      else
          b = c;
      end
  end
  
  %Set return values
  x = c;
  fx = fc;
end
  