function [ dx, dy ] = findPartialDerivative(im)

%dxKernel = [-1, 0 1; -1, 0 1; -1, 0 1];
%dyKernel = [1, 1, 1; 0,0,0; -1, -1, -1];

dxKernel = [-1, 0 1]; 
dyKernel = [-1; 0; 1];

gauss = fspecial('gaussian', [3, 3], .5);
r = conv2(double(t), double([1 , -1]), 'same')


dx = conv2(double(im),double(dxKernel), 'same');

dy = conv2(double(im),double(dyKernel), 'same');

end

