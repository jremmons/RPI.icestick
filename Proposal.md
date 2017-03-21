RPI.icestick
---

**Author**: John R. Emmons (jremmons)

**Contact**: mail@johnemmons.com

Description:
---

**Why is this interesting/useful/worthwhile**: Small, inexpensive development
boards such as the Raspberry Pi and iCEstick FPGA have taken over the world of
hobbyist computing. Their popularity has led to the formation of burgeoning
communities that donate their time and expertise to making these devices easy to
the use and extensible. For these reasons, these devices have become an integral
part of many computer science curricula and are the best choice for non-experts
looking to get start in hardware.

However, while these devices are easier to use than most other computer
hardware, support for more complex tasks is limited. In particular, softare and
hardware interfaces for communication between devices via standards like SPI and
I2C is not provided by default. This severely limits the ability of non-experts
to combine their devices.

**What is the end result**: The goal of RPI.icestick is to provide the
infrastructure necessary for communicating between software running on the
Raspberry Pi and hardware programmed on iCEstick FPGA via their GPIO pins (using
SPI).

**What are the challenges**: There will be two main challenges for this project.
(1) Defining a high level, yet expressive set of primitives for talking with SPI
devices. I have a few ideas for this already, but I will need to flesh them out.
(2) Implementing my ideas on the iCEtick and Raspberry Pi. This will require me
to learn a lot about the way Linux interfaces with hardware devices and to build
all the necessary hardware components for the iCEstick in an extensible way. I
feel confident I can overcome both of these challenges.

**Previous work done**: There has been much work done in both software and
hardware to interfaces with SPI devices. However, a high level library for
defining new links between arbitrary devices is not yet available. In general,
hardware manufacturers make interfaces (e.g. SPI, PCI) available to their
customers by releasing IP which implements them; but the software needed to
communicate with the hardware devices from software on the CPU is rarely
available. Likewise, existing high level software libraries are not flexible
enough for developers to communicate with arbitrary hardware devices. I seek to
co-design the software and hardware infrastructure so that these types of
communication links can be easily implemented by non-experts.

**Useful resources**: I will be using resources on previously implemented SPI
interfaces and resources for accessing these devices in userspace programs
running in Linux.

Project Plan:
---

**Major tasks and their components**:

- Pick interface to implement (SPI or I2C).

- Write all the software needed for the Raspberry Pi to talk to an SPI/I2C
device through its GPIO pins.

- Write the hardware needed for the iCEstick to send/receive messages via
  SPI/I2C.

- Debug any issue and perfect the interface.

**Division of work**: I am the sole author of this work, so it's all me!
