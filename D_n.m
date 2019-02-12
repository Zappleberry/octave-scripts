function D = D_n(t, T_o, f, n)
% D = D_n(t, T_o, f, n)
% This function accepts two arrays, t and f, in which f is the function, t is the domain of the function, and two constants, T_o and n, T_o is the period and n is the number of the term.
% The output, D, is the exponential fourier coefficient.
%
% Vetted against sin(t) with interval 2pi.

	% Alternative method of finding the start and the end, removed as the below workes better in matlab and is more general.
	% starti = find(abs(t)<0.01)(1);
	% endi = find(abs(t-T_o)<0.01)(1);

	% Find the start and end of the periodic function
	[dummy, starti] = min(abs(t));
	[dummy, endi] = min(abs(t-T_o));
	
	% Remove the dummy variable to temporarily store the 
	clear dummy;

	% define omega not
	w_o = 2.*pi./T_o;

	% integrand to integrate by definition of D_n
	integrand = f.*exp(-j.*n.*w_o.*t);

	% Estimate the integral with a trapezoidal reimann sum.
	D = (1/T_o).*reimann(t, integrand, starti(1), endi(1));
	
end
