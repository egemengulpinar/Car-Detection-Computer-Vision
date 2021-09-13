# Car Detection Using with MATLAB

This repo made for detection cars, trucks and motorcycles using with highway traffic cameras video examples.
It created for small systems, it has not need deep learning algorithms, machine learning methods or large traffic cameras video datasets.
I have run this project on my own computer. 1920x1080 resolution executed with good performance. Also, small video files have executed
more effective and fast. 

*Car Detection using With MATLAB has not reach to %100 accuracy. But it performs good performance on small systems and executed with quick debug and process time.*

*Note: I have prepared  **explanation video** to understanding easly of my project
https://drive.google.com/file/d/1oL9pCEocH4AmkcmUrowI9Hj5db62OXwk/view?usp=sharing*

*Note: I have prepared  **paper** with my teammate, you can reach it with below the link
https://drive.google.com/file/d/1qcnQ4bXVvOcKbETRIP9dAdW0x_BFyJR5/view?usp=sharing*

## Created for Whose?
- Created for who have **small system**
- Created for who wants to **quick and fast process time** on detection system.
- Created for who needs **average** accuracy and count number



## Demo



  
![Alt Text](https://media.giphy.com/media/9q7hQNisW4yczgttiv/giphy.gif?cid=790b7611b04b0d70893d1223546a3be6ccc901999d599963&rid=giphy.gif&ct=g)




## Demo 2


![Alt Text](https://media.giphy.com/media/E7o6zd0v8PJe5xBZ0p/giphy-downsized.gif?cid=790b7611340b2c3319066ce8d51527a30b6e6ec3649f9a45&rid=giphy-downsized.gif&ct=g)




## Screenshots


![Alt Text](https://www.linkpicture.com/q/ss_1_1.jpg)


![Alt Text](https://www.linkpicture.com/q/ss_2_1.jpg)


![Alt Text](https://www.linkpicture.com/q/ss_3_1.jpg)






## Using & Run 



Clone the project

```bash
  git clone https://github.com/egemengulpinar/Car-Detection-Computer-Vision.git
```



Open `MATLAB` for `CarDetectionProject.m` import all project files.

It can be executed using with ***videoplayback_short.mp4*** or ***car2.mp4*** files. (You can use another *stable* traffic camera video)
```bash
Video = VideoReader('videoplayback_short.mp4');
```
or
```bash
Video = VideoReader('car2.mp4');
```

## Important Notes

This project must to optimize for input video. There is few notes below. This project who used, it should be change
**`vision.ForegroundDetector`** and  **`vision.BlobAnalysis`** parameters.

- In MATLAB function **`vision.ForegroundDetector`** detects foreground using Gaussian Mixture Models.

- Then,  Morphological Operation **` strel('square',3)`** executed to Remove Noises.

- Locating the object with **`vision.BlobAnalysis`**





