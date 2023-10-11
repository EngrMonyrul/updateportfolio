import 'package:flutter/material.dart';

class HomePageProvider extends ChangeNotifier {
  int _pageIndex = 0;
  int _sliderIndex = 0;
  int _hovered = -1;
  int _priceHovered = -1;
  int _salaryHoverd = -1;
  int _reivewHovered = -1;
  int _workedHovered = -1;
  bool _showCButtons = false;

  int get pageIndex => _pageIndex;
  int get sliderIndex => _sliderIndex;
  int get hovered => _hovered;
  int get priceHoverd => _priceHovered;
  int get salaryHovered => _salaryHoverd;
  int get reviewHovered => _reivewHovered;
  int get workedHovered => _workedHovered;
  bool get showCButtons => _showCButtons;

  setShowCButtons(){
    _showCButtons = !_showCButtons;
    notifyListeners();
  }

  setWorkedHover(index){
    _workedHovered = index;
    notifyListeners();
  }

  setReviewHovered(index){
    _reivewHovered = index;
    notifyListeners();
  }

  setSalaryHovered(int index){
    _salaryHoverd = index;
    notifyListeners();
  }

  setPriceHovered(int index){
    _priceHovered = index;
    notifyListeners();
  }

  setPageIndex(int index) {
    _pageIndex = index;
    notifyListeners();
  }

  setSliderIndex(int index) {
    _sliderIndex = index;
    notifyListeners();
  }

  setHovered(value){
    _hovered = value;
    notifyListeners();
  }
}
