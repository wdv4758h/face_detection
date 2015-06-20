========================================
Face Detection
========================================

only detect, no recognition here

Build & Run
========================================

.. code-block:: sh

    $ git clone https://github.com/wdv4758h/face_detection.git
    $ cd face_detection
    $ make opencv2_sample   # build
    $ cd src/opencv2/       # need the cascade data in this folder ...
    $ ../../bin/opencv2_objectDetection     # run


Viola–Jones object detection framework
========================================

a real-time object detection proposed in 2001 by Paul Viola and Michael Jones

OpenCV
------------------------------

* opencv_haartraining : old, Haar only
* opencv_traincascade : new, OpenCV 2.x API, both Haar and LBP

(Haar features use float point number, LBP features use integer, so using LBP is much faster than Haar)


Reference
========================================

* `Wikipedia - Viola–Jones object detection framework <https://en.wikipedia.org/wiki/Viola%E2%80%93Jones_object_detection_framework>`_
