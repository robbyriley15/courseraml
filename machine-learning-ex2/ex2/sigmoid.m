function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

dim = size(z);

for i = 1:dim(1)
	for x = 1:dim(2)
		g(i, x) = 1 / (1 + exp(-z(i, x)));
	end
end




% =============================================================

end
