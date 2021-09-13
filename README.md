# Car Detection Using with MATLAB

This repo made for detection cars, trucks and motorcycles using with highway traffic cameras video examples.
It created for small systems, it has not need deep learning algorithms, machine learning methods or large traffic cameras video datasets.
I have run this project on my own computer. 1920x1080 resolution executed with good performance. Also, small resolution video files have executed
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



  
[![ezgif.com-gif-maker-885aa37d72d4e2846.md.gif](https://s9.gifyu.com/images/ezgif.com-gif-maker-885aa37d72d4e2846.md.gif)](https://gifyu.com/image/JCET)




## Demo 2


[![ezgif.com-gif-maker-795482c14893a2368.md.gif](https://s9.gifyu.com/images/ezgif.com-gif-maker-795482c14893a2368.md.gif)](https://gifyu.com/image/JCk3)



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





