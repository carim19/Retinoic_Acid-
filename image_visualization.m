% Authors: Ridwan Carim-Sanni & Iran Roman
% Data analysis for the Lu Chen Lab, SSRP 2016

% In this program, we will load the images located in /immuno_images/
% and we will understand the data structures in which they come.
% we will then proceed to visualize the images using standard matlab
% functions, and we will also carry out a simple process for 
% quantifying the cells in the image

% to start, we will load a single image 

% 1 . this is the location and name of the image
% we selected it, because it is the one that looks best to play with
filename = 'immuno_images/40-2_C001.tiff';

% now we will load the image, using filename
image = imread(filename);

% % NOTE: alternatively, we would have said:
% image = imread('immuno_images/40-2_C001.tiff');
% % but it is not necessary, because, we have a variable called filename

% 2. to continue, we will check the size of image to make sense
% of what we just loaded if u want matlab to spit something 
% out , dont add the ;
size(image)
% we see that the image has a width, a heigth, and a depth
% and if we want to store the size of the image in variables, we do
% the following:
[height, width, depth] = size(image);

% 3. we know the size of image, which is 1024 by 1024, by 3, 
% now we will try to visualize it using the function called imshow
imshow(image)

% If we only wanted to see the first channel, we would have to do:
figure;
imshow(image(:,:,1))
% If we only wanted to see the second channel, we would have to do:
figure;
imshow(image(:,:,2))
% If we only wanted to see the third channel, we would have to do:
figure;
imshow(image(:,:,3))

% 4. If we want to see the images plotted previously, comment out
% this line:
close all

% 5. We realize that only the second channel has data, therefore, we can
% make our image variable smaller, by picking only that channel
image_g = image(:,:,2);

% 2. to make sure that image_g is stored properly we can do a sanity 
% check by having it spit out the size of image_g.  we expect the size
% to be 1024 by 1024
size(image_g)

% 3.  let's have a look at image_g
imshow(image_g)

% 6. we have visualized what image and image_g have, but we hve not seen 
% the numeric data that we are getting. To observe the numeric data, we
% will print 100x100 matrices with information stored in image_g
sm_h_rng = 1:100;
sm_w_rng = 1:100;

imshow(image_g(sm_h_rng,sm_w_rng))

% 7. now, for the sake of seeing the numbers, we will print 10x10 matrices:
sm_h_rng = 1:10;
sm_w_rng = 1:10;
imshow(image_g(sm_h_rng,sm_w_rng))
image_g(sm_h_rng,sm_w_rng)
% imshow is too tiny when it is only 10x10 pixels, so we use:
resized_image = imresize(image_g(sm_h_rng,sm_w_rng),100);
imshow(resized_image,interpolation='none')

% Ok, at this point we have learned:
% 1. How to load the image
% 2. How to check the size of the array that contains the image
% 3. How to visualize the image in matlab, and its specific channels
% 4. How to close exixsting plots 
% 5. How to grab specific channel
% 6. How to pick a specific section withing the array 
% 7. How to compare the numerical contents of the array with its 
% visual representation using imshow 

