function F = exp_fourier(t, T_o, f, N)
%
%-- F = exp_fourier(t, T_o, f, N)
%
% this function will return a array of same domain as f which is the exponential fourier series of f from -N to N.
% - t is the time domain array
% - T_o is the period of the function
% - f is the function
% - N is the 

	F = 0;
	w_o = 2*pi/T_o;

	for n = -N:N
		% Generate the part of the fourier series at n
		g = D_n(t, T_o, f, n).*exp(j.*n.*w_o.*t);
		F = F+g;
	end

end
