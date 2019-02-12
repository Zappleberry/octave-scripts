function R = reimann(t, f, index_a, index_b)
%-- R = reimann(t, f, index_a, index_b)
%
% Takes a function and it's domain to integrate from index_a to index_b using trapezoidal Reimann sums.
% Trapezoid area is defined as A = f(t)*dt + 0.5*df*dt.
% This will give a accurate area regardless of function, change in function, or change in time being positive or negative.
%
% A way to find your indexes if it is a subinterval of t is to use find(t-T<tolerance)(1)
% Where t is the time domain, T is the target time, and tolerance is the accuracy desired.
% This method does not work if t does not contain all unique numbers.
% Alternatively it can be done with
% [dummy, index] = min(abs(t-T))
% this has the fault of not returning all indexes that match, although this is not a issue for most time domains.

	dt = t(index_a+1:index_b)-t(index_a:index_b-1);
	df = f(index_a+1:index_b)-f(index_a:index_b-1);
	A = f(index_a:index_b-1).*dt +0.5.*df.*dt;
	R = sum(A);

	% Alternative use. Doesn't work as well or as quickly.

	%R = 0;

	%for n = index_a:1:index_b-1

	%	% Define the difference in t and f in the segment.
	%	dt = t(n+1)-t(n);
	%	df = f(n+1)-f(n);

	%	% define the area of the trapezoidal segment in the interval.
	%	% This function should give a accurate area of the segment for all functions using numbers in ℂ.
	%	A = f(n)*dt + 0.5*df*dt;

	%	R = R+A;

	%end

end
