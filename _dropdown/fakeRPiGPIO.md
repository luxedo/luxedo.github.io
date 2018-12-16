---
layout: page
title: fakeRPiGPIO
description: Fake RPi.GPIO module for testing
tags: ["rpi", "gpio", "raspberry-pi", "fake", "python", "python-library"]
dropdown: Open Source
order: 3
---
<!-- Automatically generated. Run search_repos.rb to rebuild -->



This package is used to simulate the [RPi.GPIO](https://pypi.python.org/pypi/RPi.GPIO) module.
This package only contains the functions in the RPi.GPIO package without the functionality. Useful to debug code outside the RPi.
To avoid printing the callings to the package, set `VERBOSE` to `False`:
```python
from RPi import GPIO
GPIO.VERBOSE = False
more_code()
```

---
Check out the [repo](https://github.com/luxedo/fakeRPiGPIO)
