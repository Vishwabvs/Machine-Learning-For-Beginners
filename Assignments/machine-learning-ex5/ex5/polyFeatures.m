function [X_poly] = polyFeatures(X, p)
%POLYFEATURES Maps X (1D vector) into the p-th power
%   [X_poly] = POLYFEATURES(X, p) takes a data matrix X (size m x 1) and
%   maps each example into its polynomial features where
%   X_poly(i, :) = [X(i) X(i).^2 X(i).^3 ...  X(i).^p];
%


% You need to return the following variables correctly.
X_poly = zeros(numel(X), p);

% ====================== YOUR CODE HERE ======================
% Instructions: Given a vector X, return a matrix X_poly where the p-th 
%               column of X contains the values of X to the p-th power.
%
% 
%size(X)
%w=X(1,:)
temp1=zeros(1,p);
m =size(X,1);
temp=zeros(1,p);
for i=1:m
  for j=1:p
    temp(:,j)= X(i,:).^j;
  end
  temp1= [temp1;temp];
end
X_poly=temp1(2:end,:);

%size(X_poly)




% =========================================================================

end
