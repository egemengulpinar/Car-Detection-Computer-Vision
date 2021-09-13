% Hakkı Egemen Gülpınar  /  Seher Bengisu Akbulut
% Mersin University Department of Computer Engineering
Video = VideoReader('videoplayback_short.mp4');
Object_Detector = vision.ForegroundDetector(...
       'NumTrainingFrames', 7, ... 
       'InitialVariance', 30*30)


for i = 1:25
frame = readFrame(Video);
Object = step(Object_Detector, frame);
end
%Show our Model
figure; imshow(frame); title('Video Frame');
figure; imshow(Object); title('The Object'); 
%Morphological Operation to Remove Noise
Structure = strel('square', 3);
Noise_Free_Object = imopen(Object, Structure);
figure; imshow(Noise_Free_Object); title('Object After Removing Noise');
%Locate the Object
Bounding_Box = vision.BlobAnalysis('CentroidOutputPort', false, 'AreaOutputPort', false, ...
       'BoundingBoxOutputPort', true, ...
       'MinimumBlobAreaSource', 'Property', 'MinimumBlobArea', 1400);
%Inserting the Box 
The_Box = step(Bounding_Box, Noise_Free_Object);
% Drawing the Rectangle
Detected_Vehicle = insertShape(frame, 'Rectangle', The_Box, 'Color', 'yellow');
% Counting Vehicles
Number_of_Vehicle = size(The_Box, 1);
%Inserting Text Operations 
Detected_Vehicle = insertText(Detected_Vehicle, [10 10], Number_of_Vehicle, 'BoxOpacity', 1,'FontSize', 14);
figure; imshow(Detected_Vehicle); title('Detected Vehicles');
videoPlayer = vision.VideoPlayer('Name', 'Detected Vehicles');
videoPlayer.Position(3:4) = [650,400];
%Video Sequence
while hasFrame(Video)
frame = readFrame(Video); 
Object = step(Object_Detector, frame);
Noise_Free_Object = imopen(Object, Structure);
The_Box = step(Bounding_Box, Noise_Free_Object);
% Detected_Vehicle = insertShape(frame, 'Rectangle', The_Box, 'Color', 'yellow');
shapeInserter = vision.ShapeInserter('BorderColor','custom');
Detected_Vehicle = shapeInserter(frame,The_Box);
Number_of_Vehicle = size(The_Box, 1);
Detected_Vehicle = insertText(Detected_Vehicle, [10 10], Number_of_Vehicle, 'BoxOpacity', 1, 'FontSize', 14);
step(videoPlayer, Detected_Vehicle);
pause(0.06)
end
% Hakkı Egemen Gülpınar  /  Seher Bengisu Akbulut
% Mersin University Department of Computer Engineering