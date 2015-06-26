CXX = clang++
CXXFLAGS = -std=c++14 -pedantic-errors -Wall -Ofast -march=native -pipe -flto
LIBRARIES = opencv_core opencv_imgproc opencv_objdetect opencv_highgui
LDFLAGS = -s $(foreach library, $(LIBRARIES), -l$(library))

opencv2_sample: bin_dir
	$(CXX) $(CXXFLAGS) $(LDFLAGS) src/opencv2/objectDetection.cpp -o bin/opencv2_objectDetection
	$(CXX) $(CXXFLAGS) $(LDFLAGS) src/opencv2/objectDetection2.cpp -o bin/opencv2_objectDetection2

rpi: bin_dir
	$(CXX) $(CXXFLAGS) $(LDFLAGS) src/modify/objectDetection_rpi.cpp -o bin/modify_objectDetection_rpi

bin_dir:
	mkdir -p bin
