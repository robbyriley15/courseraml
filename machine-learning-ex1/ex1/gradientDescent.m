function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %


	j1 = 0;
	j2 = 0;
	for i = 1:m
		x1 = X(i, [1, 2]);
		j1 += ((x1(1) * theta(1) +  x1(2) * theta(2)) - y(i)) * x1(1);
	endfor
	
	for i = 1:m
		x1 = X(i, [1, 2]);
		j2 += ((x1(1) * theta(1) +  x1(2) * theta(2)) - y(i)) * x1(2);
	endfor
	
	j1 = (j1 * alpha) / m;
	j2 = (j2 * alpha) / m;
	theta(1) = theta(1) - j1;
	theta(2) = theta(2) - j2




    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
	disp(J_history(iter));

end

end
