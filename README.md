# Consumabot
# Source code for the manuscript "A Distributed Deep Learning Approach for Tracking Medical Consumable Materials on Intensive Care Units with Convolutional Neural Networks"

Millions of medical consumables (like syringes, sterile swabs, one-way material, fluid supplements) are used in hospitals every day. Although these materials are suprisingly expensive, it is amost impossible to keep track of them. Most of them do not have a barcode or RFID on them, even if they have, using a barcode scanner in the medical environment is certainly not an ideal solution.

Consumabot is a low-cost solution for this problem, using common computing platforms and open-source software/hardware. It runs on Raspberry Pi, equipped with a standard camera and a 32 GB SD memory card. It recognizes the acquired image via a Neural Network, implemented on TensorFlow.

Use Consumabot for the following purposes:
- Keep track of consumables or other materials (e.g. recognize how much material you need for which patient)
- Get exact timings for the use of medical material within patients (no more documentation delay, extremely useful for retrospective analysis of vitals)
- Quality assurance and training

If you have any questions or comments, please let me know!

Arne Peine

Attributions: This software is part of my Master's Thesis for the Master of Health Business Administration

# Step 1: The hardware setup
Get the required hardware:
- Raspberry Pi 3 B+
- Raspberry Pi 7" Touchscreen 
- Raspberry Pi Official 8MP camera
- Flatband camera connector cable
- Display Case - Black
- 32GB SD card

# Step 2: Install Raspbian
You can install Raspbian by copying the official image of Raspbian (http://raspberrypi.org)
- Download Etcher (https://etcher.io/) and install it.
- Connect an SD card reader with the SD card inside.
- Open Etcher and select the Raspberry Pi .img or .zip file you wish to write.
- Review your selections and click 'Flash!'

# Step 3: Install requirements
Raspbian comes with a preinstalled Python 3.4, so there is no need to install that. If you are using an alternative distribution, you might need to do that.

Now install pip

```sh
$ pip3 -V # for Python 3.n
$ pip -V  # for Python 2.7
```

Atlas is a math library and also required for Tensorflow

```sh
$ sudo apt install libatlas-base-dev
```

Installing tensorflow is now much easier, because it comes precompiled for Raspberry Pi!

```sh
$ pip3 install tensorflow     # Python 3.n
$ pip install tensorflow # Python 2.7
```

Now verify your installation like that: Open python from your shell as follows:
```sh
$ python
```

Type the following program inside the opened Python shell

```sh

# Python
import tensorflow as tf
hello = tf.constant('Hello, ConsumaBot!')
sess = tf.Session()
print(sess.run(hello))
```

> If the system answers you "Hello, ConsumaBot" your installation is correct.

# Step 4: Clone the repository with git

```sh

$ git clone https://github.com/arnepeine/consumabot.git
```

# Attributions


License
----

Copyright 2018, Arne Peine

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

Tensorflow is released under the Apache 2.0 license
Parts of the software are based on the official TensorFlow repository and the "TensorFlow for Poets" tutorial
