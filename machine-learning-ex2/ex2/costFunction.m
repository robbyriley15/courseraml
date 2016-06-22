function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%
thetaT = transpose(theta);

for i = 1:m
	sig = sigmoid((X(i, :) * theta));
	J += (((-(y(i)) * log((sig)))) - ((1-y(i)) * log(1 - sig)));
end

J = J / (m);

for i = 1:m
	for x = 1:size(X)(2)
		sig = sigmoid((X(i, :) * theta));
		sig = sig - y(i);
		gradt = sig * (X(i,x));
		grad(x) += gradt;
	end
end

grad = grad / m;





% =============================================================

end